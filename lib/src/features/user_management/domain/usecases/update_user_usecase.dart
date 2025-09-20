import 'package:dartz/dartz.dart';
import 'package:y_chat_admin/src/features/user_management/domain/entities/user_entity.dart';
import 'package:y_chat_admin/src/features/user_management/domain/repositories/user_repository.dart';
import 'package:y_chat_admin/src/shared/models/failure.dart';

class UpdateUserUseCase {
  final UserRepository _repository;

  UpdateUserUseCase(this._repository);

  Future<Either<Failure, UserActionResponse>> call({
    required int userId,
    String? firstname,
    String? lastname,
    String? email,
    String? phone,
    String? role,
  }) async {
    return await _repository.updateUser(
      userId: userId,
      firstname: firstname,
      lastname: lastname,
      email: email,
      phone: phone,
      role: role,
    );
  }
}
