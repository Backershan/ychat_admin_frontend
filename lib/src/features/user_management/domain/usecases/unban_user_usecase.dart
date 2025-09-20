import 'package:y_chat_admin/src/features/user_management/domain/entities/user_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:y_chat_admin/src/features/user_management/domain/repositories/user_repository.dart';
import 'package:y_chat_admin/src/shared/models/failure.dart';

class UnbanUserUseCase {
  final UserRepository _repository;

  UnbanUserUseCase(this._repository);

  Future<Either<Failure, UserActionResponse>> call(int userId) async {
    return await _repository.unbanUser(userId);
  }
}
