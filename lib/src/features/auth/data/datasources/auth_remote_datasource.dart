import 'package:dio/dio.dart';
import 'package:y_chat_admin/src/core/api/api_config.dart';
import 'package:y_chat_admin/src/features/auth/domain/entities/user_entity.dart';
import 'package:y_chat_admin/src/features/auth/domain/entities/auth_entity.dart';
import 'package:y_chat_admin/src/features/auth/domain/entities/super_admin_response_entity.dart';
import 'package:y_chat_admin/src/features/auth/domain/entities/login_response_entity.dart';
import 'package:y_chat_admin/src/shared/models/failure.dart';

abstract class AuthRemoteDataSource {
  Future<AuthEntity> login({
    required String username,
    required String password,
  });

  Future<AuthEntity> register({
    required String username,
    required String email,
    required String password,
    required String firstName,
    required String lastName,
    String? phoneNumber,
    String? department,
    String? position,
  });

  Future<AuthEntity> createAdminUser({
    required String username,
    required String email,
    required String password,
    required String firstName,
    required String lastName,
    String? phoneNumber,
    String? department,
    String? position,
  });

  Future<void> logout();

  Future<bool> isAuthenticated();

  Future<UserEntity> getCurrentUser();

  Future<AuthEntity> refreshToken();

  Future<void> changePassword({
    required String currentPassword,
    required String newPassword,
  });

  Future<void> updateProfile({
    String? firstName,
    String? lastName,
    String? phoneNumber,
    String? department,
    String? position,
  });

  Future<SuperAdminResponseEntity> registerSuperAdmin({
    required String name,
    required String email,
    required String phone,
    required String password,
    String? location,
  });
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final Dio _dio;

  AuthRemoteDataSourceImpl({required Dio dio}) : _dio = dio;

  @override
  Future<AuthEntity> login({
    required String username,
    required String password,
  }) async {
    try {
      final response = await _dio.post(
        '${ApiConfig.baseUrl}${ApiConfig.loginEndpoint}',
        data: {
          'email': username, // Use email for login
          'password': password,
        },
        options: Options(
          headers: ApiConfig.defaultHeaders,
        ),
      );

      if (response.statusCode == 200) {
        final loginResponse = LoginResponseEntity.fromJson(response.data);
        
        if (loginResponse.success) {
          final data = loginResponse.data;
          return AuthEntity(
            token: data.token,
            refreshToken: '', // Your API doesn't provide refresh token
            user: UserEntity(
              id: data.id.toString(),
              username: data.name, // Using name as username
              email: data.email,
              firstName: data.name.split(' ').first,
              lastName: data.name.split(' ').length > 1 
                  ? data.name.split(' ').skip(1).join(' ') 
                  : '',
              role: data.role,
              isActive: true,
              createdAt: DateTime.now(),
              updatedAt: DateTime.now(),
              phoneNumber: data.phone,
            ),
            expiresAt: DateTime.now().add(const Duration(hours: 24)), // Default 24 hours
          );
        } else {
          throw ServerFailure(
            message: loginResponse.message,
            statusCode: 400,
          );
        }
      } else {
        throw ServerFailure(
          message: response.data['message'] ?? 'Login failed',
          statusCode: response.statusCode,
        );
      }
    } on DioException catch (e) {
      throw _handleDioException(e);
    } catch (e) {
      throw UnknownFailure(message: 'Unexpected error: $e');
    }
  }

