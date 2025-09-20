import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/app_entity.dart';
import '../repositories/app_repository.dart';
import 'package:y_chat_admin/src/core/utils/logger.dart';

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
    Logger.debug('🔧 CreateAppUseCase: called with params:');
    Logger.debug('  name: $name');
    Logger.debug('  appKey: $appKey');
    Logger.debug('  iconUrl: $iconUrl');
    Logger.debug('  category: $category');
    Logger.debug('  description: $description');
    Logger.debug('  isActive: $isActive');
    Logger.debug('  isIntegrated: $isIntegrated');
    Logger.debug('  version: $version');
    Logger.debug('  permissions: $permissions');
    Logger.debug('  integrationConfig: $integrationConfig');
    
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
    
    Logger.debug('🔧 CreateAppUseCase: Created request: $request');
    Logger.debug('🔧 CreateAppUseCase: Calling repository.createApp...');
    
    final result = await _repository.createApp(request);
    
    Logger.debug('🔧 CreateAppUseCase: Repository result: $result');
    
    return result;
  }
}
