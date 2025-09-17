import 'package:dio/dio.dart';
import 'package:y_chat_admin/src/core/api/api_config.dart';
import 'package:y_chat_admin/src/features/auth/domain/entities/user_entity.dart';
import 'package:y_chat_admin/src/features/auth/domain/entities/auth_entity.dart';
import 'package:y_chat_admin/src/features/auth/domain/entities/super_admin_response_entity.dart';
import 'package:y_chat_admin/src/features/auth/domain/entities/login_response_entity.dart';
import 'package:y_chat_admin/src/shared/models/failure.dart';

abstract class AuthRemoteDataSource {
  Future<LoginResponseEntity> login({
    required String email,
    required String password,
  });

  Future<LoginResponseEntity> register({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
    bool role = false,
  });

  Future<LoginResponseEntity> createAdminUser({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
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
  });

  Future<SuperAdminResponseEntity> registerSuperAdmin({
    String? firstName,
    String? lastName,
    required String email,
    required String password,
  });
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final Dio _dio;

  AuthRemoteDataSourceImpl({required Dio dio}) : _dio = dio;

  @override
  Future<LoginResponseEntity> login({
    required String email,
    required String password,
  }) async {
    try {
      final response = await _dio.post(
        '${ApiConfig.baseUrl}${ApiConfig.loginEndpoint}',
        data: {
          'email': email,
          'password': password,
        },
        options: Options(
          headers: ApiConfig.defaultHeaders,
        ),
      );

      if (response.statusCode == 200) {
        // Parse response - backend returns boolean role, keep as is
        final responseData = response.data;
        return LoginResponseEntity.fromJson(responseData);
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
  Future<LoginResponseEntity> register({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
    bool role = false,
  }) async {
    try {
      final requestData = {
        'email': email,
        'password': password,
        'firstname': firstName,   // Backend expects camelCase
        'lastname': lastName,     // Backend expects camelCase
        'role': role,             // Backend expects boolean role
      };
      
      print('📤 Sending registration data: $requestData');
      
      final response = await _dio.post(
        '${ApiConfig.baseUrl}${ApiConfig.registerEndpoint}',
        data: requestData,
        options: Options(
          headers: ApiConfig.defaultHeaders,
        ),
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        // Parse response - backend returns boolean role, keep as is
        final responseData = response.data;
        return LoginResponseEntity.fromJson(responseData);
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
  Future<LoginResponseEntity> createAdminUser({
    required String email,
    required String password,
    required String firstName,
    required String lastName,

  }) async {
    try {
      final response = await _dio.post(
        '${ApiConfig.baseUrl}${ApiConfig.registerEndpoint}',
        data: {
          'email': email,
          'password': password,
          'firstname': firstName,   // Backend expects camelCase
          'lastname': lastName,     // Backend expects camelCase
          'role': true,             // Backend expects boolean role
        },
        options: Options(
          headers: ApiConfig.defaultHeaders,
        ),
      );

      if (response.statusCode == 201) {
        // Parse response - backend returns boolean role, keep as is
        final responseData = response.data;
        return LoginResponseEntity.fromJson(responseData);
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
        '${ApiConfig.baseUrl}${ApiConfig.profileEndpoint}',
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
        '${ApiConfig.baseUrl}${ApiConfig.profileEndpoint}',
        options: Options(
          headers: ApiConfig.defaultHeaders,
        ),
      );

      if (response.statusCode == 200) {
        final data = response.data;
        return UserEntity(
          id: data['id'] ?? 0,
          name: data['name'] ?? data['username'] ?? '',
          email: data['email'] ?? '',
          username: data['username'],
          firstName: data['firstName'],
          lastName: data['lastName'],
          role: data['role'] ?? false,
          isActive: data['isActive'],
          createdAt: data['createdAt'] != null ? DateTime.parse(data['createdAt']) : null,
          updatedAt: data['updatedAt'] != null ? DateTime.parse(data['updatedAt']) : null,
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
        '${ApiConfig.baseUrl}${ApiConfig.refreshTokenEndpoint}',
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
            id: data['user']['id'] ?? 0,
            name: data['user']['name'] ?? '${data['user']['firstName'] ?? ''} ${data['user']['lastName'] ?? ''}'.trim(),
            email: data['user']['email'] ?? '',
            role: data['user']['role'] ?? false,
            firstName: data['user']['firstName'],
            lastName: data['user']['lastName'],
            isActive: data['user']['isActive'],
            createdAt: data['user']['createdAt'] != null ? DateTime.parse(data['user']['createdAt']) : null,
            updatedAt: data['user']['updatedAt'] != null ? DateTime.parse(data['user']['updatedAt']) : null,
            avatar: data['user']['avatar'],
            lastLoginAt: data['user']['lastLoginAt'] != null
                ? DateTime.parse(data['user']['lastLoginAt'])
                : null,
          ),
          expiresAt: DateTime.parse(data['expiresAt'] ?? DateTime.now().add(const Duration(hours: 24)).toIso8601String()),
          refreshTokenExpiry: DateTime.parse(data['refreshTokenExpiry'] ?? DateTime.now().add(const Duration(days: 7)).toIso8601String()),
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
  
  }) async {
    try {
      final response = await _dio.put(
        '${ApiConfig.baseUrl}/auth/profile',
        data: {
          if (firstName != null) 'firstname': firstName,
          if (lastName != null) 'lastname': lastName,
         
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
    String? firstName,
    String? lastName,
    required String email,
    required String password,
  }) async {
    try {
      final response = await _dio.post(
        '${ApiConfig.baseUrl}${ApiConfig.registerEndpoint}',
        data: {
          'email': email,
          'password': password,
          'role': true,  // Super admin is always true
          if (firstName != null) 'firstname': firstName,
          if (lastName != null) 'lastname': lastName,
        },
        options: Options(
          headers: ApiConfig.defaultHeaders,
        ),
      );

          if (response.statusCode == 201 || response.statusCode == 200) {
            // Parse response and convert string role to boolean role
            final responseData = response.data;
            if (responseData is Map<String, dynamic> && responseData['data'] is Map<String, dynamic>) {
              final data = responseData['data'] as Map<String, dynamic>;
              data['role'] = data['role'] == 'admin' || data['role'] == 'super_admin';
              // Add name field if it doesn't exist
              if (!data.containsKey('name')) {
                data['name'] = '${data['firstname'] ?? ''} ${data['lastname'] ?? ''}'.trim();
              }
            }
            return SuperAdminResponseEntity.fromJson(responseData);
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
        final responseData = e.response?.data;
        String message = 'Server error';
        
        // Try to extract error message from different possible response formats
        if (responseData is Map<String, dynamic>) {
          message = responseData['message'] ?? 
                   responseData['error'] ?? 
                   responseData['detail'] ?? 
                   'Server error';
        } else if (responseData is String) {
          message = responseData;
        }
        
        // Add status code to message for debugging
        message = '$message (Status: $statusCode)';
        
        switch (statusCode) {
          case 401:
            return UnauthorizedFailure(message: message);
          case 403:
            return ForbiddenFailure(message: message);
          case 404:
            return NotFoundFailure(message: message);
          case 422:
            return ValidationFailure(message: message);
          case 500:
            return ServerFailure(
              message: 'Internal server error: $message',
              statusCode: statusCode,
            );
          default:
            return ServerFailure(
              message: message,
              statusCode: statusCode,
            );
        }
      case DioExceptionType.cancel:
        return UnknownFailure(message: 'Request cancelled');
      case DioExceptionType.connectionError:
        return NetworkFailure(
          message: 'Cannot connect to backend server. Please check:\n'
              '1. Backend server is running\n'
              '2. Correct port (trying: ${ApiConfig.baseUrl})\n'
              '3. Network connection\n'
              '4. Firewall settings'
        );
      default:
        return UnknownFailure(message: 'Network error: ${e.message}');
    }
  }
}