  @override
  Future<AuthEntity> register({
    required String username,
    required String email,
    required String password,
    required String firstName,
    required String lastName,
    String? phoneNumber,
    String? department,
    String? position,
  }) async {
    try {
      final response = await _dio.post(
        '${ApiConfig.baseUrl}${ApiConfig.registerEndpoint}',
        data: {
          'email': email,
          'password': password,
          'phone': phoneNumber ?? '+1234567890', // Required field for your backend
          'username': username,
          'firstName': firstName,
          'lastName': lastName,
          if (department != null) 'department': department,
          if (position != null) 'position': position,
        },
        options: Options(
          headers: ApiConfig.defaultHeaders,
        ),
      );

      if (response.statusCode == 201) {
        final data = response.data;
        return AuthEntity(
          token: data['token'] ?? '',
          refreshToken: data['refreshToken'] ?? '',
          user: UserEntity(
            id: data['user']['id'] ?? '',
            username: data['user']['username'] ?? '',
            email: data['user']['email'] ?? '',
            firstName: data['user']['firstName'] ?? '',
            lastName: data['user']['lastName'] ?? '',
            role: data['user']['role'] ?? 'user',
            isActive: data['user']['isActive'] ?? true,
            createdAt: DateTime.parse(data['user']['createdAt'] ?? DateTime.now().toIso8601String()),
            updatedAt: DateTime.parse(data['user']['updatedAt'] ?? DateTime.now().toIso8601String()),
            avatar: data['user']['avatar'],
            phoneNumber: data['user']['phoneNumber'],
            department: data['user']['department'],
            position: data['user']['position'],
          ),
          expiresAt: DateTime.parse(data['expiresAt'] ?? DateTime.now().add(const Duration(hours: 24)).toIso8601String()),
        );
      } else {
        throw ServerFailure(
          message: response.data['message'] ?? 'Registration failed',
          statusCode: response.statusCode,
        );
      }
    } on DioException catch (e) {
      throw _handleDioException(e);
    } catch (e) {
      throw UnknownFailure(message: 'Unexpected error: $e');
    }
  }

  @override
  Future<AuthEntity> createAdminUser({
    required String username,
    required String email,
    required String password,
    required String firstName,
    required String lastName,
    String? phoneNumber,
    String? department,
    String? position,
  }) async {
    try {
      final response = await _dio.post(
        '${ApiConfig.baseUrl}${ApiConfig.registerEndpoint}',
        data: {
          'email': email,
          'password': password,
          'phone': phoneNumber ?? '+1234567890', // Required field for your backend
          'username': username,
          'firstName': firstName,
          'lastName': lastName,
          'role': 'admin',
          if (department != null) 'department': department,
          if (position != null) 'position': position,
        },
        options: Options(
          headers: ApiConfig.defaultHeaders,
        ),
      );

      if (response.statusCode == 201) {
        final data = response.data;
        return AuthEntity(
          token: data['token'] ?? '',
          refreshToken: data['refreshToken'] ?? '',
          user: UserEntity(
            id: data['user']['id'] ?? '',
            username: data['user']['username'] ?? '',
            email: data['user']['email'] ?? '',
            firstName: data['user']['firstName'] ?? '',
            lastName: data['user']['lastName'] ?? '',
            role: data['user']['role'] ?? 'admin',
            isActive: data['user']['isActive'] ?? true,
            createdAt: DateTime.parse(data['user']['createdAt'] ?? DateTime.now().toIso8601String()),
            updatedAt: DateTime.parse(data['user']['updatedAt'] ?? DateTime.now().toIso8601String()),
            avatar: data['user']['avatar'],
            phoneNumber: data['user']['phoneNumber'],
            department: data['user']['department'],
            position: data['user']['position'],
          ),
          expiresAt: DateTime.parse(data['expiresAt'] ?? DateTime.now().add(const Duration(hours: 24)).toIso8601String()),
        );
      } else {
        throw ServerFailure(
          message: response.data['message'] ?? 'Admin user creation failed',
          statusCode: response.statusCode,
        );
      }
    } on DioException catch (e) {
      throw _handleDioException(e);
    } catch (e) {
      throw UnknownFailure(message: 'Unexpected error: $e');
    }
  }

