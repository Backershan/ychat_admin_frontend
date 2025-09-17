import 'package:y_chat_admin/src/features/auth/domain/entities/auth_entity.dart';
import 'package:y_chat_admin/src/features/auth/domain/repositories/auth_repository.dart';
import 'package:y_chat_admin/src/shared/models/failure.dart';
import 'package:dartz/dartz.dart';

class RegisterUseCase {
  final AuthRepository _authRepository;

  RegisterUseCase(this._authRepository);

  Future<Either<Failure, AuthEntity>> call({
    required String username,
    required String email,
    required String password,
    required String confirmPassword,
    required String firstName,
    required String lastName,
    String? phoneNumber,
    String? department,
    String? position,
    bool isAdmin = false,
  }) async {
    // Validate password confirmation
    if (password != confirmPassword) {
      return Left(ValidationFailure(
        message: 'Passwords do not match',
        errors: {'password': ['Passwords do not match']},
      ));
    }

    return await _authRepository.register(
      username: username,
      email: email,
      password: password,
      firstName: firstName,
      lastName: lastName,
      phoneNumber: phoneNumber,
      department: department,
      position: position,
    );
  }
}
