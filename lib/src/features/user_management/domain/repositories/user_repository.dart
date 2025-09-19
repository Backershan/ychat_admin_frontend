import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/user_entity.dart';

abstract class UserRepository {
  Future<Either<Failure, UserListEntity>> getUsers({
    String? search,
    String? status,
    int? page,
    int? limit,
  });
  
  Future<Either<Failure, UserEntity>> createUser(CreateUserRequest request);
  Future<Either<Failure, UserEntity>> updateUser(UpdateUserRequest request);
  Future<Either<Failure, void>> deleteUser(int userId);
  Future<Either<Failure, void>> updateUserStatus(UpdateUserStatusRequest request);
  Future<Either<Failure, void>> banUser(int userId, BanUserRequest request);
  Future<Either<Failure, void>> unbanUser(int userId);
  Future<Either<Failure, void>> activateUser(int userId);
  Future<Either<Failure, void>> deactivateUser(int userId, DeactivateUserRequest request);
}