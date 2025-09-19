import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/app_entity.dart';
import '../repositories/app_repository.dart';

class CreateAppUseCase {
  final AppRepository _repository;

  CreateAppUseCase({required AppRepository repository}) : _repository = repository;

  Future<Either<Failure, AppEntity>> call({
    required String name,
    required String appKey,
    required String category,
    required String description,
    required bool isActive,
    required String version,
  }) async {
    print('🔧 CreateAppUseCase: called with params:');
    print('  name: $name');
    print('  appKey: $appKey');
    print('  category: $category');
    print('  description: $description');
    print('  isActive: $isActive');
    print('  version: $version');
    
    final request = CreateAppRequest(
      name: name,
      appKey: appKey,
      category: category,
      description: description,
      isActive: isActive,
      version: version,
    );
    
    print('🔧 CreateAppUseCase: Created request: $request');
    print('🔧 CreateAppUseCase: Calling repository.createApp...');
    
    final result = await _repository.createApp(request);
    
    print('🔧 CreateAppUseCase: Repository result: $result');
    
    return result;
  }
}
