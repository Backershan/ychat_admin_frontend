import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:y_chat_admin/src/core/utils/responsive_utils.dart';

/// Error display widget for showing error messages
/// Follows the project rule of using ScreenUtil for responsive design
@immutable
class ErrorDisplay extends StatelessWidget {
  final String message;
  final VoidCallback? onRetry;
  final IconData? icon;
  final String? retryText;
  
  const ErrorDisplay({
    super.key,
    required this.message,
    this.onRetry,
    this.icon,
    this.retryText,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(ResponsiveSpacing.large),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon ?? Icons.error_outline,
              size: 48.w,
              color: Theme.of(context).colorScheme.error,
            ),
            SizedBox(height: ResponsiveSpacing.medium),
            Text(
              'Oops! Something went wrong',
              style: TextStyle(
                fontSize: ResponsiveText.large.fontSize,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).textTheme.headlineSmall?.color,
              ),
            ),
            SizedBox(height: ResponsiveSpacing.small),
            Text(
              message,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: ResponsiveText.medium.fontSize,
                color: Theme.of(context).textTheme.bodyMedium?.color,
              ),
            ),
            if (onRetry != null) ...[
              SizedBox(height: ResponsiveSpacing.large),
              ElevatedButton.icon(
                onPressed: onRetry,
                icon: const Icon(Icons.refresh),
                label: Text(retryText ?? 'Try Again'),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

/// Empty state display widget
@immutable
class EmptyStateDisplay extends StatelessWidget {
  final String title;
  final String message;
  final IconData? icon;
  final VoidCallback? onAction;
  final String? actionText;
  
  const EmptyStateDisplay({
    super.key,
    required this.title,
    required this.message,
    this.icon,
    this.onAction,
    this.actionText,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(ResponsiveSpacing.large),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon ?? Icons.inbox_outlined,
              size: 64.w,
              color: Theme.of(context).colorScheme.onSurface.withOpacity(0.5),
            ),
            SizedBox(height: ResponsiveSpacing.medium),
            Text(
              title,
              style: TextStyle(
                fontSize: ResponsiveText.large.fontSize,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).textTheme.headlineSmall?.color,
              ),
            ),
            SizedBox(height: ResponsiveSpacing.small),
            Text(
              message,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: ResponsiveText.medium.fontSize,
                color: Theme.of(context).textTheme.bodyMedium?.color,
              ),
            ),
            if (onAction != null) ...[
              SizedBox(height: ResponsiveSpacing.large),
              ElevatedButton.icon(
                onPressed: onAction,
                icon: const Icon(Icons.add),
                label: Text(actionText ?? 'Get Started'),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
