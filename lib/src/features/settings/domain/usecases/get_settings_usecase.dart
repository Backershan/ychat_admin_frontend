import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/settings_entity.dart';
import '../repositories/settings_repository.dart';

class GetSettingsUseCase {
  final SettingsRepository _repository;

  GetSettingsUseCase({required SettingsRepository repository})
      : _repository = repository;

  Future<Either<Failure, SettingsEntity>> call() async {
    return await _repository.getSettings();
  }
}
