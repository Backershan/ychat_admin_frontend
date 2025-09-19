import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/app_entity.dart';
import '../repositories/app_repository.dart';

class UpdateAppUseCase {
  final AppRepository _repository;

  UpdateAppUseCase({required AppRepository repository}) : _repository = repository;

  Future<Either<Failure, AppEntity>> call({
    required int appId,
    required String name,
    required String description,
  }) async {
    final request = UpdateAppRequest(
      appId: appId,
      name: name,
      description: description,
    );
    
    return await _repository.updateApp(request);
  }
}
