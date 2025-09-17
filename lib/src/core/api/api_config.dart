import 'package:flutter/foundation.dart';

class ApiConfig {
  // Base URL for the API - automatically detects platform
  static String get baseUrl {
    if (kIsWeb) {
      // For web development, use localhost
      return 'http://localhost:3001/api';
    } else {
      // For mobile development, use Android emulator IP
      return 'http://10.0.2.2:3001/api';
    }
  }
  
  // Alternative URLs for different backend setups
  static const String alternativeBaseUrl1 = 'http://192.168.29.171:3001/api';
  static const String alternativeBaseUrl2 = 'http://192.168.29.171:8000/api';
  static const String alternativeBaseUrl3 = 'http://192.168.29.171:8080/api';
  
  // API Endpoints
 //auth
  static const String registerEndpoint = '/admin/register';
  static const String loginEndpoint = '/admin/login';
  static const String profileEndpoint = '/admin/profile';
  static const String changePassword = '/admin/change-password';
  static const String logoutEndpoint = '/admin/logout';
  static const String refreshTokenEndpoint = '/auth/refresh';
  static const String meEndpoint = '/auth/me';

  //super admin management
  static const String dashboardEndpoint = '/admin/dashboard';
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
