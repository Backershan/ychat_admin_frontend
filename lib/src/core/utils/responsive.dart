import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:y_chat_admin/src/core/constants/constants.dart';

/// Comprehensive responsive utilities for the application
/// Combines functionality from responsive.dart, responsive_utils.dart, and web_responsive.dart

/// Responsive layout helper for different screen sizes
class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({
    super.key,
    required this.mobile,
    this.tablet,
    this.desktop,
    this.largeDesktop,
  });

  final Widget mobile;
  final Widget? tablet;
  final Widget? desktop;
  final Widget? largeDesktop;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        
        if (width >= Breakpoints.largeDesktop) {
          return largeDesktop ?? desktop ?? tablet ?? mobile;
        } else if (width >= Breakpoints.desktop) {
          return desktop ?? tablet ?? mobile;
        } else if (width >= Breakpoints.tablet) {
          return tablet ?? mobile;
        } else {
          return mobile;
        }
      },
    );
  }
}

/// Responsive breakpoint helper
class ResponsiveBreakpoint {
  const ResponsiveBreakpoint._();
  
  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width < Breakpoints.mobile;
  }
  
  static bool isTablet(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return width >= Breakpoints.mobile && width < Breakpoints.desktop;
  }
  
  static bool isDesktop(BuildContext context) {
    return MediaQuery.of(context).size.width >= Breakpoints.desktop;
  }
  
  static bool isLargeDesktop(BuildContext context) {
    return MediaQuery.of(context).size.width >= Breakpoints.largeDesktop;
  }

  // Additional breakpoint checks for web
  static bool isWebMobile(BuildContext context) {
    return MediaQuery.of(context).size.width < 768;
  }

  static bool isWebTablet(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return width >= 768 && width < 1200;
  }

  static bool isWebDesktop(BuildContext context) {
    return MediaQuery.of(context).size.width >= 1200;
  }
}

/// Responsive value helper
class ResponsiveValue<T> {
  const ResponsiveValue({
    required this.mobile,
    this.tablet,
    this.desktop,
    this.largeDesktop,
  });

  final T mobile;
  final T? tablet;
  final T? desktop;
  final T? largeDesktop;

  T getValue(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    
    if (width >= Breakpoints.largeDesktop) {
      return largeDesktop ?? desktop ?? tablet ?? mobile;
    } else if (width >= Breakpoints.desktop) {
      return desktop ?? tablet ?? mobile;
    } else if (width >= Breakpoints.tablet) {
      return tablet ?? mobile;
    } else {
      return mobile;
    }
  }
}

/// Comprehensive responsive utilities following project standards
class ResponsiveUtils {
  const ResponsiveUtils._();

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

/// Responsive spacing helper
class ResponsiveSpacing {
  const ResponsiveSpacing._();
  
  static double getSpacing(BuildContext context, {
    required double mobile,
    double? tablet,
    double? desktop,
    double? largeDesktop,
  }) {
    return ResponsiveValue<double>(
      mobile: mobile,
      tablet: tablet,
      desktop: desktop,
      largeDesktop: largeDesktop,
    ).getValue(context);
  }
  
  static EdgeInsets getPadding(BuildContext context, {
    required EdgeInsets mobile,
    EdgeInsets? tablet,
    EdgeInsets? desktop,
    EdgeInsets? largeDesktop,
  }) {
    return ResponsiveValue<EdgeInsets>(
      mobile: mobile,
      tablet: tablet,
      desktop: desktop,
      largeDesktop: largeDesktop,
    ).getValue(context);
  }

  // Predefined spacing constants
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

/// Responsive text style helper
class ResponsiveTextStyle {
  const ResponsiveTextStyle._();
  
  static TextStyle getTextStyle(BuildContext context, {
    required TextStyle mobile,
    TextStyle? tablet,
    TextStyle? desktop,
    TextStyle? largeDesktop,
  }) {
    return ResponsiveValue<TextStyle>(
      mobile: mobile,
      tablet: tablet,
      desktop: desktop,
      largeDesktop: largeDesktop,
    ).getValue(context);
  }
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

/// Web-specific responsive utilities for better web display
/// This class provides backward compatibility for existing WebResponsive usage
class WebResponsive {
  WebResponsive._();

  /// Get responsive font size optimized for web
  static double getWebFontSize(double baseSize, BuildContext context) {
    return ResponsiveUtils.getWebFontSize(baseSize, context);
  }

  /// Get responsive spacing optimized for web
  static double getWebSpacing(double baseSpacing, BuildContext context) {
    return ResponsiveUtils.getWebSpacing(baseSpacing, context);
  }

  /// Get responsive height optimized for web
  static double getWebHeight(double baseHeight, BuildContext context) {
    return ResponsiveUtils.getWebHeight(baseHeight, context);
  }

  /// Get responsive width optimized for web
  static double getWebWidth(double baseWidth, BuildContext context) {
    return ResponsiveUtils.getWebWidth(baseWidth, context);
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
    return ResponsiveUtils.getWebPadding(
      context,
      all: all,
      horizontal: horizontal,
      vertical: vertical,
      top: top,
      bottom: bottom,
      left: left,
      right: right,
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
    return ResponsiveUtils.getWebMargin(
      context,
      all: all,
      horizontal: horizontal,
      vertical: vertical,
      top: top,
      bottom: bottom,
      left: left,
      right: right,
    );
  }

  /// Check if current screen is web desktop
  static bool isWebDesktop(BuildContext context) {
    return ResponsiveBreakpoint.isWebDesktop(context);
  }

  /// Check if current screen is web tablet
  static bool isWebTablet(BuildContext context) {
    return ResponsiveBreakpoint.isWebTablet(context);
  }

  /// Check if current screen is web mobile
  static bool isWebMobile(BuildContext context) {
    return ResponsiveBreakpoint.isWebMobile(context);
  }

  /// Get maximum content width for web
  static double getMaxContentWidth(BuildContext context) {
    return ResponsiveUtils.getMaxContentWidth(context);
  }

  /// Get responsive grid columns for web
  static int getWebGridColumns(BuildContext context, {
    int mobileColumns = 1,
    int tabletColumns = 2,
    int desktopColumns = 3,
    int largeDesktopColumns = 4,
  }) {
    return ResponsiveUtils.getWebGridColumns(
      context,
      mobileColumns: mobileColumns,
      tabletColumns: tabletColumns,
      desktopColumns: desktopColumns,
      largeDesktopColumns: largeDesktopColumns,
    );
  }
}