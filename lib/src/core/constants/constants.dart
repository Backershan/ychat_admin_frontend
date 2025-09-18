import 'package:flutter/material.dart';

/// App-wide constants for consistent theming and spacing
class Constants {
  // Private constructor to prevent instantiation
  Constants._();
}

/// Spacing constants following 8px grid system
class Spacing {
  Spacing._();
  
  static const double xxxs = 2;
  static const double xxs = 4;
  static const double xs = 8;
  static const double sm = 12;
  static const double md = 16;
  static const double lg = 24;
  static const double xl = 32;
  static const double xxl = 40;
  static const double xxxl = 48;
  static const double huge = 64;
  static const double massive = 80;
}

/// Border radius constants
class Radius {
  Radius._();
  
  static const double xs = 4;
  static const double sm = 8;
  static const double md = 12;
  static const double lg = 16;
  static const double xl = 20;
  static const double xxl = 24;
  static const double round = 50;
}

/// Elevation constants
class Elevation {
  Elevation._();
  
  static const double none = 0;
  static const double xs = 1;
  static const double sm = 2;
  static const double md = 4;
  static const double lg = 8;
  static const double xl = 16;
}

/// Animation durations
class AnimationDuration {
  AnimationDuration._();
  
  static const Duration fast = Duration(milliseconds: 150);
  static const Duration normal = Duration(milliseconds: 300);
  static const Duration slow = Duration(milliseconds: 500);
  static const Duration verySlow = Duration(milliseconds: 800);
}

/// Breakpoints for responsive design
class Breakpoints {
  Breakpoints._();
  
  static const double mobile = 600;
  static const double tablet = 900;
  static const double desktop = 1200;
  static const double largeDesktop = 1600;
}

/// App colors following the design system
class AppColors {
  AppColors._();
  
  // Brand colors
  static const Color primary = Color(0xff584fbc);
  static const Color primaryLight = Color(0xff7a73d4);
  static const Color primaryDark = Color(0xff3d3699);
  
  // Secondary colors
  static const Color secondary = Color(0xffb3a8e8);
  static const Color secondaryLight = Color(0xffd1c9f0);
  static const Color secondaryDark = Color(0xff9585d4);
  
  // Neutral colors
  static const Color background = Color(0xfffdfdfd);
  static const Color surface = Color(0xffffffff);
  static const Color surfaceVariant = Color(0xfff5f5f5);
  
  // Text colors
  static const Color onBackground = Color(0xff212121);
  static const Color onSurface = Color(0xff212121);
  static const Color onPrimary = Color(0xffffffff);
  static const Color onSecondary = Color(0xffffffff);
  
  // Border colors
  static const Color outline = Color(0xffe0e0e0);
  
  // Status colors
  static const Color success = Color(0xff4caf50);
  static const Color warning = Color(0xffff9800);
  static const Color error = Color(0xfff44336);
  static const Color info = Color(0xff2196f3);
  
  // Dark theme colors
  static const Color darkBackground = Color(0xff121212);
  static const Color darkSurface = Color(0xff1e1e1e);
  static const Color darkOnBackground = Color(0xffffffff);
  static const Color darkOnSurface = Color(0xffffffff);
}

/// Text styles following the design system
class TextStyles {
  TextStyles._();
  
  // Headlines
  static const TextStyle headlineLarge = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    height: 1.2,
  );
  
  static const TextStyle headlineMedium = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.bold,
    height: 1.2,
  );
  
  static const TextStyle headlineSmall = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    height: 1.2,
  );
  
  // Titles
  static const TextStyle titleLarge = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w600,
    height: 1.3,
  );
  
  static const TextStyle titleMedium = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    height: 1.3,
  );
  
  static const TextStyle titleSmall = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    height: 1.3,
  );
  
  // Body text
  static const TextStyle bodyLarge = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    height: 1.5,
  );
  
  static const TextStyle bodyMedium = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    height: 1.5,
  );
  
  static const TextStyle bodySmall = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    height: 1.5,
  );
  
  // Labels
  static const TextStyle labelLarge = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 1.4,
  );
  
  static const TextStyle labelMedium = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    height: 1.4,
  );
  
  static const TextStyle labelSmall = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w500,
    height: 1.4,
  );
}
