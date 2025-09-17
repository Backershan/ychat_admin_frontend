import 'package:y_chat_admin/src/features/auth/domain/entities/auth_entity.dart';
import 'package:y_chat_admin/src/features/auth/domain/repositories/auth_repository.dart';
import 'package:y_chat_admin/src/shared/models/failure.dart';
import 'package:dartz/dartz.dart';

class LoginUseCase {
  final AuthRepository _authRepository;

  LoginUseCase(this._authRepository);

  Future<Either<Failure, AuthEntity>> call({
    required String username,
    required String password,
  }) async {
    return await _authRepository.login(
      username: username,
      password: password,
    );
  }
}
