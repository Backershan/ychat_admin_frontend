import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../../domain/entities/dashboard_entity.dart';
import '../../domain/repositories/dashboard_repository.dart';
import '../datasources/dashboard_remote_datasource.dart';
import '../models/dashboard_model.dart';

class DashboardRepositoryImpl implements DashboardRepository {
  final DashboardRemoteDataSource _remoteDataSource;

  DashboardRepositoryImpl({required DashboardRemoteDataSource remoteDataSource})
      : _remoteDataSource = remoteDataSource;

  @override
  Future<Either<Failure, DashboardEntity>> getDashboardData() async {
    try {
      final dashboardModel = await _remoteDataSource.getDashboardData();
      return Right(dashboardModel.toEntity());
    } catch (e) {
      if (e is Failure) {
        return Left(e);
      } else {
        return Left(UnknownFailure('An unexpected error occurred: $e'));
      }
    }
  }
}
