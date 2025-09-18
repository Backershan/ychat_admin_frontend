import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/settings_entity.dart';
import '../repositories/settings_repository.dart';

class UpdateSettingsUseCase {
  final SettingsRepository _repository;

  UpdateSettingsUseCase({required SettingsRepository repository})
      : _repository = repository;

  Future<Either<Failure, SettingsEntity>> call(SettingsEntity settings) async {
    return await _repository.updateSettings(settings);
  }
}
