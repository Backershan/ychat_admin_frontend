import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/user_entity.dart';
import '../repositories/user_repository.dart';

class DeactivateUserUseCase {
  final UserRepository _repository;

  DeactivateUserUseCase(this._repository);

  Future<Either<Failure, void>> call({
    required int userId,
    required String reason,
  }) async {
    final request = DeactivateUserRequest(
      reason: reason,
    );

    return await _repository.deactivateUser(userId, request);
  }
}
