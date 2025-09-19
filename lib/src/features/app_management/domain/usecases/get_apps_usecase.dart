import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/app_entity.dart';
import '../repositories/app_repository.dart';

class GetAppsUseCase {
  final AppRepository _repository;

  GetAppsUseCase({required AppRepository repository}) : _repository = repository;

  Future<Either<Failure, AppListEntity>> call() async {
    return await _repository.getApps();
  }
}
