import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/profile_entity.dart';
import '../repositories/profile_repository.dart';

class UpdateProfileUseCase {
  final ProfileRepository _repository;

  UpdateProfileUseCase(this._repository);

  Future<Either<Failure, ProfileEntity>> call(UpdateProfileRequest request) async {
    try {
      final profile = await _repository.updateProfile(request);
      return Right(profile);
    } catch (e) {
      if (e is Failure) {
        return Left(e);
      }
      return Left(UnknownFailure(e.toString()));
    }
  }
}
