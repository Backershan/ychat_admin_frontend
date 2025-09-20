import 'package:dartz/dartz.dart';
import 'package:y_chat_admin/src/features/user_management/domain/entities/user_entity.dart';
import 'package:y_chat_admin/src/features/user_management/domain/repositories/user_repository.dart';
import 'package:y_chat_admin/src/shared/models/failure.dart';

class CreateUserUseCase {
  final UserRepository _repository;

  CreateUserUseCase(this._repository);

  Future<Either<Failure, UserActionResponse>> call({
    required String firstname,
    required String email,
    String? lastname,
    String? phone,
    String? role,
  }) async {
    return await _repository.createUser(
      firstname: firstname,
      email: email,
      lastname: lastname,
      phone: phone,
      role: role,
    );
  }
}
