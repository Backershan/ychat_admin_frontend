import 'package:y_chat_admin/src/features/user_management/domain/entities/user_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:y_chat_admin/src/features/user_management/domain/repositories/user_repository.dart';
import 'package:y_chat_admin/src/shared/models/failure.dart';

class BanUserUseCase {
  final UserRepository _repository;

  BanUserUseCase(this._repository);

  Future<Either<Failure, UserActionResponse>> call({
    required int userId,
    required String reason,
    required String banType,
  }) async {
    return await _repository.banUser(
      userId: userId,
      reason: reason,
      banType: banType,
    );
  }
}
