import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:y_chat_admin/src/core/constants/constants.dart';


class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primary,
        brightness: Brightness.light,
        primary: AppColors.primary,
        secondary: AppColors.secondary,
        surface: AppColors.surface,
        error: AppColors.error,
      ),
      textTheme: GoogleFonts.poppinsTextTheme(
        const TextTheme(
          displayLarge: TextStyle(fontSize: 57, fontWeight: FontWeight.w400, height: 1.2),
          displayMedium: TextStyle(fontSize: 45, fontWeight: FontWeight.w400, height: 1.2),
          displaySmall: TextStyle(fontSize: 36, fontWeight: FontWeight.w400, height: 1.2),
          headlineLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.w600, height: 1.2),
          headlineMedium: TextStyle(fontSize: 28, fontWeight: FontWeight.w600, height: 1.2),
          headlineSmall: TextStyle(fontSize: 24, fontWeight: FontWeight.w600, height: 1.2),
          titleLarge: TextStyle(fontSize: 22, fontWeight: FontWeight.w600, height: 1.3),
          titleMedium: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, height: 1.3),
          titleSmall: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, height: 1.3),
          bodyLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.normal, height: 1.5),
          bodyMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, height: 1.5),
          bodySmall: TextStyle(fontSize: 12, fontWeight: FontWeight.normal, height: 1.5),
          labelLarge: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, height: 1.4),
          labelMedium: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, height: 1.4),
          labelSmall: TextStyle(fontSize: 10, fontWeight: FontWeight.w500, height: 1.4),
        ),
      ),
      appBarTheme: AppBarTheme(
        centerTitle: false,
        titleTextStyle: TextStyles.headlineSmall.copyWith(color: AppColors.onPrimary),
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.onPrimary,
        elevation: Elevation.sm,
        iconTheme: const IconThemeData(color: AppColors.onPrimary, size: 24),
      ),
      navigationBarTheme: NavigationBarThemeData(
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        backgroundColor: AppColors.surface,
        iconTheme: WidgetStateProperty.resolveWith<IconThemeData?>((states) {
          if (states.contains(WidgetState.selected)) {
            return const IconThemeData(color: AppColors.primary, size: 28);
          }
          return IconThemeData(
            color: AppColors.onSurface.withValues(alpha: 0.6),
            size: 24,
          );
        }),
        labelTextStyle: WidgetStateProperty.resolveWith<TextStyle?>((states) {
          if (states.contains(WidgetState.selected)) {
            return TextStyles.bodySmall.copyWith(
              color: AppColors.primary,
              fontWeight: FontWeight.w600,
            );
          }
          return TextStyles.bodySmall.copyWith(
            color: AppColors.onSurface.withValues(alpha: 0.6),
            fontWeight: FontWeight.w400,
          );
        }),
      ),

    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primary,
        brightness: Brightness.dark,
        primary: AppColors.primary,
        secondary: AppColors.secondary,
        surface: AppColors.darkSurface,
        error: AppColors.error,
      ),
      textTheme: GoogleFonts.poppinsTextTheme(
        const TextTheme(
          displayLarge: TextStyle(fontSize: 57, fontWeight: FontWeight.w400, height: 1.2),
          displayMedium: TextStyle(fontSize: 45, fontWeight: FontWeight.w400, height: 1.2),
          displaySmall: TextStyle(fontSize: 36, fontWeight: FontWeight.w400, height: 1.2),
          headlineLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.w600, height: 1.2),
          headlineMedium: TextStyle(fontSize: 28, fontWeight: FontWeight.w600, height: 1.2),
          headlineSmall: TextStyle(fontSize: 24, fontWeight: FontWeight.w600, height: 1.2),
          titleLarge: TextStyle(fontSize: 22, fontWeight: FontWeight.w600, height: 1.3),
          titleMedium: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, height: 1.3),
          titleSmall: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, height: 1.3),
          bodyLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.normal, height: 1.5),
          bodyMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, height: 1.5),
          bodySmall: TextStyle(fontSize: 12, fontWeight: FontWeight.normal, height: 1.5),
          labelLarge: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, height: 1.4),
          labelMedium: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, height: 1.4),
          labelSmall: TextStyle(fontSize: 10, fontWeight: FontWeight.w500, height: 1.4),
        ),
      ),
      appBarTheme: AppBarTheme(
        centerTitle: false,
        titleTextStyle: TextStyles.headlineSmall.copyWith(color: AppColors.onPrimary),
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.onPrimary,
        elevation: Elevation.sm,
        iconTheme: const IconThemeData(color: AppColors.onPrimary, size: 24),
      ),
      navigationBarTheme: NavigationBarThemeData(
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        elevation: Elevation.sm,
        backgroundColor: AppColors.darkSurface,
        iconTheme: WidgetStateProperty.resolveWith<IconThemeData?>((states) {
          if (states.contains(WidgetState.selected)) {
            return const IconThemeData(color: AppColors.primary, size: 28);
          }
          return IconThemeData(
            color: AppColors.darkOnSurface.withValues(alpha: 0.6),
            size: 24,
          );
        }),
        labelTextStyle: WidgetStateProperty.resolveWith<TextStyle?>((states) {
          if (states.contains(WidgetState.selected)) {
            return TextStyles.bodySmall.copyWith(
              color: AppColors.primary,
              fontWeight: FontWeight.w600,
            );
          }
          return TextStyles.bodySmall.copyWith(
            color: AppColors.darkOnSurface.withValues(alpha: 0.6),
            fontWeight: FontWeight.w400,
          );
        }),
      ),
    );
  }
}
