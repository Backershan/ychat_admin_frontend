import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:y_chat_admin/src/core/utils/responsive_utils.dart';

/// Base card widget following project standards
@immutable
class BaseCard extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Color? backgroundColor;
  final double? elevation;
  final BorderRadius? borderRadius;
  final VoidCallback? onTap;
  final bool showBorder;
  final Color? borderColor;
  
  const BaseCard({
    super.key,
    required this.child,
    this.padding,
    this.margin,
    this.backgroundColor,
    this.elevation,
    this.borderRadius,
    this.onTap,
    this.showBorder = false,
    this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    final card = Card(
      elevation: elevation ?? 2,
      color: backgroundColor ?? Theme.of(context).cardColor,
      shape: RoundedRectangleBorder(
        borderRadius: borderRadius ?? BorderRadius.circular(8.r),
        side: showBorder
            ? BorderSide(
                color: borderColor ?? Theme.of(context).colorScheme.outline,
                width: 1,
              )
            : BorderSide.none,
      ),
      child: Padding(
        padding: padding ?? EdgeInsets.all(ResponsiveSpacing.medium),
        child: child,
      ),
    );

    if (onTap != null) {
      return InkWell(
        onTap: onTap,
        borderRadius: borderRadius ?? BorderRadius.circular(8.r),
        child: card,
      );
    }

    return card;
  }
}

/// Information card for displaying key-value pairs
@immutable
class InfoCard extends StatelessWidget {
  final String title;
  final String value;
  final IconData? icon;
  final Color? iconColor;
  final VoidCallback? onTap;
  
  const InfoCard({
    super.key,
    required this.title,
    required this.value,
    this.icon,
    this.iconColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BaseCard(
      onTap: onTap,
      child: Row(
        children: [
          if (icon != null) ...[
            Icon(
              icon,
              color: iconColor ?? Theme.of(context).colorScheme.primary,
              size: 24.w,
            ),
            SizedBox(width: ResponsiveSpacing.small),
          ],
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: ResponsiveText.small.fontSize,
                    color: Theme.of(context).textTheme.bodySmall?.color,
                  ),
                ),
                SizedBox(height: 2.h),
                Text(
                  value,
                  style: TextStyle(
                    fontSize: ResponsiveText.medium.fontSize,
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).textTheme.bodyLarge?.color,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/// Statistics card for displaying metrics
@immutable
class StatsCard extends StatelessWidget {
  final String title;
  final String value;
  final String? subtitle;
  final IconData? icon;
  final Color? iconColor;
  final Color? valueColor;
  final VoidCallback? onTap;
  
  const StatsCard({
    super.key,
    required this.title,
    required this.value,
    this.subtitle,
    this.icon,
    this.iconColor,
    this.valueColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BaseCard(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: ResponsiveText.small.fontSize,
                    color: Theme.of(context).textTheme.bodySmall?.color,
                  ),
                ),
              ),
              if (icon != null)
                Icon(
                  icon,
                  color: iconColor ?? Theme.of(context).colorScheme.primary,
                  size: 20.w,
                ),
            ],
          ),
          SizedBox(height: ResponsiveSpacing.small),
          Text(
            value,
            style: TextStyle(
              fontSize: ResponsiveText.xlarge.fontSize,
              fontWeight: FontWeight.bold,
              color: valueColor ?? Theme.of(context).textTheme.headlineSmall?.color,
            ),
          ),
          if (subtitle != null) ...[
            SizedBox(height: 2.h),
            Text(
              subtitle!,
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

/// Action card with a call-to-action button
@immutable
class ActionCard extends StatelessWidget {
  final String title;
  final String description;
  final String buttonText;
  final VoidCallback onButtonPressed;
  final IconData? icon;
  final Color? iconColor;
  final Color? buttonColor;
  
  const ActionCard({
    super.key,
    required this.title,
    required this.description,
    required this.buttonText,
    required this.onButtonPressed,
    this.icon,
    this.iconColor,
    this.buttonColor,
  });

  @override
  Widget build(BuildContext context) {
    return BaseCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              if (icon != null) ...[
                Icon(
                  icon,
                  color: iconColor ?? Theme.of(context).colorScheme.primary,
                  size: 24.w,
                ),
                SizedBox(width: ResponsiveSpacing.small),
              ],
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: ResponsiveText.large.fontSize,
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).textTheme.headlineSmall?.color,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: ResponsiveSpacing.small),
          Text(
            description,
            style: TextStyle(
              fontSize: ResponsiveText.medium.fontSize,
              color: Theme.of(context).textTheme.bodyMedium?.color,
            ),
          ),
          SizedBox(height: ResponsiveSpacing.medium),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: onButtonPressed,
              style: ElevatedButton.styleFrom(
                backgroundColor: buttonColor ?? Theme.of(context).colorScheme.primary,
                foregroundColor: Theme.of(context).colorScheme.onPrimary,
              ),
              child: Text(buttonText),
            ),
          ),
        ],
      ),
    );
  }
}

/// List card for displaying items in a list format
@immutable
class ListCard extends StatelessWidget {
  final List<Widget> children;
  final String? title;
  final Widget? header;
  final Widget? footer;
  final EdgeInsetsGeometry? itemPadding;
  
  const ListCard({
    super.key,
    required this.children,
    this.title,
    this.header,
    this.footer,
    this.itemPadding,
  });

  @override
  Widget build(BuildContext context) {
    return BaseCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (title != null) ...[
            Text(
              title!,
              style: TextStyle(
                fontSize: ResponsiveText.large.fontSize,
                fontWeight: FontWeight.w600,
                color: Theme.of(context).textTheme.headlineSmall?.color,
              ),
            ),
            SizedBox(height: ResponsiveSpacing.medium),
          ],
          if (header != null) ...[
            header!,
            SizedBox(height: ResponsiveSpacing.medium),
          ],
          ...children.map((child) => Padding(
            padding: itemPadding ?? EdgeInsets.only(bottom: ResponsiveSpacing.small),
            child: child,
          )),
          if (footer != null) ...[
            SizedBox(height: ResponsiveSpacing.medium),
            footer!,
          ],
        ],
      ),
    );
  }
}
