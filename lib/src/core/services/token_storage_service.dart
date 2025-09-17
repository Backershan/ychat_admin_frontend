import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:y_chat_admin/src/features/auth/domain/entities/auth_entity.dart';
import 'package:y_chat_admin/src/features/auth/domain/entities/user_entity.dart';

class TokenStorageService {
  static const String _accessTokenKey = 'access_token';
  static const String _refreshTokenKey = 'refresh_token';
  static const String _tokenExpiryKey = 'token_expiry';
  static const String _userDataKey = 'user_data';
  static const String _isAuthenticatedKey = 'is_authenticated';

  static TokenStorageService? _instance;
  static SharedPreferences? _prefs;

  TokenStorageService._();

  static Future<TokenStorageService> getInstance() async {
    _instance ??= TokenStorageService._();
    _prefs ??= await SharedPreferences.getInstance();
    return _instance!;
  }

  /// Save authentication data
  Future<void> saveAuthData(AuthEntity authEntity) async {
    await _prefs!.setString(_accessTokenKey, authEntity.token);
    await _prefs!.setString(_refreshTokenKey, authEntity.refreshToken);
    await _prefs!.setString(_tokenExpiryKey, authEntity.expiresAt.toIso8601String());
    await _prefs!.setString(_userDataKey, jsonEncode(authEntity.user.toJson()));
    await _prefs!.setBool(_isAuthenticatedKey, true);
  }

  /// Get access token
  String? getAccessToken() {
    return _prefs!.getString(_accessTokenKey);
  }

  /// Get refresh token
  String? getRefreshToken() {
    return _prefs!.getString(_refreshTokenKey);
  }

  /// Get token expiry time
  DateTime? getTokenExpiry() {
    final expiryString = _prefs!.getString(_tokenExpiryKey);
    if (expiryString != null) {
      try {
        return DateTime.parse(expiryString);
      } catch (e) {
        return null;
      }
    }
    return null;
  }

  /// Get user data
  UserEntity? getUserData() {
    final userDataString = _prefs!.getString(_userDataKey);
    if (userDataString != null) {
      try {
        final userDataMap = jsonDecode(userDataString) as Map<String, dynamic>;
        return UserEntity.fromJson(userDataMap);
      } catch (e) {
        return null;
      }
    }
    return null;
  }

  /// Check if user is authenticated
  bool isAuthenticated() {
    return _prefs!.getBool(_isAuthenticatedKey) ?? false;
  }

  /// Check if access token is expired
  bool isAccessTokenExpired() {
    final expiry = getTokenExpiry();
    if (expiry == null) return true;
    return DateTime.now().isAfter(expiry);
  }

  /// Check if refresh token is expired (assuming 7 days expiry)
  bool isRefreshTokenExpired() {
    final expiry = getTokenExpiry();
    if (expiry == null) return true;
    // Refresh token typically expires after 7 days
    final refreshTokenExpiry = expiry.add(const Duration(days: 7));
    return DateTime.now().isAfter(refreshTokenExpiry);
  }

  /// Get refresh token expiry
  DateTime? getRefreshTokenExpiry() {
    final expiryString = _prefs!.getString('${_refreshTokenKey}_expiry');
    if (expiryString != null) {
      try {
        return DateTime.parse(expiryString);
      } catch (e) {
        return null;
      }
    }
    return null;
  }

  /// Update access token
  Future<void> updateAccessToken(String newToken, DateTime newExpiry) async {
    await _prefs!.setString(_accessTokenKey, newToken);
    await _prefs!.setString(_tokenExpiryKey, newExpiry.toIso8601String());
  }

  /// Update both tokens
  Future<void> updateTokens(String accessToken, String refreshToken, DateTime expiry) async {
    await _prefs!.setString(_accessTokenKey, accessToken);
    await _prefs!.setString(_refreshTokenKey, refreshToken);
    await _prefs!.setString(_tokenExpiryKey, expiry.toIso8601String());
  }

  /// Clear all authentication data
  Future<void> clearAuthData() async {
    await _prefs!.remove(_accessTokenKey);
    await _prefs!.remove(_refreshTokenKey);
    await _prefs!.remove(_tokenExpiryKey);
    await _prefs!.remove(_userDataKey);
    await _prefs!.setBool(_isAuthenticatedKey, false);
  }

  /// Get complete auth entity
  AuthEntity? getAuthEntity() {
    final accessToken = getAccessToken();
    final refreshToken = getRefreshToken();
    final expiry = getTokenExpiry();
    final user = getUserData();

    if (accessToken != null && refreshToken != null && expiry != null && user != null) {
      return AuthEntity(
        token: accessToken,
        refreshToken: refreshToken,
        user: user,
        expiresAt: expiry,
        refreshTokenExpiry: getRefreshTokenExpiry() ?? DateTime.now().add(const Duration(days: 7)),
      );
    }
    return null;
  }
}
