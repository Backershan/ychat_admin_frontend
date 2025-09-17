import 'package:dio/dio.dart';
import 'package:y_chat_admin/src/core/services/token_storage_service.dart';
import 'package:y_chat_admin/src/features/auth/domain/entities/auth_entity.dart';

class AuthInterceptor extends Interceptor {
  final TokenStorageService _tokenStorage;
  final Dio _dio;
  bool _isRefreshing = false;
  final List<RequestOptions> _pendingRequests = [];

  AuthInterceptor({
    required TokenStorageService tokenStorage,
    required Dio dio,
  }) : _tokenStorage = tokenStorage, _dio = dio;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    // Add authorization header if token exists and not expired
    if (!_isRefreshTokenRequest(options.path)) {
      final token = _tokenStorage.getAccessToken();
      if (token != null && !_tokenStorage.isAccessTokenExpired()) {
        options.headers['Authorization'] = 'Bearer $token';
      }
    }
    handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    // Handle connection errors gracefully
    if (err.type == DioExceptionType.connectionError) {
      // If it's a connection error, just pass it through without trying to refresh
      handler.next(err);
      return;
    }
    
    if (err.response?.statusCode == 401 && !_isRefreshTokenRequest(err.requestOptions.path)) {
      if (_isRefreshing) {
        // If already refreshing, queue this request
        _pendingRequests.add(err.requestOptions);
        return;
      }

      _isRefreshing = true;

      try {
        // Try to refresh the token
        final newAuthEntity = await _refreshToken();
        
        if (newAuthEntity != null) {
          // Update stored tokens
          await _tokenStorage.updateTokens(
            newAuthEntity.token,
            newAuthEntity.refreshToken,
            newAuthEntity.expiresAt,
          );

          // Retry the original request with new token
          final newOptions = err.requestOptions.copyWith(
            headers: {
              ...err.requestOptions.headers,
              'Authorization': 'Bearer ${newAuthEntity.token}',
            },
          );

          final response = await _dio.fetch(newOptions);
          handler.resolve(response);

          // Process pending requests
          await _processPendingRequests();
        } else {
          // Refresh failed, logout user
          await _logoutUser();
          handler.next(err);
        }
      } catch (e) {
        // Refresh failed, logout user
        await _logoutUser();
        handler.next(err);
      } finally {
        _isRefreshing = false;
      }
    } else {
      handler.next(err);
    }
  }

  bool _isRefreshTokenRequest(String path) {
    return path.contains('/auth/refresh') || path.contains('/admin/refresh');
  }

  Future<AuthEntity?> _refreshToken() async {
    try {
      final refreshToken = _tokenStorage.getRefreshToken();
      if (refreshToken == null || _tokenStorage.isRefreshTokenExpired()) {
        return null;
      }

      final response = await _dio.post(
        '/auth/refresh', // Update this path based on your API
        options: Options(
          headers: {
            'Authorization': 'Bearer $refreshToken',
            'Content-Type': 'application/json',
          },
        ),
      );

      if (response.statusCode == 200) {
        final data = response.data;
        return AuthEntity(
          token: data['token'] ?? '',
          refreshToken: data['refreshToken'] ?? refreshToken,
          user: _tokenStorage.getUserData()!, // Keep existing user data
          expiresAt: DateTime.parse(data['expiresAt'] ?? DateTime.now().add(const Duration(hours: 24)).toIso8601String()),
          refreshTokenExpiry: DateTime.parse(data['refreshTokenExpiry'] ?? DateTime.now().add(const Duration(days: 7)).toIso8601String()),
        );
      }
      return null;
    } catch (e) {
      return null;
    }
  }

  Future<void> _processPendingRequests() async {
    final pendingRequests = List<RequestOptions>.from(_pendingRequests);
    _pendingRequests.clear();

    for (final request in pendingRequests) {
      try {
        final newOptions = request.copyWith(
          headers: {
            ...request.headers,
            'Authorization': 'Bearer ${_tokenStorage.getAccessToken()}',
          },
        );
        await _dio.fetch(newOptions);
      } catch (e) {
        // Handle individual request failure
        // Log error for debugging
      }
    }
  }

  Future<void> _logoutUser() async {
    await _tokenStorage.clearAuthData();
    // You can emit a logout event here if needed
    // For now, we'll just clear the data
  }
}
