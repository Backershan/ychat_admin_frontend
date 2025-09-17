import 'package:y_chat_admin/src/features/auth/domain/entities/super_admin_response_entity.dart';
import 'package:y_chat_admin/src/features/auth/domain/repositories/auth_repository.dart';
import 'package:y_chat_admin/src/shared/models/failure.dart';
import 'package:dartz/dartz.dart';

class RegisterSuperAdminUseCase {
  final AuthRepository _authRepository;

  RegisterSuperAdminUseCase(this._authRepository);

  Future<Either<Failure, SuperAdminResponseEntity>> call({
    required String name,
    required String email,
    required String phone,
    required String password,
    String? location,
  }) async {
    return await _authRepository.registerSuperAdmin(
      name: name,
      email: email,
      phone: phone,
      password: password,
      location: location,
    );
  }
}
