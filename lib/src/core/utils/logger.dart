import 'dart:developer' as developer;
import 'package:flutter/foundation.dart';

/// Centralized logging utility for the application
/// Replaces print statements with proper logging
class Logger {
  static const String _tag = 'YChatAdmin';

  /// Log debug messages (only in debug mode)
  static void debug(String message, [String? tag]) {
    if (kDebugMode) {
      developer.log(
        message,
        name: tag ?? _tag,
        level: 500, // Debug level
      );
    }
  }

  /// Log info messages
  static void info(String message, [String? tag]) {
    developer.log(
      message,
      name: tag ?? _tag,
      level: 800, // Info level
    );
  }

  /// Log warning messages
  static void warning(String message, [String? tag]) {
    developer.log(
      message,
      name: tag ?? _tag,
      level: 900, // Warning level
    );
  }

  /// Log error messages
  static void error(String message, [String? tag, Object? error, StackTrace? stackTrace]) {
    developer.log(
      message,
      name: tag ?? _tag,
      level: 1000, // Error level
      error: error,
      stackTrace: stackTrace,
    );
  }

  /// Log API requests (for debugging)
  static void apiRequest(String method, String url, [Map<String, dynamic>? data]) {
    if (kDebugMode) {
      final dataStr = data != null ? ' with data: $data' : '';
      debug('API $method: $url$dataStr', 'API');
    }
  }

  /// Log API responses (for debugging)
  static void apiResponse(String method, String url, int statusCode, [String? response]) {
    if (kDebugMode) {
      final responseStr = response != null ? ' - Response: $response' : '';
      debug('API $method: $url -> $statusCode$responseStr', 'API');
    }
  }

  /// Log API errors (for debugging)
  static void apiError(String method, String url, Object error) {
    Logger.error('API $method: $url failed', 'API', error);
  }

  /// Log user actions (for analytics/debugging)
  static void userAction(String action, [Map<String, dynamic>? data]) {
    if (kDebugMode) {
      final dataStr = data != null ? ' with data: $data' : '';
      debug('User Action: $action$dataStr', 'User');
    }
  }

  /// Log performance metrics
  static void performance(String operation, Duration duration) {
    if (kDebugMode) {
      debug('Performance: $operation took ${duration.inMilliseconds}ms', 'Performance');
    }
  }
}
