import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../repositories/user_repository.dart';

class ActivateUserUseCase {
  final UserRepository _repository;

  ActivateUserUseCase(this._repository);

  Future<Either<Failure, void>> call(int userId) async {
    return await _repository.activateUser(userId);
  }
}