  @override
  Future<void> logout() async {
    try {
      final response = await _dio.post(
        '${ApiConfig.baseUrl}${ApiConfig.logoutEndpoint}',
        options: Options(
          headers: ApiConfig.defaultHeaders,
        ),
      );
      
      // Your API returns 401 for logout, which is actually expected
      // We'll treat 401 as successful logout
      if (response.statusCode == 401) {
        return; // Logout successful
      }
    } on DioException catch (e) {
      // If it's a 401 error, treat it as successful logout
      if (e.response?.statusCode == 401) {
        return;
      }
      throw _handleDioException(e);
    } catch (e) {
      throw UnknownFailure(message: 'Unexpected error: $e');
    }
  }

  @override
  Future<bool> isAuthenticated() async {
    try {
      final response = await _dio.get(
        '${ApiConfig.baseUrl}/auth/me',
        options: Options(
          headers: ApiConfig.defaultHeaders,
        ),
      );
      return response.statusCode == 200;
    } on DioException catch (e) {
      if (e.response?.statusCode == 401) {
        return false;
      }
      throw _handleDioException(e);
    } catch (e) {
      throw UnknownFailure(message: 'Unexpected error: $e');
    }
  }

  @override
  Future<UserEntity> getCurrentUser() async {
    try {
      final response = await _dio.get(
        '${ApiConfig.baseUrl}/auth/me',
        options: Options(
          headers: ApiConfig.defaultHeaders,
        ),
      );

      if (response.statusCode == 200) {
        final data = response.data;
        return UserEntity(
          id: data['id'] ?? '',
          username: data['username'] ?? '',
          email: data['email'] ?? '',
          firstName: data['firstName'] ?? '',
          lastName: data['lastName'] ?? '',
          role: data['role'] ?? 'user',
          isActive: data['isActive'] ?? true,
          createdAt: DateTime.parse(data['createdAt'] ?? DateTime.now().toIso8601String()),
          updatedAt: DateTime.parse(data['updatedAt'] ?? DateTime.now().toIso8601String()),
          avatar: data['avatar'],
          phoneNumber: data['phoneNumber'],
          department: data['department'],
          position: data['position'],
          lastLoginAt: data['lastLoginAt'] != null 
              ? DateTime.parse(data['lastLoginAt']) 
              : null,
        );
      } else {
        throw ServerFailure(
          message: response.data['message'] ?? 'Failed to get user data',
          statusCode: response.statusCode,
        );
      }
    } on DioException catch (e) {
      throw _handleDioException(e);
    } catch (e) {
      throw UnknownFailure(message: 'Unexpected error: $e');
    }
  }

  @override
  Future<AuthEntity> refreshToken() async {
    try {
      final response = await _dio.post(
        '${ApiConfig.baseUrl}/auth/refresh',
        options: Options(
          headers: ApiConfig.defaultHeaders,
        ),
      );

      if (response.statusCode == 200) {
        final data = response.data;
        return AuthEntity(
          token: data['token'] ?? '',
          refreshToken: data['refreshToken'] ?? '',
          user: UserEntity(
            id: data['user']['id'] ?? '',
            username: data['user']['username'] ?? '',
            email: data['user']['email'] ?? '',
            firstName: data['user']['firstName'] ?? '',
            lastName: data['user']['lastName'] ?? '',
            role: data['user']['role'] ?? 'user',
            isActive: data['user']['isActive'] ?? true,
            createdAt: DateTime.parse(data['user']['createdAt'] ?? DateTime.now().toIso8601String()),
            updatedAt: DateTime.parse(data['user']['updatedAt'] ?? DateTime.now().toIso8601String()),
            avatar: data['user']['avatar'],
            phoneNumber: data['user']['phoneNumber'],
            department: data['user']['department'],
            position: data['user']['position'],
            lastLoginAt: data['user']['lastLoginAt'] != null 
                ? DateTime.parse(data['user']['lastLoginAt']) 
                : null,
          ),
          expiresAt: DateTime.parse(data['expiresAt'] ?? DateTime.now().add(const Duration(hours: 24)).toIso8601String()),
        );
      } else {
        throw ServerFailure(
          message: response.data['message'] ?? 'Token refresh failed',
          statusCode: response.statusCode,
        );
      }
    } on DioException catch (e) {
      throw _handleDioException(e);
    } catch (e) {
      throw UnknownFailure(message: 'Unexpected error: $e');
    }
  }

