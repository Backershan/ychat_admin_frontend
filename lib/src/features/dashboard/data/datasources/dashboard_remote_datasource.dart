import 'package:dio/dio.dart';
import '../../../../core/api/api_config.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/error/exceptions.dart';
import '../models/dashboard_model.dart';

abstract class DashboardRemoteDataSource {
  Future<DashboardModel> getDashboardData();
}

class DashboardRemoteDataSourceImpl implements DashboardRemoteDataSource {
  final Dio _dio;

  DashboardRemoteDataSourceImpl({required Dio dio}) : _dio = dio;

  @override
  Future<DashboardModel> getDashboardData() async {
    try {
      final response = await _dio.get(
        '${ApiConfig.baseUrl}${ApiConfig.dashboardEndpoint}',
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          },
        ),
      );

      if (response.statusCode == 200) {
        return DashboardModel.fromJson(response.data);
      } else {
        throw ServerException('Failed to fetch dashboard data');
      }



    } on DioException catch (e) {
      throw _handleDioException(e);
    } catch (e) {
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
            return NotFoundFailure('Dashboard data not found.');
          case 500:
          case 502:
          case 503:
            return ServerFailure('Server error. Please try again later.');
          default:
            return ServerFailure('Failed to fetch dashboard data. Status: $statusCode');
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
