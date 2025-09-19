import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/user_entity.dart';

abstract class UserRepository {
  Future<Either<Failure, UserListEntity>> getUsers({
    int page = 1,
    int limit = 20,
    String? search,
    UserStatus? status,
  });
  
  Future<Either<Failure, UserEntity>> getUserById(String userId);
  
  Future<Either<Failure, UserEntity>> updateUserStatus(UpdateUserStatusRequest request);
  
  Future<Either<Failure, void>> deleteUser(String userId);
}
