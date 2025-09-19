import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../repositories/user_repository.dart';

class UnbanUserUseCase {
  final UserRepository _repository;

  UnbanUserUseCase(this._repository);

  Future<Either<Failure, void>> call(int userId) async {
    return await _repository.unbanUser(userId);
  }
}
