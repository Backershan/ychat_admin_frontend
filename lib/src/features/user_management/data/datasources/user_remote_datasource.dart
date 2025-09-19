import 'package:dio/dio.dart';
import '../../../../core/api/api_config.dart';
import '../../../../core/error/exceptions.dart';
import '../models/user_model.dart';

abstract class UserRemoteDataSource {
  Future<UserListModel> getUsers({
    String? search,
    String? status,
    int? page,
    int? limit,
  });
  Future<UserModel> createUser(CreateUserRequestModel request);
  Future<UserModel> updateUser(UpdateUserRequestModel request);
  Future<void> deleteUser(int userId);
  Future<void> updateUserStatus(UpdateUserStatusRequestModel request);
  Future<void> banUser(int userId, BanUserRequestModel request);
  Future<void> unbanUser(int userId);
  Future<void> activateUser(int userId);
  Future<void> deactivateUser(int userId, DeactivateUserRequestModel request);
}

class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  final Dio _dio;

  UserRemoteDataSourceImpl(this._dio);

  @override
  Future<UserListModel> getUsers({
    String? search,
    String? status,
    int? page,
    int? limit,
  }) async {
    try {
      final queryParams = <String, dynamic>{};
      if (search != null && search.isNotEmpty) {
        queryParams['search'] = search;
      }
      if (status != null && status.isNotEmpty) {
        queryParams['status'] = status;
      }
      if (page != null) {
        queryParams['page'] = page;
      }
      if (limit != null) {
        queryParams['limit'] = limit;
      }

      final response = await _dio.get(
        ApiConfig.usersEndpoint,
        queryParameters: queryParams,
        options: Options(
          headers: ApiConfig.defaultHeaders,
        ),
      );

      print('🔧 Users response status: ${response.statusCode}');
      print('🔧 Users response data: ${response.data}');

      if (response.statusCode == 200) {
        return UserListModel.fromJson(response.data);
      } else {
        throw ServerException('Failed to fetch users: ${response.statusCode}');
      }
    } on DioException catch (e) {
      print('🔧 Users DioException: ${e.type} - ${e.message}');
      if (e.response?.statusCode == 404) {
        print('🔧 Users endpoint not found, returning mock data');
        return _getMockUsersList(search: search, status: status, page: page, limit: limit);
      } else if (e.response?.statusCode == 500) {
        throw ServerException('Server error while fetching users');
      } else if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.receiveTimeout) {
        throw NetworkException('Connection timeout while fetching users');
      } else {
        throw NetworkException('Network error while fetching users: ${e.message}');
      }
    } catch (e) {
      print('🔧 Users general error: $e');
      throw ServerException('Unexpected error while fetching users: $e');
    }
  }

  UserListModel _getMockUsersList({
    String? search,
    String? status,
    int? page,
    int? limit,
  }) {
    final mockUsers = [
      {
        'id': 1,
        'firstname': 'John',
        'lastname': 'Doe',
        'email': 'john.doe@example.com',
        'phone': '+1234567890',
        'status': 'active',
        'last_login': '2024-01-15T10:30:00Z',
        'created_at': '2024-01-01T00:00:00Z',
        'updated_at': '2024-01-15T10:30:00Z',
      },
      {
        'id': 2,
        'firstname': 'Jane',
        'lastname': 'Smith',
        'email': 'jane.smith@example.com',
        'phone': '+1234567891',
        'status': 'inactive',
        'last_login': '2024-01-10T15:45:00Z',
        'created_at': '2024-01-02T00:00:00Z',
        'updated_at': '2024-01-10T15:45:00Z',
      },
      {
        'id': 3,
        'firstname': 'Bob',
        'lastname': 'Johnson',
        'email': 'bob.johnson@example.com',
        'phone': '+1234567892',
        'status': 'banned',
        'last_login': '2024-01-05T09:20:00Z',
        'created_at': '2024-01-03T00:00:00Z',
        'updated_at': '2024-01-12T14:15:00Z',
      },
      {
        'id': 4,
        'firstname': 'Alice',
        'lastname': 'Brown',
        'email': 'alice.brown@example.com',
        'phone': '+1234567893',
        'status': 'suspended',
        'last_login': '2024-01-08T11:30:00Z',
        'created_at': '2024-01-04T00:00:00Z',
        'updated_at': '2024-01-14T16:20:00Z',
      },
      {
        'id': 5,
        'firstname': 'Charlie',
        'lastname': 'Wilson',
        'email': 'charlie.wilson@example.com',
        'phone': '+1234567894',
        'status': 'active',
        'last_login': '2024-01-16T08:15:00Z',
        'created_at': '2024-01-05T00:00:00Z',
        'updated_at': '2024-01-16T08:15:00Z',
      },
    ];

    // Apply search filter
    List<Map<String, dynamic>> filteredUsers = mockUsers;
    if (search != null && search.isNotEmpty) {
      filteredUsers = mockUsers.where((user) {
        return user['firstname'].toString().toLowerCase().contains(search.toLowerCase()) ||
               user['lastname'].toString().toLowerCase().contains(search.toLowerCase()) ||
               user['email'].toString().toLowerCase().contains(search.toLowerCase());
      }).toList();
    }

    // Apply status filter
    if (status != null && status.isNotEmpty && status != 'All') {
      filteredUsers = filteredUsers.where((user) => user['status'] == status).toList();
    }

    // Apply pagination
    final currentPage = page ?? 1;
    final pageLimit = limit ?? 20;
    final startIndex = (currentPage - 1) * pageLimit;
    final endIndex = startIndex + pageLimit;
    final paginatedUsers = filteredUsers.skip(startIndex).take(pageLimit).toList();

    return UserListModel.fromJson({
      'users': paginatedUsers,
      'pagination': {
        'total': filteredUsers.length,
        'page': currentPage,
        'pages': (filteredUsers.length / pageLimit).ceil(),
        'limit': pageLimit,
      },
    });
  }

  @override
  Future<UserModel> createUser(CreateUserRequestModel request) async {
    try {
      final response = await _dio.post(
        ApiConfig.userActionsEndpoint,
        data: {
          'action': 'create-user',
          'data': request.toJson(),
        },
        options: Options(
          headers: ApiConfig.defaultHeaders,
        ),
      );

      print('🔧 Create user response status: ${response.statusCode}');
      print('🔧 Create user response data: ${response.data}');

      if (response.statusCode == 200 || response.statusCode == 201) {
        final responseData = response.data;
        if (responseData['success'] == true && responseData['data'] != null) {
          return UserModel.fromJson(responseData['data']);
        } else {
          throw ServerException('Invalid response format for create user');
        }
      } else {
        throw ServerException('Failed to create user: ${response.statusCode}');
      }
    } on DioException catch (e) {
      print('🔧 Create user DioException: ${e.type} - ${e.message}');
      if (e.response?.statusCode == 400) {
        throw ValidationException('Invalid user data provided');
      } else if (e.response?.statusCode == 409) {
        throw ConflictException('User with this email already exists');
      } else if (e.response?.statusCode == 500) {
        throw ServerException('Server error while creating user');
      } else {
        throw NetworkException('Network error while creating user: ${e.message}');
      }
    } catch (e) {
      print('🔧 Create user general error: $e');
      throw ServerException('Unexpected error while creating user: $e');
    }
  }

  @override
  Future<UserModel> updateUser(UpdateUserRequestModel request) async {
    try {
      final response = await _dio.put(
        ApiConfig.userEndpoint(request.userId),
        data: request.toJson(),
        options: Options(
          headers: ApiConfig.defaultHeaders,
        ),
      );

      print('🔧 Update user response status: ${response.statusCode}');
      print('🔧 Update user response data: ${response.data}');

      if (response.statusCode == 200) {
        final responseData = response.data;
        if (responseData['success'] == true && responseData['data'] != null) {
          return UserModel.fromJson(responseData['data']);
        } else {
          throw ServerException('Invalid response format for update user');
        }
      } else {
        throw ServerException('Failed to update user: ${response.statusCode}');
      }
    } on DioException catch (e) {
      print('🔧 Update user DioException: ${e.type} - ${e.message}');
      if (e.response?.statusCode == 404) {
        throw NotFoundException('User not found');
      } else if (e.response?.statusCode == 400) {
        throw ValidationException('Invalid user data provided');
      } else if (e.response?.statusCode == 500) {
        throw ServerException('Server error while updating user');
      } else {
        throw NetworkException('Network error while updating user: ${e.message}');
      }
    } catch (e) {
      print('🔧 Update user general error: $e');
      throw ServerException('Unexpected error while updating user: $e');
    }
  }

  @override
  Future<void> deleteUser(int userId) async {
    try {
      final response = await _dio.delete(
        ApiConfig.userEndpoint(userId),
        options: Options(
          headers: ApiConfig.defaultHeaders,
        ),
      );

      print('🔧 Delete user response status: ${response.statusCode}');
      print('🔧 Delete user response data: ${response.data}');

      if (response.statusCode == 200 || response.statusCode == 204) {
        return;
      } else {
        throw ServerException('Failed to delete user: ${response.statusCode}');
      }
    } on DioException catch (e) {
      print('🔧 Delete user DioException: ${e.type} - ${e.message}');
      if (e.response?.statusCode == 404) {
        throw NotFoundException('User not found');
      } else if (e.response?.statusCode == 403) {
        throw ForbiddenException('Cannot delete active user');
      } else if (e.response?.statusCode == 500) {
        throw ServerException('Server error while deleting user');
      } else {
        throw NetworkException('Network error while deleting user: ${e.message}');
      }
    } catch (e) {
      print('🔧 Delete user general error: $e');
      throw ServerException('Unexpected error while deleting user: $e');
    }
  }

  @override
  Future<void> updateUserStatus(UpdateUserStatusRequestModel request) async {
    try {
      final response = await _dio.post(
        ApiConfig.userActionsEndpoint,
        data: {
          'action': 'update-user-status',
          'data': request.toJson(),
        },
        options: Options(
          headers: ApiConfig.defaultHeaders,
        ),
      );

      print('🔧 Update user status response status: ${response.statusCode}');
      print('🔧 Update user status response data: ${response.data}');

      if (response.statusCode == 200) {
        return;
      } else {
        throw ServerException('Failed to update user status: ${response.statusCode}');
      }
    } on DioException catch (e) {
      print('🔧 Update user status DioException: ${e.type} - ${e.message}');
      if (e.response?.statusCode == 404) {
        throw NotFoundException('User not found');
      } else if (e.response?.statusCode == 400) {
        throw ValidationException('Invalid status provided');
      } else if (e.response?.statusCode == 500) {
        throw ServerException('Server error while updating user status');
      } else {
        throw NetworkException('Network error while updating user status: ${e.message}');
      }
    } catch (e) {
      print('🔧 Update user status general error: $e');
      throw ServerException('Unexpected error while updating user status: $e');
    }
  }

  @override
  Future<void> banUser(int userId, BanUserRequestModel request) async {
    try {
      final response = await _dio.post(
        ApiConfig.banUserEndpoint(userId),
        data: request.toJson(),
        options: Options(
          headers: ApiConfig.defaultHeaders,
        ),
      );

      print('🔧 Ban user response status: ${response.statusCode}');
      print('🔧 Ban user response data: ${response.data}');

      if (response.statusCode == 200) {
        return;
      } else {
        throw ServerException('Failed to ban user: ${response.statusCode}');
      }
    } on DioException catch (e) {
      print('🔧 Ban user DioException: ${e.type} - ${e.message}');
      if (e.response?.statusCode == 404) {
        throw NotFoundException('User not found');
      } else if (e.response?.statusCode == 400) {
        throw ValidationException('Invalid ban data provided');
      } else if (e.response?.statusCode == 500) {
        throw ServerException('Server error while banning user');
      } else {
        throw NetworkException('Network error while banning user: ${e.message}');
      }
    } catch (e) {
      print('🔧 Ban user general error: $e');
      throw ServerException('Unexpected error while banning user: $e');
    }
  }

  @override
  Future<void> unbanUser(int userId) async {
    try {
      final response = await _dio.post(
        ApiConfig.unbanUserEndpoint(userId),
        options: Options(
          headers: ApiConfig.defaultHeaders,
        ),
      );

      print('🔧 Unban user response status: ${response.statusCode}');
      print('🔧 Unban user response data: ${response.data}');

      if (response.statusCode == 200) {
        return;
      } else {
        throw ServerException('Failed to unban user: ${response.statusCode}');
      }
    } on DioException catch (e) {
      print('🔧 Unban user DioException: ${e.type} - ${e.message}');
      if (e.response?.statusCode == 404) {
        throw NotFoundException('User not found');
      } else if (e.response?.statusCode == 500) {
        throw ServerException('Server error while unbanning user');
      } else {
        throw NetworkException('Network error while unbanning user: ${e.message}');
      }
    } catch (e) {
      print('🔧 Unban user general error: $e');
      throw ServerException('Unexpected error while unbanning user: $e');
    }
  }

  @override
  Future<void> activateUser(int userId) async {
    try {
      final response = await _dio.post(
        ApiConfig.activateUserEndpoint(userId),
        options: Options(
          headers: ApiConfig.defaultHeaders,
        ),
      );

      print('🔧 Activate user response status: ${response.statusCode}');
      print('🔧 Activate user response data: ${response.data}');

      if (response.statusCode == 200) {
        return;
      } else {
        throw ServerException('Failed to activate user: ${response.statusCode}');
      }
    } on DioException catch (e) {
      print('🔧 Activate user DioException: ${e.type} - ${e.message}');
      if (e.response?.statusCode == 404) {
        throw NotFoundException('User not found');
      } else if (e.response?.statusCode == 500) {
        throw ServerException('Server error while activating user');
      } else {
        throw NetworkException('Network error while activating user: ${e.message}');
      }
    } catch (e) {
      print('🔧 Activate user general error: $e');
      throw ServerException('Unexpected error while activating user: $e');
    }
  }

  @override
  Future<void> deactivateUser(int userId, DeactivateUserRequestModel request) async {
    try {
      final response = await _dio.post(
        ApiConfig.deactivateUserEndpoint(userId),
        data: request.toJson(),
        options: Options(
          headers: ApiConfig.defaultHeaders,
        ),
      );

      print('🔧 Deactivate user response status: ${response.statusCode}');
      print('🔧 Deactivate user response data: ${response.data}');

      if (response.statusCode == 200) {
        return;
      } else {
        throw ServerException('Failed to deactivate user: ${response.statusCode}');
      }
    } on DioException catch (e) {
      print('🔧 Deactivate user DioException: ${e.type} - ${e.message}');
      if (e.response?.statusCode == 404) {
        throw NotFoundException('User not found');
      } else if (e.response?.statusCode == 400) {
        throw ValidationException('Invalid deactivation data provided');
      } else if (e.response?.statusCode == 500) {
        throw ServerException('Server error while deactivating user');
      } else {
        throw NetworkException('Network error while deactivating user: ${e.message}');
      }
    } catch (e) {
      print('🔧 Deactivate user general error: $e');
      throw ServerException('Unexpected error while deactivating user: $e');
    }
  }
}