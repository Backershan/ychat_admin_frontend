import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Responsive layout widget that adapts to different screen sizes
/// Follows the project rule of using ScreenUtil for responsive design
@immutable
class ResponsiveLayout extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget? desktop;
  
  const ResponsiveLayout({
    super.key,
    required this.mobile,
    this.tablet,
    this.desktop,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Mobile: < 600px
        if (constraints.maxWidth < 600) {
          return mobile;
        }
        // Tablet: 600px - 1200px
        else if (constraints.maxWidth < 1200) {
          return tablet ?? mobile;
        }
        // Desktop: > 1200px
        else {
          return desktop ?? tablet ?? mobile;
        }
      },
    );
  }
}

/// Responsive breakpoints following the project standards
class ResponsiveBreakpoints {
  static const double mobile = 600;
  static const double tablet = 1200;
  static const double desktop = 1920;
}

/// Responsive spacing utility
class ResponsiveSpacing {
  static double get small => 8.w;
  static double get medium => 16.w;
  static double get large => 24.w;
  static double get xlarge => 32.w;
  
  static double get verticalSmall => 8.h;
  static double get verticalMedium => 16.h;
  static double get verticalLarge => 24.h;
  static double get verticalXlarge => 32.h;
}

/// Responsive text scaling
class ResponsiveText {
  static double get small => 12.sp;
  static double get medium => 14.sp;
  static double get large => 16.sp;
  static double get xlarge => 18.sp;
  static double get xxlarge => 24.sp;
  static double get title => 28.sp;
  static double get heading => 32.sp;
}
