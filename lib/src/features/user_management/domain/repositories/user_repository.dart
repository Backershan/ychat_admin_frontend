import 'package:dartz/dartz.dart';
import 'package:y_chat_admin/src/features/user_management/domain/entities/user_entity.dart';
import 'package:y_chat_admin/src/shared/models/failure.dart';

abstract class UserRepository {
  Future<Either<Failure, UserListResponse>> getUsers({
    String? search,
    String? status,
    int page = 1,
    int limit = 20,
  });
  
  Future<Either<Failure, UserActionResponse>> createUser({
    required String firstname,
    required String email,
    String? lastname,
    String? phone,
    String? role,
  });
  
  Future<Either<Failure, UserActionResponse>> updateUser({
    required int userId,
    String? firstname,
    String? lastname,
    String? email,
    String? phone,
    String? role,
  });
  
  Future<Either<Failure, UserActionResponse>> deleteUser(int userId);
  
  Future<Either<Failure, UserActionResponse>> updateUserStatus({
    required int userId,
    required String status,
  });
  
  Future<Either<Failure, UserActionResponse>> banUser({
    required int userId,
    required String reason,
    required String banType,
  });
  
  Future<Either<Failure, UserActionResponse>> unbanUser(int userId);
  
  Future<Either<Failure, UserActionResponse>> activateUser(int userId);
  
  Future<Either<Failure, UserActionResponse>> deactivateUser({
    required int userId,
    required String reason,
  });
}