  @override
  Future<void> changePassword({
    required String currentPassword,
    required String newPassword,
  }) async {
    try {
      final response = await _dio.put(
        '${ApiConfig.baseUrl}/auth/change-password',
        data: {
          'currentPassword': currentPassword,
          'newPassword': newPassword,
        },
        options: Options(
          headers: ApiConfig.defaultHeaders,
        ),
      );

      if (response.statusCode != 200) {
        throw ServerFailure(
          message: response.data['message'] ?? 'Password change failed',
          statusCode: response.statusCode,
        );
      }
    } on DioException catch (e) {
      throw _handleDioException(e);
    } catch (e) {
      throw UnknownFailure(message: 'Unexpected error: $e');
    }
  }

  @override
  Future<void> updateProfile({
    String? firstName,
    String? lastName,
    String? phoneNumber,
    String? department,
    String? position,
  }) async {
    try {
      final response = await _dio.put(
        '${ApiConfig.baseUrl}/auth/profile',
        data: {
          if (firstName != null) 'firstName': firstName,
          if (lastName != null) 'lastName': lastName,
          if (phoneNumber != null) 'phoneNumber': phoneNumber,
          if (department != null) 'department': department,
          if (position != null) 'position': position,
        },
        options: Options(
          headers: ApiConfig.defaultHeaders,
        ),
      );

      if (response.statusCode != 200) {
        throw ServerFailure(
          message: response.data['message'] ?? 'Profile update failed',
          statusCode: response.statusCode,
        );
      }
    } on DioException catch (e) {
      throw _handleDioException(e);
    } catch (e) {
      throw UnknownFailure(message: 'Unexpected error: $e');
    }
  }

  @override
  Future<SuperAdminResponseEntity> registerSuperAdmin({
    required String name,
    required String email,
    required String phone,
    required String password,
    String? location,
  }) async {
    try {
      final response = await _dio.post(
        '${ApiConfig.baseUrl}${ApiConfig.registerSuperAdminEndpoint}',
        data: {
          'name': name,
          'email': email,
          'phone': phone,
          'password': password,
          'location': location ?? 'Mountain View, United States',
        },
        options: Options(
          headers: ApiConfig.defaultHeaders,
        ),
      );

      if (response.statusCode == 201 || response.statusCode == 200) {
        return SuperAdminResponseEntity.fromJson(response.data);
      } else {
        throw ServerFailure(
          message: response.data['message'] ?? 'SuperAdmin registration failed',
          statusCode: response.statusCode,
        );
      }
    } on DioException catch (e) {
      throw _handleDioException(e);
    } catch (e) {
      throw UnknownFailure(message: 'Unexpected error: $e');
    }
  }

  Failure _handleDioException(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return TimeoutFailure(message: 'Request timeout');
      case DioExceptionType.badResponse:
        final statusCode = e.response?.statusCode;
        final message = e.response?.data?['message'] ?? 'Server error';
        switch (statusCode) {
          case 401:
            return UnauthorizedFailure(message: message);
          case 403:
            return ForbiddenFailure(message: message);
          case 404:
            return NotFoundFailure(message: message);
          default:
            return ServerFailure(
              message: message,
              statusCode: statusCode,
            );
        }
      case DioExceptionType.cancel:
        return UnknownFailure(message: 'Request cancelled');
      case DioExceptionType.connectionError:
        return NetworkFailure(message: 'No internet connection');
      default:
        return UnknownFailure(message: 'Network error: ${e.message}');
    }
  }
}
