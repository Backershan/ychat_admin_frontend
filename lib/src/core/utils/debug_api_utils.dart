import 'package:dio/dio.dart';
import 'package:y_chat_admin/src/core/api/api_config.dart';

/// Utility class for debugging API calls
class DebugApiUtils {
  static final Dio _dio = Dio()
    ..options.connectTimeout = const Duration(seconds: 10)
    ..options.receiveTimeout = const Duration(seconds: 10);

  /// Test the register endpoint with detailed logging
  static Future<void> testRegisterEndpoint() async {
    print('🔍 Testing register endpoint...');
    print('URL: ${ApiConfig.baseUrl}${ApiConfig.registerEndpoint}');
    
    try {
      final response = await _dio.post(
        '${ApiConfig.baseUrl}${ApiConfig.registerEndpoint}',
        data: {
          'email': 'test@example.com',
          'password': 'testpassword123',
          'phone': '+1234567890',
          'username': 'testuser',
          'firstName': 'Test',
          'lastName': 'User',
        },
        options: Options(
          headers: ApiConfig.defaultHeaders,
        ),
      );
      
      print('✅ Success! Status: ${response.statusCode}');
      print('Response data: ${response.data}');
    } on DioException catch (e) {
      print('❌ DioException: ${e.type}');
      print('Status code: ${e.response?.statusCode}');
      print('Response data: ${e.response?.data}');
      print('Error message: ${e.message}');
    } catch (e) {
      print('❌ Other error: $e');
    }
  }

  /// Test the login endpoint with detailed logging
  static Future<void> testLoginEndpoint() async {
    print('🔍 Testing login endpoint...');
    print('URL: ${ApiConfig.baseUrl}${ApiConfig.loginEndpoint}');
    
    try {
      final response = await _dio.post(
        '${ApiConfig.baseUrl}${ApiConfig.loginEndpoint}',
        data: {
          'email': 'test@example.com',
          'password': 'testpassword123',
        },
        options: Options(
          headers: ApiConfig.defaultHeaders,
        ),
      );
      
      print('✅ Success! Status: ${response.statusCode}');
      print('Response data: ${response.data}');
    } on DioException catch (e) {
      print('❌ DioException: ${e.type}');
      print('Status code: ${e.response?.statusCode}');
      print('Response data: ${e.response?.data}');
      print('Error message: ${e.message}');
    } catch (e) {
      print('❌ Other error: $e');
    }
  }

  /// Test basic connectivity
  static Future<void> testBasicConnectivity() async {
    print('🔍 Testing basic connectivity...');
    print('Base URL: ${ApiConfig.baseUrl}');
    
    try {
      final response = await _dio.get(ApiConfig.baseUrl);
      print('✅ Basic connectivity works! Status: ${response.statusCode}');
      print('Response data: ${response.data}');
    } on DioException catch (e) {
      print('❌ DioException: ${e.type}');
      print('Status code: ${e.response?.statusCode}');
      print('Response data: ${e.response?.data}');
      print('Error message: ${e.message}');
    } catch (e) {
      print('❌ Other error: $e');
    }
  }
}
