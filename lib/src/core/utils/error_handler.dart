import 'package:flutter/material.dart';
import 'package:y_chat_admin/src/core/constants/app_constants.dart';
import 'package:y_chat_admin/src/shared/models/failure.dart';

/// Error handler utility following project standards
class ErrorHandler {
  /// Handle and display errors in a user-friendly way
  static void handleError(BuildContext context, dynamic error) {
    String message;
    String title = 'Error';
    
    if (error is Failure) {
      switch (error) {
        case NetworkFailure _:
          message = AppConstants.networkErrorMessage;
          title = 'Network Error';
          break;
        case ServerFailure _:
          message = AppConstants.serverErrorMessage;
          title = 'Server Error';
          break;
        case ValidationFailure _:
          message = error.message;
          title = 'Validation Error';
          break;
        case UnauthorizedFailure _:
          message = AppConstants.authenticationErrorMessage;
          title = 'Authentication Error';
          break;
        case ForbiddenFailure _:
          message = AppConstants.authorizationErrorMessage;
          title = 'Authorization Error';
          break;
        default:
          message = error.message;
          title = 'Error';
      }
    } else if (error is Exception) {
      message = _getExceptionMessage(error);
      title = 'Exception';
    } else {
      message = AppConstants.unknownErrorMessage;
      title = 'Unknown Error';
    }
    
    _showErrorSnackBar(context, title, message);
  }
  
  /// Show error snackbar
  static void _showErrorSnackBar(BuildContext context, String title, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              message,
              style: const TextStyle(color: Colors.white),
            ),
          ],
        ),
        backgroundColor: Theme.of(context).colorScheme.error,
        duration: const Duration(seconds: 4),
        action: SnackBarAction(
          label: 'Dismiss',
          textColor: Colors.white,
          onPressed: () {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
          },
        ),
      ),
    );
  }
  
  /// Get user-friendly message from exception
  static String _getExceptionMessage(Exception exception) {
    final message = exception.toString().toLowerCase();
    
    if (message.contains('network') || message.contains('connection')) {
      return AppConstants.networkErrorMessage;
    } else if (message.contains('timeout')) {
      return 'Request timeout. Please try again.';
    } else if (message.contains('unauthorized') || message.contains('401')) {
      return AppConstants.authenticationErrorMessage;
    } else if (message.contains('forbidden') || message.contains('403')) {
      return AppConstants.authorizationErrorMessage;
    } else if (message.contains('not found') || message.contains('404')) {
      return 'Resource not found.';
    } else if (message.contains('server') || message.contains('500')) {
      return AppConstants.serverErrorMessage;
    } else if (message.contains('validation') || message.contains('invalid')) {
      return AppConstants.validationErrorMessage;
    } else {
      return AppConstants.unknownErrorMessage;
    }
  }
  
  /// Show success message
  static void showSuccess(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            const Icon(Icons.check_circle, color: Colors.white),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                message,
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
        backgroundColor: Colors.green,
        duration: const Duration(seconds: 3),
        action: SnackBarAction(
          label: 'Dismiss',
          textColor: Colors.white,
          onPressed: () {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
          },
        ),
      ),
    );
  }
  
  /// Show warning message
  static void showWarning(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            const Icon(Icons.warning, color: Colors.white),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                message,
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
        backgroundColor: Colors.orange,
        duration: const Duration(seconds: 3),
        action: SnackBarAction(
          label: 'Dismiss',
          textColor: Colors.white,
          onPressed: () {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
          },
        ),
      ),
    );
  }
  
  /// Show info message
  static void showInfo(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            const Icon(Icons.info, color: Colors.white),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                message,
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
        backgroundColor: Colors.blue,
        duration: const Duration(seconds: 3),
        action: SnackBarAction(
          label: 'Dismiss',
          textColor: Colors.white,
          onPressed: () {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
          },
        ),
      ),
    );
  }
  
  /// Show confirmation dialog
  static Future<bool?> showConfirmation(
    BuildContext context, {
    required String title,
    required String message,
    String confirmText = 'Confirm',
    String cancelText = 'Cancel',
    bool isDestructive = false,
  }) {
    return showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: Text(cancelText),
          ),
          ElevatedButton(
            onPressed: () => Navigator.of(context).pop(true),
            style: isDestructive
                ? ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.error,
                    foregroundColor: Theme.of(context).colorScheme.onError,
                  )
                : null,
            child: Text(confirmText),
          ),
        ],
      ),
    );
  }
  
  /// Show loading dialog
  static void showLoading(BuildContext context, {String message = 'Loading...'}) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        content: Row(
          children: [
            const CircularProgressIndicator(),
            const SizedBox(width: 16),
            Expanded(child: Text(message)),
          ],
        ),
      ),
    );
  }
  
  /// Hide loading dialog
  static void hideLoading(BuildContext context) {
    Navigator.of(context).pop();
  }
  
  /// Log error for debugging
  static void logError(String context, dynamic error, [StackTrace? stackTrace]) {
    if (AppConstants.enableErrorLogs) {
      debugPrint('ERROR in $context: $error');
      if (stackTrace != null) {
        debugPrint('Stack trace: $stackTrace');
      }
    }
  }
  
  /// Log warning for debugging
  static void logWarning(String context, String message) {
    if (AppConstants.enableDebugLogs) {
      debugPrint('WARNING in $context: $message');
    }
  }
  
  /// Log info for debugging
  static void logInfo(String context, String message) {
    if (AppConstants.enableDebugLogs) {
      debugPrint('INFO in $context: $message');
    }
  }
}
