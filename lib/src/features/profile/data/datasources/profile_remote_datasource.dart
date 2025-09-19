import 'package:dio/dio.dart';
import '../../../../core/api/api_config.dart';
import '../../../../core/error/failures.dart';
import '../../domain/entities/profile_entity.dart';

abstract class ProfileRemoteDataSource {
  Future<ProfileEntity> getProfile();
  Future<ProfileEntity> updateProfile(UpdateProfileRequest request);
  Future<void> changePassword(ChangePasswordRequest request);
  Future<String> uploadAvatar(String imagePath);
}

class ProfileRemoteDataSourceImpl implements ProfileRemoteDataSource {
  final Dio _dio;

  ProfileRemoteDataSourceImpl({required Dio dio}) : _dio = dio;

  @override
  Future<ProfileEntity> getProfile() async {
    try {
      final response = await _dio.get(
        '${ApiConfig.baseUrl}${ApiConfig.profileEndpoint}',
        options: Options(
          headers: ApiConfig.defaultHeaders,
        ),
      );

      if (response.statusCode == 200) {
        final responseData = response.data;
        final data = responseData['data'] ?? responseData;
        
        return ProfileEntity(
          id: data['id'] ?? 0,
          name: data['name'] ?? data['username'] ?? '',
          email: data['email'] ?? '',
          bio: data['bio'],
          avatar: data['avatar'],
          isActive: data['is_active'] ?? data['isActive'] ?? true,
          createdAt: data['created_at'] != null ? DateTime.parse(data['created_at']) : 
                    (data['createdAt'] != null ? DateTime.parse(data['createdAt']) : null),
          updatedAt: data['updated_at'] != null ? DateTime.parse(data['updated_at']) : 
                    (data['updatedAt'] != null ? DateTime.parse(data['updatedAt']) : null),
          lastLoginAt: data['last_login'] != null ? DateTime.parse(data['last_login']) : 
                      (data['lastLoginAt'] != null ? DateTime.parse(data['lastLoginAt']) : null),
        );
      } else {
        throw const ServerFailure('Failed to get profile');
      }
    } on DioException catch (e) {
      throw _handleDioException(e);
    } catch (e) {
      throw UnknownFailure('Get profile failed: ${e.toString()}');
    }
  }

  @override
  Future<ProfileEntity> updateProfile(UpdateProfileRequest request) async {
    try {
      final response = await _dio.put(
        '${ApiConfig.baseUrl}${ApiConfig.profileEndpoint}',
        data: request.toJson(),
        options: Options(
          headers: ApiConfig.defaultHeaders,
        ),
      );

      if (response.statusCode == 200) {
        final responseData = response.data;
        final data = responseData['data'] ?? responseData;
        
        return ProfileEntity(
          id: data['id'] ?? 0,
          name: data['name'] ?? data['username'] ?? '',
          email: data['email'] ?? '',
          bio: data['bio'],
          avatar: data['avatar'],
          isActive: data['is_active'] ?? data['isActive'] ?? true,
          createdAt: data['created_at'] != null ? DateTime.parse(data['created_at']) : 
                    (data['createdAt'] != null ? DateTime.parse(data['createdAt']) : null),
          updatedAt: data['updated_at'] != null ? DateTime.parse(data['updated_at']) : 
                    (data['updatedAt'] != null ? DateTime.parse(data['updatedAt']) : null),
          lastLoginAt: data['last_login'] != null ? DateTime.parse(data['last_login']) : 
                      (data['lastLoginAt'] != null ? DateTime.parse(data['lastLoginAt']) : null),
        );
      } else {
        throw const ServerFailure('Failed to update profile');
      }
    } on DioException catch (e) {
      throw _handleDioException(e);
    } catch (e) {
      throw UnknownFailure('Update profile failed: ${e.toString()}');
    }
  }

  @override
  Future<void> changePassword(ChangePasswordRequest request) async {
    try {
      print('🔒 Change password request:');
      print('Current: ${request.currentPassword}');
      print('New: ${request.newPassword}');
      
      final response = await _dio.post(
        '${ApiConfig.baseUrl}/admin/change-password',
        data: {
          'currentPassword': request.currentPassword,
          'newPassword': request.newPassword,
        },
        options: Options(
          headers: ApiConfig.defaultHeaders,
        ),
      );

      print('🔒 Change password response:');
      print('Status: ${response.statusCode}');
      print('Data: ${response.data}');

      if (response.statusCode == 200) {
        final responseData = response.data;
        if (responseData['success'] == true) {
          print('🔒 Password changed successfully: ${responseData['message']}');
          return;
        } else {
          throw ServerFailure(responseData['message'] ?? 'Failed to change password');
        }
      } else {
        throw ServerFailure('Failed to change password');
      }
    } on DioException catch (e) {
      print('🔒 Change password DioException: ${e.message}');
      print('Response: ${e.response?.data}');
      throw _handleDioException(e);
    } catch (e) {
      print('🔒 Change password error: $e');
      throw UnknownFailure('Change password failed: ${e.toString()}');
    }
  }

  @override
  Future<String> uploadAvatar(String imagePath) async {
    try {
      final formData = FormData.fromMap({
        'avatar': await MultipartFile.fromFile(imagePath),
      });

      final response = await _dio.post(
        '${ApiConfig.baseUrl}/admin/upload-avatar',
        data: formData,
        options: Options(
          headers: ApiConfig.defaultHeaders,
        ),
      );

      if (response.statusCode == 200) {
        final responseData = response.data;
        return responseData['data']['avatar'] ?? responseData['avatar'] ?? '';
      } else {
        throw const ServerFailure('Failed to upload avatar');
      }
    } on DioException catch (e) {
      throw _handleDioException(e);
    } catch (e) {
      throw UnknownFailure('Upload avatar failed: ${e.toString()}');
    }
  }

  Failure _handleDioException(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return const TimeoutFailure('Connection timeout');
      case DioExceptionType.badResponse:
        final statusCode = e.response?.statusCode;
        final message = e.response?.data?['message'] ?? 'Server error';
        switch (statusCode) {
          case 401:
            return UnauthorizedFailure(message);
          case 403:
            return ForbiddenFailure(message);
          case 404:
            return NotFoundFailure(message);
          default:
            return ServerFailure(message);
        }
      case DioExceptionType.cancel:
        return const NetworkFailure('Request cancelled');
      case DioExceptionType.connectionError:
        return const NetworkFailure('No internet connection');
      default:
        return UnknownFailure(e.message ?? 'Unknown error');
    }
  }
}
