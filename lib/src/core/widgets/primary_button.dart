import 'package:flutter/material.dart';
import 'package:y_chat_admin/src/core/constants/constants.dart';

/// Primary button component following design system
class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.isLoading = false,
    this.isFullWidth = false,
    this.size = ButtonSize.medium,
    this.variant = ButtonVariant.primary,
    this.icon,
    this.semanticsLabel,
  });

  final String label;
  final VoidCallback? onPressed;
  final bool isLoading;
  final bool isFullWidth;
  final ButtonSize size;
  final ButtonVariant variant;
  final IconData? icon;
  final String? semanticsLabel;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDisabled = onPressed == null || isLoading;
    
    return SizedBox(
      width: isFullWidth ? double.infinity : null,
      height: _getHeight(),
      child: ElevatedButton(
        onPressed: isDisabled ? null : onPressed,
        style: _getButtonStyle(theme, isDisabled),
        child: _buildContent(),
      ),
    );
  }

  Widget _buildContent() {
    if (isLoading) {
      return SizedBox(
        width: _getIconSize(),
        height: _getIconSize(),
        child: CircularProgressIndicator(
          strokeWidth: 2,
          valueColor: AlwaysStoppedAnimation<Color>(
            variant == ButtonVariant.primary 
                ? AppColors.onPrimary 
                : AppColors.primary,
          ),
        ),
      );
    }

    if (icon != null) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: _getIconSize()),
          SizedBox(width: Spacing.xs),
          Text(
            label,
            style: _getTextStyle(),
          ),
        ],
      );
    }

    return Text(
      label,
      style: _getTextStyle(),
    );
  }

  ButtonStyle _getButtonStyle(ThemeData theme, bool isDisabled) {
    final baseStyle = ElevatedButton.styleFrom(
      elevation: Elevation.sm,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Radius.md),
      ),
      padding: _getPadding(),
    );

    switch (variant) {
      case ButtonVariant.primary:
        return baseStyle.copyWith(
          backgroundColor: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.disabled)) {
              return AppColors.primary.withValues(alpha: 0.3);
            }
            return AppColors.primary;
          }),
          foregroundColor: WidgetStateProperty.all(AppColors.onPrimary),
        );
      case ButtonVariant.secondary:
        return baseStyle.copyWith(
          backgroundColor: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.disabled)) {
              return AppColors.secondary.withValues(alpha: 0.3);
            }
            return AppColors.secondary;
          }),
          foregroundColor: WidgetStateProperty.all(AppColors.onSecondary),
        );
      case ButtonVariant.outline:
        return baseStyle.copyWith(
          backgroundColor: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.disabled)) {
              return Colors.transparent;
            }
            return Colors.transparent;
          }),
          foregroundColor: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.disabled)) {
              return AppColors.primary.withValues(alpha: 0.3);
            }
            return AppColors.primary;
          }),
          side: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.disabled)) {
              return BorderSide(color: AppColors.primary.withValues(alpha: 0.3));
            }
            return const BorderSide(color: AppColors.primary);
          }),
        );
    }
  }

  double _getHeight() {
    switch (size) {
      case ButtonSize.small:
        return 32;
      case ButtonSize.medium:
        return 40;
      case ButtonSize.large:
        return 48;
    }
  }

  EdgeInsets _getPadding() {
    switch (size) {
      case ButtonSize.small:
        return const EdgeInsets.symmetric(
          horizontal: Spacing.md,
          vertical: Spacing.xs,
        );
      case ButtonSize.medium:
        return const EdgeInsets.symmetric(
          horizontal: Spacing.lg,
          vertical: Spacing.sm,
        );
      case ButtonSize.large:
        return const EdgeInsets.symmetric(
          horizontal: Spacing.xl,
          vertical: Spacing.md,
        );
    }
  }

  double _getIconSize() {
    switch (size) {
      case ButtonSize.small:
        return 16;
      case ButtonSize.medium:
        return 20;
      case ButtonSize.large:
        return 24;
    }
  }

  TextStyle _getTextStyle() {
    switch (size) {
      case ButtonSize.small:
        return TextStyles.labelMedium;
      case ButtonSize.medium:
        return TextStyles.labelLarge;
      case ButtonSize.large:
        return TextStyles.titleSmall;
    }
  }
}

/// Button size enum
enum ButtonSize {
  small,
  medium,
  large,
}

/// Button variant enum
enum ButtonVariant {
  primary,
  secondary,
  outline,
}
