import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Web-specific responsive utilities for better web display
class WebResponsive {
  WebResponsive._();

  /// Get responsive font size optimized for web
  static double getWebFontSize(double baseSize, BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    
    if (screenWidth >= 1920) {
      // Large desktop: 1.2x scaling
      return (baseSize * 1.2).sp;
    } else if (screenWidth >= 1440) {
      // Desktop: 1.1x scaling
      return (baseSize * 1.1).sp;
    } else if (screenWidth >= 1200) {
      // Large tablet/small desktop: 1.0x scaling
      return baseSize.sp;
    } else if (screenWidth >= 768) {
      // Tablet: 0.9x scaling
      return (baseSize * 0.9).sp;
    } else {
      // Mobile: 0.8x scaling
      return (baseSize * 0.8).sp;
    }
  }

  /// Get responsive spacing optimized for web
  static double getWebSpacing(double baseSpacing, BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    
    if (screenWidth >= 1920) {
      // Large desktop: 1.3x spacing
      return (baseSpacing * 1.3).w;
    } else if (screenWidth >= 1440) {
      // Desktop: 1.2x spacing
      return (baseSpacing * 1.2).w;
    } else if (screenWidth >= 1200) {
      // Large tablet/small desktop: 1.0x spacing
      return baseSpacing.w;
    } else if (screenWidth >= 768) {
      // Tablet: 0.9x spacing
      return (baseSpacing * 0.9).w;
    } else {
      // Mobile: 0.8x spacing
      return (baseSpacing * 0.8).w;
    }
  }

  /// Get responsive height optimized for web
  static double getWebHeight(double baseHeight, BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    
    if (screenWidth >= 1920) {
      // Large desktop: 1.2x height
      return (baseHeight * 1.2).h;
    } else if (screenWidth >= 1440) {
      // Desktop: 1.1x height
      return (baseHeight * 1.1).h;
    } else if (screenWidth >= 1200) {
      // Large tablet/small desktop: 1.0x height
      return baseHeight.h;
    } else if (screenWidth >= 768) {
      // Tablet: 0.9x height
      return (baseHeight * 0.9).h;
    } else {
      // Mobile: 0.8x height
      return (baseHeight * 0.8).h;
    }
  }

  /// Get responsive width optimized for web
  static double getWebWidth(double baseWidth, BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    
    if (screenWidth >= 1920) {
      // Large desktop: 1.2x width
      return (baseWidth * 1.2).w;
    } else if (screenWidth >= 1440) {
      // Desktop: 1.1x width
      return (baseWidth * 1.1).w;
    } else if (screenWidth >= 1200) {
      // Large tablet/small desktop: 1.0x width
      return baseWidth.w;
    } else if (screenWidth >= 768) {
      // Tablet: 0.9x width
      return (baseWidth * 0.9).w;
    } else {
      // Mobile: 0.8x width
      return (baseWidth * 0.8).w;
    }
  }

  /// Get responsive padding optimized for web
  static EdgeInsets getWebPadding(BuildContext context, {
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
      top: getWebHeight(top ?? vPadding, context),
      bottom: getWebHeight(bottom ?? vPadding, context),
      left: getWebSpacing(left ?? hPadding, context),
      right: getWebSpacing(right ?? hPadding, context),
    );
  }

  /// Get responsive margin optimized for web
  static EdgeInsets getWebMargin(BuildContext context, {
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
      top: getWebHeight(top ?? vMargin, context),
      bottom: getWebHeight(bottom ?? vMargin, context),
      left: getWebSpacing(left ?? hMargin, context),
      right: getWebSpacing(right ?? hMargin, context),
    );
  }

  /// Check if current screen is web desktop
  static bool isWebDesktop(BuildContext context) {
    return MediaQuery.of(context).size.width >= 1200;
  }

  /// Check if current screen is web tablet
  static bool isWebTablet(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return width >= 768 && width < 1200;
  }

  /// Check if current screen is web mobile
  static bool isWebMobile(BuildContext context) {
    return MediaQuery.of(context).size.width < 768;
  }

  /// Get maximum content width for web
  static double getMaxContentWidth(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    
    if (screenWidth >= 1920) {
      return 1600.w;
    } else if (screenWidth >= 1440) {
      return 1200.w;
    } else if (screenWidth >= 1200) {
      return 1000.w;
    } else {
      return screenWidth;
    }
  }

  /// Get responsive grid columns for web
  static int getWebGridColumns(BuildContext context, {
    int mobileColumns = 1,
    int tabletColumns = 2,
    int desktopColumns = 3,
    int largeDesktopColumns = 4,
  }) {
    final screenWidth = MediaQuery.of(context).size.width;
    
    if (screenWidth >= 1920) {
      return largeDesktopColumns;
    } else if (screenWidth >= 1440) {
      return desktopColumns;
    } else if (screenWidth >= 1200) {
      return desktopColumns;
    } else if (screenWidth >= 768) {
      return tabletColumns;
    } else {
      return mobileColumns;
    }
  }
}
