import 'package:flutter/foundation.dart';

class ApiConfig {
  // Base URL for the API - automatically detects platform
  static String get baseUrl {
    if (kIsWeb) {
      // For web development, use localhost
      return 'http://localhost:3002/api';
      // return 'http://localhost:300/api';
    } else {
      // For mobile development, use Android emulator IP
      return 'http://10.0.2.2:3002/api';
      // return 'http://10.0.2.2:3000/api';
    }
  }
  
  // Alternative URLs for different backend setups
  static const String alternativeBaseUrl1 = 'http://192.168.29.171:3002/api';
  static const String alternativeBaseUrl2 = 'http://192.168.29.171:8000/api';
  static const String alternativeBaseUrl3 = 'http://192.168.29.171:8080/api';
  static const String alternativeBaseUrl4 = 'http://192.168.29.171:3000/api';
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
  static const String settingsEndpoint = '/admin/settings';
  static const String settingsUpdateEndpoint = '/admin/settings';

  static const String actionsEndpoint = '/admin/actions';
  static const String dataEndpoint = '/admin/data';
 
  
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
