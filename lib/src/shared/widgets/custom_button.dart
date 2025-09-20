import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constants/constants.dart';

enum ButtonType {
  primary,
  secondary,
  outline,
  text,
  danger,
}

enum ButtonSize {
  small,
  medium,
  large,
}

class CustomButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final ButtonType type;
  final ButtonSize size;
  final bool isLoading;
  final bool isFullWidth;
  final IconData? icon;
  final Color? backgroundColor;
  final Color? textColor;
  final double? width;
  final double? height;

  const CustomButton({
    super.key,
    required this.label,
    this.onPressed,
    this.type = ButtonType.primary,
    this.size = ButtonSize.medium,
    this.isLoading = false,
    this.isFullWidth = false,
    this.icon,
    this.backgroundColor,
    this.textColor,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    final buttonStyle = _getButtonStyle();
    final buttonSize = _getButtonSize();

    Widget button = ElevatedButton(
      onPressed: isLoading ? null : onPressed,
      style: buttonStyle,
      child: _buildButtonContent(),
    );

    if (isFullWidth) {
      button = SizedBox(
        width: double.infinity,
        height: buttonSize.height,
        child: button,
      );
    } else if (width != null || height != null) {
      button = SizedBox(
        width: width,
        height: height ?? buttonSize.height,
        child: button,
      );
    }

    return button;
  }

  Widget _buildButtonContent() {
    if (isLoading) {
      return SizedBox(
        width: 20.w,
        height: 20.w,
        child: CircularProgressIndicator(
          strokeWidth: 2.0,
          valueColor: AlwaysStoppedAnimation<Color>(
            _getTextColor(),
          ),
        ),
      );
    }

    if (icon != null) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: _getIconSize()),
          SizedBox(width: 8.w),
          Text(label, style: _getTextStyle()),
        ],
      );
    }

    return Text(label, style: _getTextStyle());
  }

  ButtonStyle _getButtonStyle() {
    switch (type) {
      case ButtonType.primary:
        return ElevatedButton.styleFrom(
          backgroundColor: backgroundColor ?? AppColors.primaryLight,
          foregroundColor: textColor ?? AppColors.onPrimary,
          elevation: 2,
          shadowColor: AppColors.primaryLight.withValues(alpha: 0.3),
        );
      case ButtonType.secondary:
        return ElevatedButton.styleFrom(
          backgroundColor: backgroundColor ?? AppColors.secondaryLight,
          foregroundColor: textColor ?? AppColors.onSecondary,
          elevation: 2,
          shadowColor: AppColors.secondaryLight.withValues(alpha: 0.3),
        );
      case ButtonType.outline:
        return ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          foregroundColor: textColor ?? AppColors.primaryLight,
          side: BorderSide(
            color: AppColors.primaryLight,
            width: 1.5,
          ),
          elevation: 0,
        );
      case ButtonType.text:
        return ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          foregroundColor: textColor ?? AppColors.primary,
          elevation: 0,
          shadowColor: Colors.transparent,
        );
      case ButtonType.danger:
        return ElevatedButton.styleFrom(
          backgroundColor: backgroundColor ?? AppColors.error,
          foregroundColor: textColor ?? AppColors.error,
          elevation: 2,
          shadowColor: AppColors.error.withValues(alpha: 0.3),
        );
    }
  }

  Size _getButtonSize() {
    switch (size) {
      case ButtonSize.small:
        return Size(80.w, 32.h);
      case ButtonSize.medium:
        return Size(120.w, 40.h);
      case ButtonSize.large:
        return Size(160.w, 48.h);
    }
  }

  TextStyle _getTextStyle() {
    double fontSize;
    FontWeight fontWeight;

    switch (size) {
      case ButtonSize.small:
        fontSize = 12.sp;
        fontWeight = FontWeight.w500;
        break;
      case ButtonSize.medium:
        fontSize = 14.sp;
        fontWeight = FontWeight.w600;
        break;
      case ButtonSize.large:
        fontSize = 16.sp;
        fontWeight = FontWeight.w600;
        break;
    }

    return TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: _getTextColor(),
    );
  }

  Color _getTextColor() {
    if (textColor != null) return textColor!;

    switch (type) {
      case ButtonType.primary:
        return AppColors.onPrimary;
      case ButtonType.secondary:
        return AppColors.onSecondary;
      case ButtonType.outline:
      case ButtonType.text:
        return AppColors.primaryLight;
      case ButtonType.danger:
        return AppColors.error;
    }
  }

  double _getIconSize() {
    switch (size) {
      case ButtonSize.small:
        return 14.w;
      case ButtonSize.medium:
        return 16.w;
      case ButtonSize.large:
        return 18.w;
    }
  }
}
