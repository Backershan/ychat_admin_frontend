import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../repositories/user_repository.dart';

class DeleteUserUseCase {
  final UserRepository _repository;

  DeleteUserUseCase({required UserRepository repository}) : _repository = repository;

  Future<Either<Failure, void>> call({
    required String userId,
  }) async {
    print('🔧 DeleteUserUseCase: called with userId: $userId');
    
    final result = await _repository.deleteUser(userId);
    
    print('🔧 DeleteUserUseCase: Repository result: $result');
    
    return result;
  }
}
