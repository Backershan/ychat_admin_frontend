import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/user_entity.dart';
import '../repositories/user_repository.dart';

class UpdateUserUseCase {
  final UserRepository _repository;

  UpdateUserUseCase(this._repository);

  Future<Either<Failure, UserEntity>> call({
    required int userId,
    String? firstname,
    String? lastname,
    String? email,
    String? phone,
    String? status,
  }) async {
    final request = UpdateUserRequest(
      userId: userId,
      firstname: firstname,
      lastname: lastname,
      email: email,
      phone: phone,
      status: status,
    );

    return await _repository.updateUser(request);
  }
}
