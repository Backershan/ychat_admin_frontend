import 'package:flutter/foundation.dart';

class ApiConfig {
  // Environment-based configuration
  static const String _defaultWebUrl = 'http://localhost:3002/api';
  static const String _defaultMobileUrl = 'http://10.0.2.2:3002/api';
  
  // Base URL for the API - automatically detects platform and environment
  static String get baseUrl {
    // Check for environment variable first
    const String envUrl = String.fromEnvironment('API_BASE_URL');
    if (envUrl.isNotEmpty) {
      return envUrl;
    }
    
    // Platform-specific defaults
    if (kIsWeb) {
      return _defaultWebUrl;
    } else {
      return _defaultMobileUrl;
    }
  }
  
  // Fallback URLs for connection testing (removed hardcoded IPs)
  static List<String> get fallbackUrls => [
    baseUrl, // Primary URL
    _defaultWebUrl, // Web fallback
    _defaultMobileUrl, // Mobile fallback
  ];
  // API Endpoints
  //auth
  static const String registerEndpoint = '/admin/register';
  static const String loginEndpoint = '/admin/login';
  static const String profileEndpoint = '/admin/profile';
  static const String changePassword = '/admin/change-password';
  static const String logoutEndpoint = '/admin/logout';
  static const String meEndpoint = '/admin/me';
  static const String refreshTokenEndpoint = '/admin/refresh-token';

  //super admin management
  static const String dashboardEndpoint = '/admin/data?type=stats';
  static const String settingsEndpoint = '/admin/data?type=settings';
  static const String settingsUpdateEndpoint = '/admin/settings';
  
  // Actions and data endpoints
  static const String actionsEndpoint = '/admin/actions';
  static const String dataEndpoint = '/admin/data';
 
  // Ticket management endpoints
  static const String ticketsEndpoint = '/admin/tickets';
  static const String ticketsByCategoryEndpoint = '/admin/tickets/category';
  static const String ticketByIdEndpoint = '/admin/tickets';
  static const String ticketStatusEndpoint = '/admin/tickets';
  static const String ticketRepliesEndpoint = '/admin/tickets';
  static const String ticketStatsEndpoint = '/admin/tickets/stats';
  
  // Legacy ticket endpoints (for backward compatibility)
  static const String legacyTicketsEndpoint = '/admin/ticket';
  // Additional ticket endpoints from API documentation
  static const String ticketEndpoint = '/admin/ticket';
  static const String ticketStatusUpdateEndpoint = '/admin/tickets';
  
  // App management endpoints
  static const String appsEndpoint = '/admin/data?type=apps';
  static const String appActionsEndpoint = '/admin/actions';
  static const String appAnalyticsEndpoint = '/admin/apps/analytics';

  // User management endpoints
  static const String usersEndpoint = '/admin/data?type=users';
  static const String userActionsEndpoint = '/admin/actions';
  static String userEndpoint(int userId) => '/admin/users/$userId';
  static String banUserEndpoint(int userId) => '/admin/users/$userId/ban';
  static String unbanUserEndpoint(int userId) => '/admin/users/$userId/unban';
  static String activateUserEndpoint(int userId) => '/admin/users/$userId/activate';
  static String deactivateUserEndpoint(int userId) => '/admin/users/$userId/deactivate';
  
  // Default headers
  static const Map<String, String> defaultHeaders = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
  };
  
  // Timeout durations
  static const Duration connectTimeout = Duration(seconds: 10);
  static const Duration receiveTimeout = Duration(seconds: 10);
  static const Duration sendTimeout = Duration(seconds: 10);
}
