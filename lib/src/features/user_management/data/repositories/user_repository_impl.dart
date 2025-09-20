import 'package:dartz/dartz.dart';
import 'package:y_chat_admin/src/features/user_management/data/datasources/user_remote_datasource.dart';
import 'package:y_chat_admin/src/features/user_management/domain/entities/user_entity.dart';
import 'package:y_chat_admin/src/features/user_management/domain/repositories/user_repository.dart';
import 'package:y_chat_admin/src/shared/models/failure.dart';

class UserRepositoryImpl implements UserRepository {
  final UserRemoteDataSource _remoteDataSource;

  UserRepositoryImpl(this._remoteDataSource);

  @override
  Future<Either<Failure, UserListResponse>> getUsers({
    String? search,
    String? status,
    int page = 1,
    int limit = 20,
  }) async {
    try {
      final result = await _remoteDataSource.getUsers(
        search: search,
        status: status,
        page: page,
        limit: limit,
      );
      return Right(result);
    } on Failure catch (failure) {
      return Left(failure);
    } catch (e) {
      return Left(UnknownFailure(message: 'Unexpected error: $e'));
    }
  }

  @override
  Future<Either<Failure, UserActionResponse>> createUser({
    required String firstname,
    required String email,
    String? lastname,
    String? phone,
    String? role,
  }) async {
    try {
      final result = await _remoteDataSource.createUser(
        firstname: firstname,
        email: email,
        lastname: lastname,
        phone: phone,
        role: role,
      );
      return Right(result);
    } on Failure catch (failure) {
      return Left(failure);
    } catch (e) {
      return Left(UnknownFailure(message: 'Unexpected error: $e'));
    }
  }

  @override
  Future<Either<Failure, UserActionResponse>> updateUser({
    required int userId,
    String? firstname,
    String? lastname,
    String? email,
    String? phone,
    String? role,
  }) async {
    try {
      final result = await _remoteDataSource.updateUser(
        userId: userId,
        firstname: firstname,
        lastname: lastname,
        email: email,
        phone: phone,
        role: role,
      );
      return Right(result);
    } on Failure catch (failure) {
      return Left(failure);
    } catch (e) {
      return Left(UnknownFailure(message: 'Unexpected error: $e'));
    }
  }

  @override
  Future<Either<Failure, UserActionResponse>> deleteUser(int userId) async {
    try {
      final result = await _remoteDataSource.deleteUser(userId);
      return Right(result);
    } on Failure catch (failure) {
      return Left(failure);
    } catch (e) {
      return Left(UnknownFailure(message: 'Unexpected error: $e'));
    }
  }

  @override
  Future<Either<Failure, UserActionResponse>> updateUserStatus({
    required int userId,
    required String status,
  }) async {
    try {
      final result = await _remoteDataSource.updateUserStatus(
        userId: userId,
        status: status,
      );
      return Right(result);
    } on Failure catch (failure) {
      return Left(failure);
    } catch (e) {
      return Left(UnknownFailure(message: 'Unexpected error: $e'));
    }
  }

  @override
  Future<Either<Failure, UserActionResponse>> banUser({
    required int userId,
    required String reason,
    required String banType,
  }) async {
    try {
      final result = await _remoteDataSource.banUser(
        userId: userId,
        reason: reason,
        banType: banType,
      );
      return Right(result);
    } on Failure catch (failure) {
      return Left(failure);
    } catch (e) {
      return Left(UnknownFailure(message: 'Unexpected error: $e'));
    }
  }

  @override
  Future<Either<Failure, UserActionResponse>> unbanUser(int userId) async {
    try {
      final result = await _remoteDataSource.unbanUser(userId);
      return Right(result);
    } on Failure catch (failure) {
      return Left(failure);
    } catch (e) {
      return Left(UnknownFailure(message: 'Unexpected error: $e'));
    }
  }

  @override
  Future<Either<Failure, UserActionResponse>> activateUser(int userId) async {
    try {
      final result = await _remoteDataSource.activateUser(userId);
      return Right(result);
    } on Failure catch (failure) {
      return Left(failure);
    } catch (e) {
      return Left(UnknownFailure(message: 'Unexpected error: $e'));
    }
  }

  @override
  Future<Either<Failure, UserActionResponse>> deactivateUser({
    required int userId,
    required String reason,
  }) async {
    try {
      final result = await _remoteDataSource.deactivateUser(
        userId: userId,
        reason: reason,
      );
      return Right(result);
    } on Failure catch (failure) {
      return Left(failure);
    } catch (e) {
      return Left(UnknownFailure(message: 'Unexpected error: $e'));
    }
  }
}
