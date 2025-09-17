import 'package:dartz/dartz.dart';
import 'package:y_chat_admin/src/features/auth/domain/entities/user_entity.dart';
import 'package:y_chat_admin/src/features/auth/domain/entities/auth_entity.dart';
import 'package:y_chat_admin/src/features/auth/domain/entities/super_admin_response_entity.dart';
import 'package:y_chat_admin/src/features/auth/domain/entities/login_response_entity.dart';
import 'package:y_chat_admin/src/shared/models/failure.dart';

abstract class AuthRepository {
  Future<Either<Failure, LoginResponseEntity>> login({
    required String email,
    required String password,
  });

  Future<Either<Failure, LoginResponseEntity>> register({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
    bool role = false,
  });

  Future<Either<Failure, LoginResponseEntity>> createAdminUser({
    required String username,
    required String email,
    required String password,
    required String firstName,
    required String lastName,
    String? phoneNumber,
    String? department,
    String? position,
  });

  Future<Either<Failure, void>> logout();

  Future<Either<Failure, bool>> isAuthenticated();

  Future<Either<Failure, UserEntity>> getCurrentUser();

  Future<Either<Failure, AuthEntity>> refreshToken();

  Future<Either<Failure, void>> changePassword({
    required String currentPassword,
    required String newPassword,
  });

  Future<Either<Failure, void>> updateProfile({
    String? firstName,
    String? lastName,
    String? phoneNumber,
    String? department,
    String? position,
  });

  Future<Either<Failure, SuperAdminResponseEntity>> registerSuperAdmin({
    String? firstName,
    String? lastName,
    required String email,
    required String password,
  });
}
