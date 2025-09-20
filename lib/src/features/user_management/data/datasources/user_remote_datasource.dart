import 'package:dio/dio.dart';
import 'package:y_chat_admin/src/core/api/api_config.dart';
import 'package:y_chat_admin/src/core/services/token_storage_service.dart';
import 'package:y_chat_admin/src/features/user_management/domain/entities/user_entity.dart';
import 'package:y_chat_admin/src/shared/models/failure.dart';

abstract class UserRemoteDataSource {
  Future<UserListResponse> getUsers({
    String? search,
    String? status,
    int page = 1,
    int limit = 20,
  });
  
  Future<UserActionResponse> createUser({
    required String firstname,
    required String email,
    String? lastname,
    String? phone,
    String? role,
  });
  
  Future<UserActionResponse> updateUser({
    required int userId,
    String? firstname,
    String? lastname,
    String? email,
    String? phone,
    String? role,
  });
  
  Future<UserActionResponse> deleteUser(int userId);
  
  Future<UserActionResponse> updateUserStatus({
    required int userId,
    required String status,
  });
  
  Future<UserActionResponse> banUser({
    required int userId,
    required String reason,
    required String banType,
  });
  
  Future<UserActionResponse> unbanUser(int userId);
  
  Future<UserActionResponse> activateUser(int userId);
  
  Future<UserActionResponse> deactivateUser({
    required int userId,
    required String reason,
  });
}

