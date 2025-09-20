import 'package:dio/dio.dart';
import 'package:y_chat_admin/src/core/api/api_config.dart';
import 'package:y_chat_admin/src/core/utils/logger.dart';

/// Utility class for debugging API calls
class DebugApiUtils {
  static final Dio _dio = Dio()
    ..options.connectTimeout = const Duration(seconds: 10)
    ..options.receiveTimeout = const Duration(seconds: 10);

  /// Test the register endpoint with detailed logging
  static Future<void> testRegisterEndpoint() async {
    Logger.debug('🔍 Testing register endpoint...');
    Logger.debug('URL: ${ApiConfig.baseUrl}${ApiConfig.registerEndpoint}');
    
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
      
      Logger.debug('✅ Success! Status: ${response.statusCode}');
      Logger.debug('Response data: ${response.data}');
    } on DioException catch (e) {
      Logger.debug('❌ DioException: ${e.type}');
      Logger.debug('Status code: ${e.response?.statusCode}');
      Logger.debug('Response data: ${e.response?.data}');
      Logger.debug('Error message: ${e.message}');
    } catch (e) {
      Logger.debug('❌ Other error: $e');
    }
  }

  /// Test the login endpoint with detailed logging
  static Future<void> testLoginEndpoint() async {
    Logger.debug('🔍 Testing login endpoint...');
    Logger.debug('URL: ${ApiConfig.baseUrl}${ApiConfig.loginEndpoint}');
    
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
      
      Logger.debug('✅ Success! Status: ${response.statusCode}');
      Logger.debug('Response data: ${response.data}');
    } on DioException catch (e) {
      Logger.debug('❌ DioException: ${e.type}');
      Logger.debug('Status code: ${e.response?.statusCode}');
      Logger.debug('Response data: ${e.response?.data}');
      Logger.debug('Error message: ${e.message}');
    } catch (e) {
      Logger.debug('❌ Other error: $e');
    }
  }

  /// Test basic connectivity
  static Future<void> testBasicConnectivity() async {
    Logger.debug('🔍 Testing basic connectivity...');
    Logger.debug('Base URL: ${ApiConfig.baseUrl}');
    
    try {
      final response = await _dio.get(ApiConfig.baseUrl);
      Logger.debug('✅ Basic connectivity works! Status: ${response.statusCode}');
      Logger.debug('Response data: ${response.data}');
    } on DioException catch (e) {
      Logger.debug('❌ DioException: ${e.type}');
      Logger.debug('Status code: ${e.response?.statusCode}');
      Logger.debug('Response data: ${e.response?.data}');
      Logger.debug('Error message: ${e.message}');
    } catch (e) {
      Logger.debug('❌ Other error: $e');
    }
  }
}
