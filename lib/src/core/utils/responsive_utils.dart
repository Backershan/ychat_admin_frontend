import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Responsive utilities following project standards
class ResponsiveUtils {
  /// Get responsive spacing based on screen size
  static double getResponsiveSpacing(double baseSpacing) {
    return baseSpacing.w;
  }

  /// Get responsive text size based on screen size
  static double getResponsiveTextSize(double baseSize) {
    return baseSize.sp;
  }

  /// Get responsive width based on screen size
  static double getResponsiveWidth(double baseWidth) {
    return baseWidth.w;
  }

  /// Get responsive height based on screen size
  static double getResponsiveHeight(double baseHeight) {
    return baseHeight.h;
  }

  /// Check if screen is mobile
  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width < 768;
  }

  /// Check if screen is tablet
  static bool isTablet(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return width >= 768 && width < 1024;
  }

  /// Check if screen is desktop
  static bool isDesktop(BuildContext context) {
    return MediaQuery.of(context).size.width >= 1024;
  }

  /// Get responsive padding based on screen size
  static EdgeInsets getResponsivePadding(BuildContext context, {
    double? all,
    double? horizontal,
    double? vertical,
    double? top,
    double? bottom,
    double? left,
    double? right,
  }) {
    final basePadding = all ?? 16.0;
    final hPadding = horizontal ?? basePadding;
    final vPadding = vertical ?? basePadding;
    
    return EdgeInsets.only(
      top: (top ?? vPadding).h,
      bottom: (bottom ?? vPadding).h,
      left: (left ?? hPadding).w,
      right: (right ?? hPadding).w,
    );
  }

  /// Get responsive margin based on screen size
  static EdgeInsets getResponsiveMargin(BuildContext context, {
    double? all,
    double? horizontal,
    double? vertical,
    double? top,
    double? bottom,
    double? left,
    double? right,
  }) {
    final baseMargin = all ?? 16.0;
    final hMargin = horizontal ?? baseMargin;
    final vMargin = vertical ?? baseMargin;
    
    return EdgeInsets.only(
      top: (top ?? vMargin).h,
      bottom: (bottom ?? vMargin).h,
      left: (left ?? hMargin).w,
      right: (right ?? hMargin).w,
    );
  }
}

/// Responsive spacing constants
class ResponsiveSpacing {
  static double get xs => 4.w;
  static double get sm => 8.w;
  static double get small => 8.w;
  static double get md => 16.w;
  static double get medium => 16.w;
  static double get lg => 24.w;
  static double get large => 24.w;
  static double get xl => 32.w;
  static double get xxl => 48.w;
}

/// Responsive text utilities
class ResponsiveText {
  static TextStyle getStyle(BuildContext context, {
    double? fontSize,
    FontWeight? fontWeight,
    Color? color,
    double? height,
    TextDecoration? decoration,
  }) {
    return TextStyle(
      fontSize: (fontSize ?? 14).sp,
      fontWeight: fontWeight ?? FontWeight.normal,
      color: color,
      height: height,
      decoration: decoration,
    );
  }

  static TextStyle get heading1 => TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.bold,
    height: 1.2,
  );

  static TextStyle get heading2 => TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.bold,
    height: 1.3,
  );

  static TextStyle get heading3 => TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.w600,
    height: 1.4,
  );

  static TextStyle get body1 => TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.normal,
    height: 1.5,
  );

  static TextStyle get body2 => TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.normal,
    height: 1.5,
  );

  static TextStyle get caption => TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.normal,
    height: 1.4,
  );

  // Additional size variants
  static TextStyle get small => TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.normal,
    height: 1.4,
  );

  static TextStyle get medium => TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.normal,
    height: 1.5,
  );

  static TextStyle get large => TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w600,
    height: 1.4,
  );

  static TextStyle get xlarge => TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.bold,
    height: 1.3,
  );
}