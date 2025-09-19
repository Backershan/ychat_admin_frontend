import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/app_entity.dart';
import '../repositories/app_repository.dart';

class DeleteAppUseCase {
  final AppRepository _repository;

  DeleteAppUseCase({required AppRepository repository}) : _repository = repository;

  Future<Either<Failure, void>> call({required int appId}) async {
    final request = DeleteAppRequest(appId: appId);
    
    return await _repository.deleteApp(request);
  }
}
