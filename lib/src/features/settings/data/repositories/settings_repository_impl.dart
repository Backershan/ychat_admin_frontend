import 'package:dartz/dartz.dart';
import 'package:y_chat_admin/src/features/settings/data/models/settings_model.dart';
import '../../../../core/error/failures.dart';
import '../../domain/entities/settings_entity.dart';
import '../../domain/repositories/settings_repository.dart';
import '../datasources/settings_remote_datasource.dart';

class SettingsRepositoryImpl implements SettingsRepository {
  final SettingsRemoteDataSource _remoteDataSource;

  SettingsRepositoryImpl({required SettingsRemoteDataSource remoteDataSource})
      : _remoteDataSource = remoteDataSource;

  @override
  Future<Either<Failure, SettingsEntity>> getSettings() async {
    try {
      final settingsModel = await _remoteDataSource.getSettings();
      return Right(settingsModel.toEntity());
    } catch (e) {
      if (e is Failure) {
        return Left(e);
      } else {
        return Left(UnknownFailure('An unexpected error occurred: $e'));
      }
    }
  }

  @override
  Future<Either<Failure, SettingsEntity>> updateSettings(SettingsEntity settings) async {
    try {
      final settingsModel = await _remoteDataSource.updateSettings(settings);
      return Right(settingsModel.toEntity());
    } catch (e) {
      if (e is Failure) {
        return Left(e);
      } else {
        return Left(UnknownFailure('An unexpected error occurred: $e'));
      }
    }
  }
}
