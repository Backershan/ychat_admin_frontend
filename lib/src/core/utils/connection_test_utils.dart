import 'package:dio/dio.dart';
import 'package:y_chat_admin/src/core/api/api_config.dart';

/// Utility class for testing backend connection
class ConnectionTestUtils {
  static final Dio _dio = Dio()
    ..options.connectTimeout = const Duration(seconds: 3)
    ..options.receiveTimeout = const Duration(seconds: 3);

  /// Test connection to the backend server
  static Future<ConnectionTestResult> testConnection() async {
    final List<String> urlsToTest = [
      ApiConfig.baseUrl,
      ApiConfig.alternativeBaseUrl1,
      ApiConfig.alternativeBaseUrl2,
      ApiConfig.alternativeBaseUrl3,
      // Also test localhost for web development
      'http://localhost:3002/api',
      'http://localhost:3002/api',
      // Android emulator specific URLs
      'http://10.0.2.2:3002/api',
      'http://10.0.2.2:3002/api',
      'http://10.0.2.2:8000/api',
    ];

    for (final url in urlsToTest) {
      try {
        final response = await _dio.get(url);
        
        if (response.statusCode != null) {
          return ConnectionTestResult(
            isConnected: true,
            workingUrl: url,
            message: 'Backend server is running on $url',
          );
        }
      } catch (e) {
        // Continue to next URL
        continue;
      }
    }

    return ConnectionTestResult(
      isConnected: false,
      workingUrl: null,
      message: 'No backend server found on any of the tested ports:\n'
          '${urlsToTest.join('\n')}\n\n'
          'Please ensure your backend server is running.',
    );
  }

  /// Get suggested solutions for connection issues
  static List<String> getSuggestedSolutions() {
    return [
      '1. Start your backend server:',
      '   - Node.js: npm start or yarn start',
      '   - Python: python manage.py runserver or python app.py',
      '   - Java: ./mvnw spring-boot:run',
      '2. Check if the server is running on port 3001:',
      '   - Windows: netstat -an | findstr :3001',
      '   - Linux/Mac: netstat -an | grep :3001',
      '3. Verify the server is listening on all interfaces (0.0.0.0:3001)',
      '4. Check Windows Firewall settings',
      '5. Ensure the backend server accepts CORS requests',
      '6. Try accessing http://192.168.29.171:3001/api in a browser',
    ];
  }
}

/// Result of connection test
class ConnectionTestResult {
  final bool isConnected;
  final String? workingUrl;
  final String message;

  const ConnectionTestResult({
    required this.isConnected,
    required this.workingUrl,
    required this.message,
  });
}
