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
    String? iconUrl,
    required List<String> category,
    required String description,
    required bool isActive,
    required bool isIntegrated,
    required String version,
    required List<String> permissions,
    Map<String, dynamic>? integrationConfig,
  }) async {
    print('🔧 CreateAppUseCase: called with params:');
    print('  name: $name');
    print('  appKey: $appKey');
    print('  iconUrl: $iconUrl');
    print('  category: $category');
    print('  description: $description');
    print('  isActive: $isActive');
    print('  isIntegrated: $isIntegrated');
    print('  version: $version');
    print('  permissions: $permissions');
    print('  integrationConfig: $integrationConfig');
    
    final request = CreateAppRequest(
      name: name,
      appKey: appKey,
      iconUrl: iconUrl,
      category: category,
      description: description,
      isActive: isActive,
      isIntegrated: isIntegrated,
      version: version,
      permissions: permissions,
      integrationConfig: integrationConfig,
    );
    
    print('🔧 CreateAppUseCase: Created request: $request');
    print('🔧 CreateAppUseCase: Calling repository.createApp...');
    
    final result = await _repository.createApp(request);
    
    print('🔧 CreateAppUseCase: Repository result: $result');
    
    return result;
  }
}
