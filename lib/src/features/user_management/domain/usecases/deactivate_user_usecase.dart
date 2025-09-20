import 'package:y_chat_admin/src/features/user_management/domain/entities/user_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:y_chat_admin/src/features/user_management/domain/repositories/user_repository.dart';
import 'package:y_chat_admin/src/shared/models/failure.dart';

class DeactivateUserUseCase {
  final UserRepository _repository;

  DeactivateUserUseCase(this._repository);

  Future<Either<Failure, UserActionResponse>> call({
    required int userId,
    required String reason,
  }) async {
    return await _repository.deactivateUser(
      userId: userId,
      reason: reason,
    );
  }
}
