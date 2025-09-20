import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// App constants following project standards
class AppConstants {
  // App Information
  static const String appName = 'Y Chat Admin';
  static const String appVersion = '1.0.0';
  static const String appDescription = 'Admin panel for Y Chat application';
  
  // API Configuration
  static const Duration apiTimeout = Duration(seconds: 30);
  static const Duration refreshTokenTimeout = Duration(seconds: 10);
  
  // Storage Keys
  static const String accessTokenKey = 'access_token';
  static const String refreshTokenKey = 'refresh_token';
  static const String tokenExpiryKey = 'token_expiry';
  static const String userDataKey = 'user_data';
  static const String themeKey = 'theme_mode';
  static const String languageKey = 'language';
  
  // Pagination
  static const int defaultPageSize = 20;
  static const int maxPageSize = 100;
  
  // Validation
  static const int minPasswordLength = 8;
  static const int maxPasswordLength = 128;
  static const int minUsernameLength = 3;
  static const int maxUsernameLength = 50;
  static const int minNameLength = 2;
  static const int maxNameLength = 100;
  static const int maxEmailLength = 255;
  static const int maxPhoneLength = 20;
  static const int maxDescriptionLength = 1000;
  
  // UI Constants
  static const double defaultBorderRadius = 8.0;
  static const double defaultElevation = 2.0;
  static const double defaultPadding = 16.0;
  static const double defaultMargin = 16.0;
  static const double defaultSpacing = 8.0;
  
  // Animation Durations
  static const Duration shortAnimation = Duration(milliseconds: 200);
  static const Duration mediumAnimation = Duration(milliseconds: 300);
  static const Duration longAnimation = Duration(milliseconds: 500);
  
  // Debounce Durations
  static const Duration searchDebounce = Duration(milliseconds: 300);
  static const Duration inputDebounce = Duration(milliseconds: 500);
  
  // File Upload
  static const int maxFileSize = 10 * 1024 * 1024; // 10MB
  static const List<String> allowedImageTypes = ['jpg', 'jpeg', 'png', 'gif', 'webp'];
  static const List<String> allowedDocumentTypes = ['pdf', 'doc', 'docx', 'txt'];
  
  // Date Formats
  static const String dateFormat = 'yyyy-MM-dd';
  static const String timeFormat = 'HH:mm:ss';
  static const String dateTimeFormat = 'yyyy-MM-dd HH:mm:ss';
  static const String displayDateFormat = 'MMM dd, yyyy';
  static const String displayTimeFormat = 'h:mm a';
  static const String displayDateTimeFormat = 'MMM dd, yyyy h:mm a';
  
  // Error Messages
  static const String networkErrorMessage = 'Network error. Please check your internet connection.';
  static const String serverErrorMessage = 'Server error. Please try again later.';
  static const String unknownErrorMessage = 'An unexpected error occurred. Please try again.';
  static const String validationErrorMessage = 'Please check your input and try again.';
  static const String authenticationErrorMessage = 'Authentication failed. Please login again.';
  static const String authorizationErrorMessage = 'You do not have permission to perform this action.';
  
  // Success Messages
  static const String successMessage = 'Operation completed successfully.';
  static const String saveSuccessMessage = 'Data saved successfully.';
  static const String deleteSuccessMessage = 'Item deleted successfully.';
  static const String updateSuccessMessage = 'Data updated successfully.';
  static const String createSuccessMessage = 'Item created successfully.';
  
  // Loading Messages
  static const String loadingMessage = 'Loading...';
  static const String savingMessage = 'Saving...';
  static const String deletingMessage = 'Deleting...';
  static const String updatingMessage = 'Updating...';
  static const String creatingMessage = 'Creating...';
  
  // Empty State Messages
  static const String noDataMessage = 'No data available.';
  static const String noUsersMessage = 'No users found.';
  static const String noTicketsMessage = 'No tickets found.';
  static const String noAppsMessage = 'No applications found.';
  
  // Confirmation Messages
  static const String deleteConfirmationMessage = 'Are you sure you want to delete this item?';
  static const String logoutConfirmationMessage = 'Are you sure you want to logout?';
  static const String unsavedChangesMessage = 'You have unsaved changes. Are you sure you want to leave?';
  
  // User Roles
  static const String superAdminRole = 'super_admin';
  static const String adminRole = 'admin';
  static const String userRole = 'user';
  static const String moderatorRole = 'moderator';
  
  // Ticket Status
  static const String ticketOpenStatus = 'open';
  static const String ticketInProgressStatus = 'in_progress';
  static const String ticketResolvedStatus = 'resolved';
  static const String ticketClosedStatus = 'closed';
  
  // Ticket Priority
  static const String ticketLowPriority = 'low';
  static const String ticketMediumPriority = 'medium';
  static const String ticketHighPriority = 'high';
  static const String ticketUrgentPriority = 'urgent';
  
  // Ticket Categories
  static const String ticketTechnicalCategory = 'technical';
  static const String ticketBillingCategory = 'billing';
  static const String ticketFeatureRequestCategory = 'feature_request';
  static const String ticketBugReportCategory = 'bug_report';
  static const String ticketGeneralCategory = 'general';
  
  // App Status
  static const String appActiveStatus = 'active';
  static const String appInactiveStatus = 'inactive';
  static const String appPendingStatus = 'pending';
  static const String appSuspendedStatus = 'suspended';
  
  // Notification Types
  static const String notificationInfoType = 'info';
  static const String notificationSuccessType = 'success';
  static const String notificationWarningType = 'warning';
  static const String notificationErrorType = 'error';
  
  // Chart Colors
  static const List<Color> chartColors = [
    Color(0xFF2196F3), // Blue
    Color(0xFF4CAF50), // Green
    Color(0xFFFF9800), // Orange
    Color(0xFFF44336), // Red
    Color(0xFF9C27B0), // Purple
    Color(0xFF00BCD4), // Cyan
    Color(0xFFFFEB3B), // Yellow
    Color(0xFF795548), // Brown
  ];
  
  // Responsive Breakpoints (use Breakpoints class from constants.dart)
  // static const double mobileBreakpoint = 600;
  // static const double tabletBreakpoint = 1200;
  // static const double desktopBreakpoint = 1920;
  
  // Grid Configuration
  static const int mobileGridColumns = 1;
  static const int tabletGridColumns = 2;
  static const int desktopGridColumns = 3;
  
  // List Configuration
  static const int mobileListItems = 5;
  static const int tabletListItems = 10;
  static const int desktopListItems = 15;
  
  // Search Configuration
  static const int minSearchLength = 2;
  static const int maxSearchResults = 50;
  
  // Cache Configuration
  static const Duration cacheExpiration = Duration(hours: 1);
  static const Duration tokenCacheExpiration = Duration(minutes: 30);
  
  // Security Configuration
  static const int maxLoginAttempts = 5;
  static const Duration lockoutDuration = Duration(minutes: 15);
  static const Duration sessionTimeout = Duration(hours: 8);
  
  // Feature Flags
  static const bool enableDarkMode = true;
  static const bool enableNotifications = true;
  static const bool enableAnalytics = true;
  static const bool enableCrashReporting = true;
  static const bool enablePerformanceMonitoring = true;
  
  // Development Configuration
  static const bool enableDebugLogs = true;
  static const bool enablePerformanceLogs = false;
  static const bool enableNetworkLogs = true;
  static const bool enableErrorLogs = true;
}

// Responsive classes moved to core/utils/responsive.dart
// Use ResponsiveUtils, ResponsiveSpacing, ResponsiveText from responsive.dart
