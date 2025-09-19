import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/user_entity.dart';
import '../repositories/user_repository.dart';

class GetUsersUseCase {
  final UserRepository _repository;

  GetUsersUseCase({required UserRepository repository}) : _repository = repository;

  Future<Either<Failure, UserListEntity>> call({
    int page = 1,
    int limit = 20,
    String? search,
    UserStatus? status,
  }) async {
    print('🔧 GetUsersUseCase: called with params:');
    print('  page: $page');
    print('  limit: $limit');
    print('  search: $search');
    print('  status: $status');
    
    final result = await _repository.getUsers(
      page: page,
      limit: limit,
      search: search,
      status: status,
    );
    
    print('🔧 GetUsersUseCase: Repository result: $result');
    
    return result;
  }
}
