class ApiConfig {
  // Base URL for the API
  static const String baseUrl = 'http://localhost:3000/api';
  
  // API Endpoints
  static const String loginEndpoint = '/admin/login';
  static const String registerEndpoint = '/admin/register';
  static const String registerSuperAdminEndpoint = '/admin/register';
  static const String logoutEndpoint = '/admin/logout';
  
  
  // Default headers
  static const Map<String, String> defaultHeaders = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
  };
  
  // Timeout durations
  static const Duration connectTimeout = Duration(seconds: 30);
  static const Duration receiveTimeout = Duration(seconds: 30);
  static const Duration sendTimeout = Duration(seconds: 30);
}
