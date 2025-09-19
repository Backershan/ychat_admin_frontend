import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/user_entity.dart';
import '../repositories/user_repository.dart';

class CreateUserUseCase {
  final UserRepository _repository;

  CreateUserUseCase(this._repository);

  Future<Either<Failure, UserEntity>> call({
    required String firstname,
    required String email,
    String? lastname,
    String? phone,
    String? password,
    String? status,
  }) async {
    final request = CreateUserRequest(
      firstname: firstname,
      email: email,
      lastname: lastname,
      phone: phone,
      password: password,
      status: status ?? 'active',
    );

    return await _repository.createUser(request);
  }
}
