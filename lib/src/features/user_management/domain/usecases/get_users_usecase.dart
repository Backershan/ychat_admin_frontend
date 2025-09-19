import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/user_entity.dart';
import '../repositories/user_repository.dart';

class GetUsersUseCase {
  final UserRepository _repository;

  GetUsersUseCase(this._repository);

  Future<Either<Failure, UserListEntity>> call({
    String? search,
    String? status,
    int? page,
    int? limit,
  }) async {
    return await _repository.getUsers(
      search: search,
      status: status,
      page: page,
      limit: limit,
    );
  }
}