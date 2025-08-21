import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:y_chat_admin/src/core/theme/typography.dart';

final _lightCardColor = Colors.white;
final _darkCardColor = Colors.black87;

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      fontFamily: 'Inter',
      colorScheme: ColorScheme.fromSeed(
        seedColor: const Color(0xFF584FBC),
        brightness: Brightness.light,
      ),
      textTheme: AppTypography.textTheme,
      appBarTheme: AppBarTheme(
        centerTitle: false,
        titleTextStyle: AppTypography.textTheme.headlineSmall,
        backgroundColor: Color(0xFF584FBC),
        iconTheme: IconThemeData(size: 20.sp),
      ),
      navigationBarTheme: NavigationBarThemeData(
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        backgroundColor: Colors.white,
        iconTheme: WidgetStateProperty.resolveWith<IconThemeData?>((states) {
          if (states.contains(WidgetState.selected)) {
            return const IconThemeData(
              color: Color(0xFF584FBC), // selected color
              size: 28,
            );
          }
          return const IconThemeData(
            color: Colors.black, // unselected color
            size: 24,
          );
        }),
        labelTextStyle: WidgetStateProperty.resolveWith<TextStyle?>((states) {
          if (states.contains(WidgetState.selected)) {
            return AppTypography.textTheme.bodySmall?.copyWith(
              color: const Color(0xFF584FBC),
              fontWeight: FontWeight.w600,
            );
          }
          return AppTypography.textTheme.bodySmall?.copyWith(
            color: Colors.black45,
            fontWeight: FontWeight.w400,
          );
        }),
      ),

    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      fontFamily: 'Inter',
      colorScheme: ColorScheme.fromSeed(
        seedColor: const Color(0xFF584FBC),
        brightness: Brightness.light,
      ),
      textTheme: AppTypography.textTheme,
      appBarTheme: AppBarTheme(
        backgroundColor: Color(0xFF584FBC),
        centerTitle: false,
        titleTextStyle: AppTypography.textTheme.headlineSmall,
        iconTheme: IconThemeData(size: 20.sp),
      ),
      navigationBarTheme: NavigationBarThemeData(
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        elevation: 0.5,
        backgroundColor: Colors.black,
        iconTheme: WidgetStateProperty.resolveWith<IconThemeData?>((states) {
          if (states.contains(WidgetState.selected)) {
            return const IconThemeData(
              color: Color(0xFF584FBC), // selected color
              size: 28,
            );
          }
          return const IconThemeData(
            color: Colors.white, // unselected color
            size: 24,
          );
        }),
        labelTextStyle: WidgetStateProperty.resolveWith<TextStyle?>((states) {
          if (states.contains(WidgetState.selected)) {
            return AppTypography.textTheme.bodySmall?.copyWith(
              color: const Color(0xFF584FBC),
              fontWeight: FontWeight.w600,
            );
          }
          return AppTypography.textTheme.bodySmall?.copyWith(
            color: Colors.black45,
            fontWeight: FontWeight.w400,
          );
        }),
      ),
    );
  }
}
