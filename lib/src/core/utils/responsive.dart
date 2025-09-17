import 'package:flutter/material.dart';
import 'package:y_chat_admin/src/core/constants/constants.dart';

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
