import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/user_entity.dart';
import '../repositories/user_repository.dart';

class UpdateUserStatusUseCase {
  final UserRepository _repository;

  UpdateUserStatusUseCase({required UserRepository repository}) : _repository = repository;

  Future<Either<Failure, UserEntity>> call({
    required String userId,
    required UserStatus status,
  }) async {
    print('🔧 UpdateUserStatusUseCase: called with params:');
    print('  userId: $userId');
    print('  status: $status');
    
    final request = UpdateUserStatusRequest(
      userId: userId,
      status: status,
    );
    
    print('🔧 UpdateUserStatusUseCase: Created request: $request');
    
    final result = await _repository.updateUserStatus(request);
    
    print('🔧 UpdateUserStatusUseCase: Repository result: $result');
    
    return result;
  }
}
