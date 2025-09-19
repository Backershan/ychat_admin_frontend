import 'package:dartz/dartz.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failures.dart';
import '../../domain/entities/user_entity.dart';
import '../../domain/repositories/user_repository.dart';
import '../datasources/user_remote_datasource.dart';
import '../models/user_model.dart';

class UserRepositoryImpl implements UserRepository {
  final UserRemoteDataSource _remoteDataSource;

  UserRepositoryImpl({required UserRemoteDataSource remoteDataSource})
      : _remoteDataSource = remoteDataSource;

  @override
  Future<Either<Failure, UserListEntity>> getUsers({
    int page = 1,
    int limit = 20,
    String? search,
    UserStatus? status,
  }) async {
    try {
      print('🔧 UserRepositoryImpl: getUsers called');
      
      final userListModel = await _remoteDataSource.getUsers(
        page: page,
        limit: limit,
        search: search,
        status: status,
      );
      
      print('🔧 UserRepositoryImpl: Received userListModel: ${userListModel.users.length} users');
      
      final userListEntity = UserListEntity(
        users: userListModel.users.map((model) => _modelToEntity(model)).toList(),
        total: userListModel.total,
        page: userListModel.page,
        limit: userListModel.limit,
      );
      
      print('🔧 UserRepositoryImpl: Created userListEntity with ${userListEntity.users.length} users');
      
      return Right(userListEntity);
    } on ServerException catch (e) {
      print('🔧 UserRepositoryImpl: ServerException: ${e.message}');
      return Left(ServerFailure(e.message));
    } on NetworkException catch (e) {
      print('🔧 UserRepositoryImpl: NetworkException: ${e.message}');
      return Left(NetworkFailure(e.message));
    } on UnauthorizedException catch (e) {
      print('🔧 UserRepositoryImpl: UnauthorizedException: ${e.message}');
      return Left(UnauthorizedFailure(e.message));
    } on UnknownException catch (e) {
      print('🔧 UserRepositoryImpl: UnknownException: ${e.message}');
      return Left(UnknownFailure('An unexpected error occurred: $e'));
    } catch (e) {
      print('🔧 UserRepositoryImpl: General exception: $e');
      return Left(UnknownFailure('An unexpected error occurred: $e'));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> getUserById(String userId) async {
    try {
      print('🔧 UserRepositoryImpl: getUserById called with userId: $userId');
      
      final userModel = await _remoteDataSource.getUserById(userId);
      
      print('🔧 UserRepositoryImpl: Received userModel: $userModel');
      
      final userEntity = _modelToEntity(userModel);
      
      print('🔧 UserRepositoryImpl: Created userEntity: $userEntity');
      
      return Right(userEntity);
    } on ServerException catch (e) {
      print('🔧 UserRepositoryImpl: ServerException: ${e.message}');
      return Left(ServerFailure(e.message));
    } on NetworkException catch (e) {
      print('🔧 UserRepositoryImpl: NetworkException: ${e.message}');
      return Left(NetworkFailure(e.message));
    } on UnauthorizedException catch (e) {
      print('🔧 UserRepositoryImpl: UnauthorizedException: ${e.message}');
      return Left(UnauthorizedFailure(e.message));
    } on UnknownException catch (e) {
      print('🔧 UserRepositoryImpl: UnknownException: ${e.message}');
      return Left(UnknownFailure('An unexpected error occurred: $e'));
    } catch (e) {
      print('🔧 UserRepositoryImpl: General exception: $e');
      return Left(UnknownFailure('An unexpected error occurred: $e'));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> updateUserStatus(UpdateUserStatusRequest request) async {
    try {
      print('🔧 UserRepositoryImpl: updateUserStatus called with request: $request');
      
      final requestModel = UpdateUserStatusRequestModel(
        userId: request.userId,
        status: request.status,
      );
      
      print('🔧 UserRepositoryImpl: Created requestModel: $requestModel');
      
      final userModel = await _remoteDataSource.updateUserStatus(requestModel);
      
      print('🔧 UserRepositoryImpl: Received updated userModel: $userModel');
      
      final userEntity = _modelToEntity(userModel);
      
      print('🔧 UserRepositoryImpl: Created userEntity: $userEntity');
      
      return Right(userEntity);
    } on ServerException catch (e) {
      print('🔧 UserRepositoryImpl: ServerException: ${e.message}');
      return Left(ServerFailure(e.message));
    } on NetworkException catch (e) {
      print('🔧 UserRepositoryImpl: NetworkException: ${e.message}');
      return Left(NetworkFailure(e.message));
    } on UnauthorizedException catch (e) {
      print('🔧 UserRepositoryImpl: UnauthorizedException: ${e.message}');
      return Left(UnauthorizedFailure(e.message));
    } on UnknownException catch (e) {
      print('🔧 UserRepositoryImpl: UnknownException: ${e.message}');
      return Left(UnknownFailure('An unexpected error occurred: $e'));
    } catch (e) {
      print('🔧 UserRepositoryImpl: General exception: $e');
      return Left(UnknownFailure('An unexpected error occurred: $e'));
    }
  }

  @override
  Future<Either<Failure, void>> deleteUser(String userId) async {
    try {
      print('🔧 UserRepositoryImpl: deleteUser called with userId: $userId');
      
      await _remoteDataSource.deleteUser(userId);
      
      print('🔧 UserRepositoryImpl: User deleted successfully');
      
      return const Right(null);
    } on ServerException catch (e) {
      print('🔧 UserRepositoryImpl: ServerException: ${e.message}');
      return Left(ServerFailure(e.message));
    } on NetworkException catch (e) {
      print('🔧 UserRepositoryImpl: NetworkException: ${e.message}');
      return Left(NetworkFailure(e.message));
    } on UnauthorizedException catch (e) {
      print('🔧 UserRepositoryImpl: UnauthorizedException: ${e.message}');
      return Left(UnauthorizedFailure(e.message));
    } on UnknownException catch (e) {
      print('🔧 UserRepositoryImpl: UnknownException: ${e.message}');
      return Left(UnknownFailure('An unexpected error occurred: $e'));
    } catch (e) {
      print('🔧 UserRepositoryImpl: General exception: $e');
      return Left(UnknownFailure('An unexpected error occurred: $e'));
    }
  }

  UserEntity _modelToEntity(UserModel model) {
    return UserEntity(
      id: model.id,
      name: model.name,
      phone: model.phone,
      uid: model.uid,
      email: model.email,
      status: model.status,
      ipAddress: model.ipAddress,
      createdAt: model.createdAt,
      updatedAt: model.updatedAt,
      avatar: model.avatar,
      role: model.role,
      lastLoginAt: model.lastLoginAt,
      deviceInfo: model.deviceInfo,
    );
  }
}
