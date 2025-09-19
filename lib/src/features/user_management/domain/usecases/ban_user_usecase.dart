import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/user_entity.dart';
import '../repositories/user_repository.dart';

class BanUserUseCase {
  final UserRepository _repository;

  BanUserUseCase(this._repository);

  Future<Either<Failure, void>> call({
    required int userId,
    required String reason,
    required String banType,
  }) async {
    final request = BanUserRequest(
      reason: reason,
      banType: banType,
    );

    return await _repository.banUser(userId, request);
  }
}
