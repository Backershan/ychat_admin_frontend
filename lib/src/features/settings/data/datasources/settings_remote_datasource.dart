import 'package:dio/dio.dart';
import '../../../../core/api/api_config.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/error/exceptions.dart';
import '../models/settings_model.dart';
import '../converters/settings_json_converter.dart';
import '../../domain/entities/settings_entity.dart';

abstract class SettingsRemoteDataSource {
  Future<SettingsModel> getSettings();
  Future<SettingsModel> updateSettings(SettingsEntity settings);
}

class SettingsRemoteDataSourceImpl implements SettingsRemoteDataSource {
  final Dio _dio;

  SettingsRemoteDataSourceImpl({required Dio dio}) : _dio = dio;

  @override
  Future<SettingsModel> getSettings() async {
    try {
      final response = await _dio.get(
        '${ApiConfig.baseUrl}${ApiConfig.settingsEndpoint}',
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          },
        ),
      );

      if (response.statusCode == 200) {
        return SettingsJsonConverter.parseSettingsResponse(response.data);
      } else {
        throw ServerException('Failed to fetch settings');
      }
    } on DioException catch (e) {
      throw _handleDioException(e);
    } catch (e) {
      throw UnknownException('An unexpected error occurred: $e');
    }
  }

  @override
  Future<SettingsModel> updateSettings(SettingsEntity settings) async {
    try {
      // Prepare the request data in snake_case format as expected by the API
      final requestData = {
        'enable_screen_share': settings.enableScreenShare,
        'enable_app_in_app': settings.enableAppInApp,
        'push_notifications': settings.pushNotifications,
      };

      print('🔧 Settings update request:');
      print('URL: ${ApiConfig.baseUrl}${ApiConfig.settingsUpdateEndpoint}');
      print('Data: $requestData');

      final response = await _dio.put(
        '${ApiConfig.baseUrl}${ApiConfig.settingsUpdateEndpoint}',
        data: requestData,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          },
        ),
      );

      print('🔧 Settings update response:');
      print('Status: ${response.statusCode}');
      print('Data: ${response.data}');

      if (response.statusCode == 200) {
        // Parse the response using the same converter
        return SettingsJsonConverter.parseSettingsResponse(response.data);
      } else {
        throw ServerException('Failed to update settings');
      }
    } on DioException catch (e) {
      print('🔧 Settings update DioException: ${e.message}');
      print('Response: ${e.response?.data}');
      throw _handleDioException(e);
    } catch (e) {
      print('🔧 Settings update error: $e');
      throw UnknownException('An unexpected error occurred: $e');
    }
  }

  Failure _handleDioException(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return TimeoutFailure('Connection timeout. Please check your internet connection.');

      case DioExceptionType.badResponse:
        final statusCode = e.response?.statusCode;
        switch (statusCode) {
          case 401:
            return UnauthorizedFailure('Unauthorized access. Please login again.');
          case 403:
            return ForbiddenFailure('Access forbidden. You do not have permission.');
          case 404:
            return NotFoundFailure('Settings not found.');
          case 500:
          case 502:
          case 503:
            return ServerFailure('Server error. Please try again later.');
          default:
            return ServerFailure('Failed to fetch settings. Status: $statusCode');
        }

      case DioExceptionType.connectionError:
        return NetworkFailure('No internet connection. Please check your network.');

      case DioExceptionType.unknown:
        if (e.message?.contains('SocketException') == true) {
          return NetworkFailure('Network error. Please check your connection.');
        }
        return UnknownFailure('An unexpected error occurred: ${e.message}');

      default:
        return UnknownFailure('An unexpected error occurred: ${e.message}');
    }
  }
}
