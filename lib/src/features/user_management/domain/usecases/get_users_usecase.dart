import 'package:dartz/dartz.dart';
import 'package:y_chat_admin/src/features/user_management/domain/entities/user_entity.dart';
import 'package:y_chat_admin/src/features/user_management/domain/repositories/user_repository.dart';
import 'package:y_chat_admin/src/shared/models/failure.dart';

class GetUsersUseCase {
  final UserRepository _repository;

  GetUsersUseCase(this._repository);

  Future<Either<Failure, UserListResponse>> call({
    String? search,
    String? status,
    int page = 1,
    int limit = 20,
  }) async {
    return await _repository.getUsers(
      search: search,
      status: status,
      page: page,
      limit: limit,
    );
  }
}