class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  final Dio _dio;

  UserRemoteDataSourceImpl(this._dio);

  Future<Map<String, String>> _getHeaders() async {
    final tokenStorage = await TokenStorageService.getInstance();
    final accessToken = tokenStorage.getAccessToken();
    
    final headers = Map<String, String>.from(ApiConfig.defaultHeaders);
    if (accessToken != null) {
      headers['Authorization'] = 'Bearer $accessToken';
    }
    return headers;
  }

  @override
  Future<UserListResponse> getUsers({
    String? search,
    String? status,
    int page = 1,
    int limit = 20,
  }) async {
    try {
      final headers = await _getHeaders();
      final queryParams = <String, dynamic>{
        'page': page,
        'limit': limit,
      };
      
      if (search != null && search.isNotEmpty) {
        queryParams['search'] = search;
      }
      if (status != null && status.isNotEmpty) {
        queryParams['status'] = status;
      }

      final response = await _dio.get(
        '${ApiConfig.baseUrl}${ApiConfig.usersEndpoint}',
        queryParameters: queryParams,
        options: Options(headers: headers),
      );

      if (response.statusCode == 200) {
        return UserListResponse.fromJson(response.data);
      } else {
        throw ServerFailure(message: 'Failed to fetch users: ${response.statusMessage}');
      }
    } on DioException catch (e) {
      if (e.response?.statusCode == 401) {
        throw UnauthorizedFailure(message: 'Unauthorized access');
      } else if (e.response?.statusCode == 403) {
        throw UnauthorizedFailure(message: 'Forbidden access');
      } else if (e.response?.statusCode == 404) {
        throw NotFoundFailure(message: 'Users not found');
      } else if (e.type == DioExceptionType.connectionTimeout ||
                 e.type == DioExceptionType.receiveTimeout ||
                 e.type == DioExceptionType.sendTimeout) {
        throw NetworkFailure(message: 'Connection timeout');
      } else if (e.type == DioExceptionType.connectionError) {
        throw NetworkFailure(message: 'No internet connection');
      } else {
        throw ServerFailure(message: 'Server error: ${e.message}');
      }
    } catch (e) {
      throw UnknownFailure(message: 'Unexpected error: $e');
    }
  }

  @override
  Future<UserActionResponse> createUser({
    required String firstname,
    required String email,
    String? lastname,
    String? phone,
    String? role,
  }) async {
    try {
      final headers = await _getHeaders();
      final data = {
        'action': 'create-user',
        'data': {
          'firstname': firstname,
          'email': email,
          if (lastname != null) 'lastname': lastname,
          if (phone != null) 'phone': phone,
          if (role != null) 'role': role,
        },
      };

      final response = await _dio.post(
        '${ApiConfig.baseUrl}${ApiConfig.actionsEndpoint}',
        data: data,
        options: Options(headers: headers),
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        return UserActionResponse.fromJson(response.data);
      } else {
        throw ServerFailure(message: 'Failed to create user: ${response.statusMessage}');
      }
    } on DioException catch (e) {
      if (e.response?.statusCode == 401) {
        throw UnauthorizedFailure(message: 'Unauthorized access');
      } else if (e.response?.statusCode == 403) {
        throw UnauthorizedFailure(message: 'Forbidden access');
      } else if (e.response?.statusCode == 400) {
        throw ValidationFailure(message: 'Invalid user data: ${e.response?.data?['message'] ?? 'Bad request'}');
      } else if (e.response?.statusCode == 409) {
        throw ValidationFailure(message: 'User already exists');
      } else if (e.type == DioExceptionType.connectionTimeout ||
                 e.type == DioExceptionType.receiveTimeout ||
                 e.type == DioExceptionType.sendTimeout) {
        throw NetworkFailure(message: 'Connection timeout');
      } else if (e.type == DioExceptionType.connectionError) {
        throw NetworkFailure(message: 'No internet connection');
      } else {
        throw ServerFailure(message: 'Server error: ${e.message}');
      }
    } catch (e) {
      throw UnknownFailure(message: 'Unexpected error: $e');
    }
  }

  @override
  Future<UserActionResponse> updateUser({
    required int userId,
    String? firstname,
    String? lastname,
    String? email,
    String? phone,
    String? role,
  }) async {
    try {
      final headers = await _getHeaders();
      final data = <String, dynamic>{};
      
      if (firstname != null) data['firstname'] = firstname;
      if (lastname != null) data['lastname'] = lastname;
      if (email != null) data['email'] = email;
      if (phone != null) data['phone'] = phone;
      if (role != null) data['role'] = role;

      final requestData = {
        'action': 'update-user',
        'data': {
          'userId': userId,
          ...data,
        },
      };

      final response = await _dio.post(
        '${ApiConfig.baseUrl}${ApiConfig.actionsEndpoint}',
        data: requestData,
        options: Options(headers: headers),
      );

      if (response.statusCode == 200) {
        return UserActionResponse.fromJson(response.data);
      } else {
        throw ServerFailure(message: 'Failed to update user: ${response.statusMessage}');
      }
    } on DioException catch (e) {
      if (e.response?.statusCode == 401) {
        throw UnauthorizedFailure(message: 'Unauthorized access');
      } else if (e.response?.statusCode == 403) {
        throw UnauthorizedFailure(message: 'Forbidden access');
      } else if (e.response?.statusCode == 404) {
        throw NotFoundFailure(message: 'User not found');
      } else if (e.response?.statusCode == 400) {
        throw ValidationFailure(message: 'Invalid user data: ${e.response?.data?['message'] ?? 'Bad request'}');
      } else if (e.type == DioExceptionType.connectionTimeout ||
                 e.type == DioExceptionType.receiveTimeout ||
                 e.type == DioExceptionType.sendTimeout) {
        throw NetworkFailure(message: 'Connection timeout');
      } else if (e.type == DioExceptionType.connectionError) {
        throw NetworkFailure(message: 'No internet connection');
      } else {
        throw ServerFailure(message: 'Server error: ${e.message}');
      }
    } catch (e) {
      throw UnknownFailure(message: 'Unexpected error: $e');
    }
  }

  @override
  Future<UserActionResponse> deleteUser(int userId) async {
    try {
      final headers = await _getHeaders();

      final response = await _dio.delete(
        '${ApiConfig.baseUrl}${ApiConfig.usersEndpoint}/$userId',
        options: Options(headers: headers),
      );

      if (response.statusCode == 200) {
        return UserActionResponse.fromJson(response.data);
      } else {
        throw ServerFailure(message: 'Failed to delete user: ${response.statusMessage}');
      }
    } on DioException catch (e) {
      if (e.response?.statusCode == 401) {
        throw UnauthorizedFailure(message: 'Unauthorized access');
      } else if (e.response?.statusCode == 403) {
        throw UnauthorizedFailure(message: 'Forbidden access');
      } else if (e.response?.statusCode == 404) {
        throw NotFoundFailure(message: 'User not found');
      } else if (e.type == DioExceptionType.connectionTimeout ||
                 e.type == DioExceptionType.receiveTimeout ||
                 e.type == DioExceptionType.sendTimeout) {
        throw NetworkFailure(message: 'Connection timeout');
      } else if (e.type == DioExceptionType.connectionError) {
        throw NetworkFailure(message: 'No internet connection');
      } else {
        throw ServerFailure(message: 'Server error: ${e.message}');
      }
    } catch (e) {
      throw UnknownFailure(message: 'Unexpected error: $e');
    }
  }

  @override
  Future<UserActionResponse> updateUserStatus({
    required int userId,
    required String status,
  }) async {
    try {
      final headers = await _getHeaders();
      final data = {
        'action': 'update-user-status',
        'data': {
          'userId': userId,
          'status': status,
        },
      };

      final response = await _dio.post(
        '${ApiConfig.baseUrl}${ApiConfig.actionsEndpoint}',
        data: data,
        options: Options(headers: headers),
      );

      if (response.statusCode == 200) {
        return UserActionResponse.fromJson(response.data);
      } else {
        throw ServerFailure(message: 'Failed to update user status: ${response.statusMessage}');
      }
    } on DioException catch (e) {
      if (e.response?.statusCode == 401) {
        throw UnauthorizedFailure(message: 'Unauthorized access');
      } else if (e.response?.statusCode == 403) {
        throw UnauthorizedFailure(message: 'Forbidden access');
      } else if (e.response?.statusCode == 404) {
        throw NotFoundFailure(message: 'User not found');
      } else if (e.response?.statusCode == 400) {
        throw ValidationFailure(message: 'Invalid status: ${e.response?.data?['message'] ?? 'Bad request'}');
      } else if (e.type == DioExceptionType.connectionTimeout ||
                 e.type == DioExceptionType.receiveTimeout ||
                 e.type == DioExceptionType.sendTimeout) {
        throw NetworkFailure(message: 'Connection timeout');
      } else if (e.type == DioExceptionType.connectionError) {
        throw NetworkFailure(message: 'No internet connection');
      } else {
        throw ServerFailure(message: 'Server error: ${e.message}');
      }
    } catch (e) {
      throw UnknownFailure(message: 'Unexpected error: $e');
    }
  }

  @override
  Future<UserActionResponse> banUser({
    required int userId,
    required String reason,
    required String banType,
  }) async {
    try {
      final headers = await _getHeaders();
      final data = {
        'reason': reason,
        'banType': banType,
      };

      final response = await _dio.post(
        '${ApiConfig.baseUrl}${ApiConfig.usersEndpoint}/$userId/ban',
        data: data,
        options: Options(headers: headers),
      );

      if (response.statusCode == 200) {
        return UserActionResponse.fromJson(response.data);
      } else {
        throw ServerFailure(message: 'Failed to ban user: ${response.statusMessage}');
      }
    } on DioException catch (e) {
      if (e.response?.statusCode == 401) {
        throw UnauthorizedFailure(message: 'Unauthorized access');
      } else if (e.response?.statusCode == 403) {
        throw UnauthorizedFailure(message: 'Forbidden access');
      } else if (e.response?.statusCode == 404) {
        throw NotFoundFailure(message: 'User not found');
      } else if (e.response?.statusCode == 400) {
        throw ValidationFailure(message: 'Invalid ban data: ${e.response?.data?['message'] ?? 'Bad request'}');
      } else if (e.type == DioExceptionType.connectionTimeout ||
                 e.type == DioExceptionType.receiveTimeout ||
                 e.type == DioExceptionType.sendTimeout) {
        throw NetworkFailure(message: 'Connection timeout');
      } else if (e.type == DioExceptionType.connectionError) {
        throw NetworkFailure(message: 'No internet connection');
      } else {
        throw ServerFailure(message: 'Server error: ${e.message}');
      }
    } catch (e) {
      throw UnknownFailure(message: 'Unexpected error: $e');
    }
  }

  @override
  Future<UserActionResponse> unbanUser(int userId) async {
    try {
      final headers = await _getHeaders();

      final response = await _dio.post(
        '${ApiConfig.baseUrl}${ApiConfig.usersEndpoint}/$userId/unban',
        options: Options(headers: headers),
      );

      if (response.statusCode == 200) {
        return UserActionResponse.fromJson(response.data);
      } else {
        throw ServerFailure(message: 'Failed to unban user: ${response.statusMessage}');
      }
    } on DioException catch (e) {
      if (e.response?.statusCode == 401) {
        throw UnauthorizedFailure(message: 'Unauthorized access');
      } else if (e.response?.statusCode == 403) {
        throw UnauthorizedFailure(message: 'Forbidden access');
      } else if (e.response?.statusCode == 404) {
        throw NotFoundFailure(message: 'User not found');
      } else if (e.type == DioExceptionType.connectionTimeout ||
                 e.type == DioExceptionType.receiveTimeout ||
                 e.type == DioExceptionType.sendTimeout) {
        throw NetworkFailure(message: 'Connection timeout');
      } else if (e.type == DioExceptionType.connectionError) {
        throw NetworkFailure(message: 'No internet connection');
      } else {
        throw ServerFailure(message: 'Server error: ${e.message}');
      }
    } catch (e) {
      throw UnknownFailure(message: 'Unexpected error: $e');
    }
  }

  @override
  Future<UserActionResponse> activateUser(int userId) async {
    try {
      final headers = await _getHeaders();

      final response = await _dio.post(
        '${ApiConfig.baseUrl}${ApiConfig.usersEndpoint}/$userId/activate',
        options: Options(headers: headers),
      );

      if (response.statusCode == 200) {
        return UserActionResponse.fromJson(response.data);
      } else {
        throw ServerFailure(message: 'Failed to activate user: ${response.statusMessage}');
      }
    } on DioException catch (e) {
      if (e.response?.statusCode == 401) {
        throw UnauthorizedFailure(message: 'Unauthorized access');
      } else if (e.response?.statusCode == 403) {
        throw UnauthorizedFailure(message: 'Forbidden access');
      } else if (e.response?.statusCode == 404) {
        throw NotFoundFailure(message: 'User not found');
      } else if (e.type == DioExceptionType.connectionTimeout ||
                 e.type == DioExceptionType.receiveTimeout ||
                 e.type == DioExceptionType.sendTimeout) {
        throw NetworkFailure(message: 'Connection timeout');
      } else if (e.type == DioExceptionType.connectionError) {
        throw NetworkFailure(message: 'No internet connection');
      } else {
        throw ServerFailure(message: 'Server error: ${e.message}');
      }
    } catch (e) {
      throw UnknownFailure(message: 'Unexpected error: $e');
    }
  }

  @override
  Future<UserActionResponse> deactivateUser({
    required int userId,
    required String reason,
  }) async {
    try {
      final headers = await _getHeaders();
      final data = {
        'reason': reason,
      };

      final response = await _dio.post(
        '${ApiConfig.baseUrl}${ApiConfig.usersEndpoint}/$userId/deactivate',
        data: data,
        options: Options(headers: headers),
      );

      if (response.statusCode == 200) {
        return UserActionResponse.fromJson(response.data);
      } else {
        throw ServerFailure(message: 'Failed to deactivate user: ${response.statusMessage}');
      }
    } on DioException catch (e) {
      if (e.response?.statusCode == 401) {
        throw UnauthorizedFailure(message: 'Unauthorized access');
      } else if (e.response?.statusCode == 403) {
        throw UnauthorizedFailure(message: 'Forbidden access');
      } else if (e.response?.statusCode == 404) {
        throw NotFoundFailure(message: 'User not found');
      } else if (e.response?.statusCode == 400) {
        throw ValidationFailure(message: 'Invalid deactivation data: ${e.response?.data?['message'] ?? 'Bad request'}');
      } else if (e.type == DioExceptionType.connectionTimeout ||
                 e.type == DioExceptionType.receiveTimeout ||
                 e.type == DioExceptionType.sendTimeout) {
        throw NetworkFailure(message: 'Connection timeout');
      } else if (e.type == DioExceptionType.connectionError) {
        throw NetworkFailure(message: 'No internet connection');
      } else {
        throw ServerFailure(message: 'Server error: ${e.message}');
      }
    } catch (e) {
      throw UnknownFailure(message: 'Unexpected error: $e');
    }
  }
}
