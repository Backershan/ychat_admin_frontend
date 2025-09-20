import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:y_chat_admin/src/core/utils/responsive.dart';

/// Loading overlay widget that can be shown over any content
/// Follows the project rule of using ScreenUtil for responsive design
@immutable
class LoadingOverlay extends StatelessWidget {
  final bool isLoading;
  final Widget child;
  final String? loadingText;
  final Color? backgroundColor;
  final Color? indicatorColor;
  
  const LoadingOverlay({
    super.key,
    required this.isLoading,
    required this.child,
    this.loadingText,
    this.backgroundColor,
    this.indicatorColor,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        if (isLoading)
          Container(
            color: backgroundColor ?? Colors.black.withOpacity(0.5),
            child: Center(
              child: Container(
                padding: EdgeInsets.all(ResponsiveSpacing.large),
                decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CircularProgressIndicator(
                      color: indicatorColor ?? Theme.of(context).primaryColor,
                    ),
                    if (loadingText != null) ...[
                      SizedBox(height: ResponsiveSpacing.medium),
                      Text(
                        loadingText!,
                        style: TextStyle(
                          fontSize: ResponsiveText.medium.fontSize,
                          color: Theme.of(context).textTheme.bodyMedium?.color,
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ),
          ),
      ],
    );
  }
}

/// Simple loading indicator widget
@immutable
class LoadingIndicator extends StatelessWidget {
  final double? size;
  final Color? color;
  final String? text;
  
  const LoadingIndicator({
    super.key,
    this.size,
    this.color,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: size ?? 24.w,
            height: size ?? 24.w,
            child: CircularProgressIndicator(
              color: color ?? Theme.of(context).primaryColor,
            ),
          ),
          if (text != null) ...[
            SizedBox(height: ResponsiveSpacing.small),
            Text(
              text!,
              style: TextStyle(
                fontSize: ResponsiveText.small.fontSize,
                color: Theme.of(context).textTheme.bodySmall?.color,
              ),
            ),
          ],
        ],
      ),
    );
  }
}
