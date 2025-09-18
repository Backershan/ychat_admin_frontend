import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/profile_entity.dart';
import '../repositories/profile_repository.dart';

class ChangePasswordUseCase {
  final ProfileRepository _repository;

  ChangePasswordUseCase(this._repository);

  Future<Either<Failure, void>> call(ChangePasswordRequest request) async {
    try {
      await _repository.changePassword(request);
      return const Right(null);
    } catch (e) {
      if (e is Failure) {
        return Left(e);
      }
      return Left(UnknownFailure(e.toString()));
    }
  }
}
