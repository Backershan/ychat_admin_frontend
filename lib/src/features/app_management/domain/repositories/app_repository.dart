import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/app_entity.dart';

abstract class AppRepository {
  Future<Either<Failure, AppListEntity>> getApps();
  Future<Either<Failure, AppEntity>> createApp(CreateAppRequest request);
  Future<Either<Failure, AppEntity>> updateApp(UpdateAppRequest request);
  Future<Either<Failure, void>> deleteApp(DeleteAppRequest request);
}
