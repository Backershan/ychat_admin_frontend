import 'package:dio/dio.dart';
import 'package:y_chat_admin/src/core/services/token_storage_service.dart';

class AuthInterceptor extends Interceptor {
  final TokenStorageService _tokenStorage;

  AuthInterceptor({
    required TokenStorageService tokenStorage,
    required Dio dio,
  }) : _tokenStorage = tokenStorage;

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
      // TODO: Re-enable refresh token functionality when backend endpoint is available
      // For now, just logout user when token expires
      await _logoutUser();
      handler.next(err);
    } else {
      handler.next(err);
    }
  }

  bool _isRefreshTokenRequest(String path) {
    return path.contains('/admin/refresh');
  }

  Future<void> _logoutUser() async {
    await _tokenStorage.clearAuthData();
  }
}