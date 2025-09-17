import 'dart:async';
import 'package:y_chat_admin/src/core/services/token_storage_service.dart';
import 'package:y_chat_admin/src/features/auth/domain/entities/auth_entity.dart';
import 'package:y_chat_admin/src/features/auth/domain/entities/user_entity.dart';

class AuthService {
  static AuthService? _instance;
  TokenStorageService? _tokenStorage;
  final StreamController<AuthServiceState> _authStateController = StreamController<AuthServiceState>.broadcast();

  AuthService._();

  static Future<AuthService> getInstance() async {
    _instance ??= AuthService._();
    _instance!._tokenStorage ??= await TokenStorageService.getInstance();
    return _instance!;
  }

  /// Stream of authentication state changes
  Stream<AuthServiceState> get authStateStream => _authStateController.stream;

  /// Current authentication state
  AuthServiceState get currentAuthState {
    if (_tokenStorage == null) return AuthServiceState.unauthenticated;
    
    if (!_tokenStorage!.isAuthenticated()) {
      return AuthServiceState.unauthenticated;
    }

    if (_tokenStorage!.isRefreshTokenExpired()) {
      return AuthServiceState.refreshTokenExpired;
    }

    if (_tokenStorage!.isAccessTokenExpired()) {
      return AuthServiceState.accessTokenExpired;
    }

    final user = _tokenStorage!.getUserData();
    if (user != null) {
      return AuthServiceState.authenticated;
    }

    return AuthServiceState.unauthenticated;
  }

  /// Get current user
  UserEntity? get currentUser => _tokenStorage?.getUserData();

  /// Check if user is authenticated
  bool get isAuthenticated => _tokenStorage?.isAuthenticated() ?? false;

  /// Check if access token is expired
  bool get isAccessTokenExpired => _tokenStorage?.isAccessTokenExpired() ?? true;

  /// Check if refresh token is expired
  bool get isRefreshTokenExpired => _tokenStorage?.isRefreshTokenExpired() ?? true;

  /// Get access token
  String? get accessToken => _tokenStorage?.getAccessToken();

  /// Get refresh token
  String? get refreshToken => _tokenStorage?.getRefreshToken();

  /// Save authentication data
  Future<void> saveAuthData(AuthEntity authEntity) async {
    await _tokenStorage?.saveAuthData(authEntity);
    _authStateController.add(AuthServiceState.authenticated);
  }

  /// Update access token
  Future<void> updateAccessToken(String newToken, DateTime newExpiry) async {
    await _tokenStorage?.updateAccessToken(newToken, newExpiry);
    final user = _tokenStorage?.getUserData();
    if (user != null) {
      _authStateController.add(AuthServiceState.authenticated);
    }
  }

  /// Update both tokens
  Future<void> updateTokens(String accessToken, String refreshToken, DateTime expiry) async {
    await _tokenStorage?.updateTokens(accessToken, refreshToken, expiry);
    final user = _tokenStorage?.getUserData();
    if (user != null) {
      _authStateController.add(AuthServiceState.authenticated);
    }
  }

  /// Clear authentication data and logout
  Future<void> logout() async {
    await _tokenStorage?.clearAuthData();
    _authStateController.add(AuthServiceState.unauthenticated);
  }

  /// Get complete auth entity
  AuthEntity? getAuthEntity() => _tokenStorage?.getAuthEntity();

  /// Dispose resources
  void dispose() {
    _authStateController.close();
  }
}

enum AuthServiceState {
  unauthenticated,
  authenticated,
  accessTokenExpired,
  refreshTokenExpired,
}
