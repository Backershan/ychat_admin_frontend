import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/error/exceptions.dart';
import '../../domain/entities/app_entity.dart';
import '../../domain/repositories/app_repository.dart';
import '../datasources/app_remote_datasource.dart';
import '../models/app_model.dart';

class AppRepositoryImpl implements AppRepository {
  final AppRemoteDataSource _remoteDataSource;

  AppRepositoryImpl({required AppRemoteDataSource remoteDataSource})
      : _remoteDataSource = remoteDataSource;

  @override
  Future<Either<Failure, AppListEntity>> getApps() async {
    try {
      final appListModel = await _remoteDataSource.getApps();
      final appListEntity = AppListEntity(
        apps: appListModel.apps.map((app) => AppEntity(
          id: app.id,
          name: app.name,
          appKey: app.appKey,
          category: app.category,
          description: app.description,
          isActive: app.isActive,
          version: app.version,
          createdAt: app.createdAt,
          updatedAt: app.updatedAt,
        )).toList(),
        total: appListModel.total,
        page: appListModel.page,
        pages: appListModel.pages,
        limit: appListModel.limit,
      );
      return Right(appListEntity);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(e.message));
    } on UnauthorizedException catch (e) {
      return Left(UnauthorizedFailure(e.message));
    } on UnknownException catch (e) {
      return Left(UnknownFailure(e.message));
    } catch (e) {
      return Left(UnknownFailure('An unexpected error occurred: $e'));
    }
  }

  @override
  Future<Either<Failure, AppEntity>> createApp(CreateAppRequest request) async {
    print('🔧 AppRepositoryImpl: createApp called with request: $request');
    
    try {
      final requestModel = CreateAppRequestModel(
        name: request.name,
        appKey: request.appKey,
        category: request.category,
        description: request.description,
        isActive: request.isActive,
        version: request.version,
      );
      
      print('🔧 AppRepositoryImpl: Created requestModel: $requestModel');
      print('🔧 AppRepositoryImpl: Calling remoteDataSource.createApp...');
      
      final appModel = await _remoteDataSource.createApp(requestModel);
      
      print('🔧 AppRepositoryImpl: Received appModel from remoteDataSource: $appModel');
      
      final appEntity = AppEntity(
        id: appModel.id,
        name: appModel.name,
        appKey: appModel.appKey,
        category: appModel.category,
        description: appModel.description,
        isActive: appModel.isActive,
        version: appModel.version,
        createdAt: appModel.createdAt,
        updatedAt: appModel.updatedAt,
      );
      
      print('🔧 AppRepositoryImpl: Created appEntity: $appEntity');
      print('🔧 AppRepositoryImpl: Returning Right(appEntity)');
      
      return Right(appEntity);
    } on ServerException catch (e) {
      print('🔧 AppRepositoryImpl: ServerException: ${e.message}');
      return Left(ServerFailure(e.message));
    } on NetworkException catch (e) {
      print('🔧 AppRepositoryImpl: NetworkException: ${e.message}');
      return Left(NetworkFailure(e.message));
    } on UnauthorizedException catch (e) {
      print('🔧 AppRepositoryImpl: UnauthorizedException: ${e.message}');
      return Left(UnauthorizedFailure(e.message));
    } on UnknownException catch (e) {
      print('🔧 AppRepositoryImpl: UnknownException: ${e.message}');
      return Left(UnknownFailure(e.message));
    } catch (e) {
      print('🔧 AppRepositoryImpl: General exception: $e');
      return Left(UnknownFailure('An unexpected error occurred: $e'));
    }
  }

  @override
  Future<Either<Failure, AppEntity>> updateApp(UpdateAppRequest request) async {
    try {
      final requestModel = UpdateAppRequestModel(
        appId: request.appId,
        name: request.name,
        description: request.description,
      );
      
      final appModel = await _remoteDataSource.updateApp(requestModel);
      final appEntity = AppEntity(
        id: appModel.id,
        name: appModel.name,
        appKey: appModel.appKey,
        category: appModel.category,
        description: appModel.description,
        isActive: appModel.isActive,
        version: appModel.version,
        createdAt: appModel.createdAt,
        updatedAt: appModel.updatedAt,
      );
      return Right(appEntity);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(e.message));
    } on UnauthorizedException catch (e) {
      return Left(UnauthorizedFailure(e.message));
    } on UnknownException catch (e) {
      return Left(UnknownFailure(e.message));
    } catch (e) {
      return Left(UnknownFailure('An unexpected error occurred: $e'));
    }
  }

  @override
  Future<Either<Failure, void>> deleteApp(DeleteAppRequest request) async {
    try {
      final requestModel = DeleteAppRequestModel(
        appId: request.appId,
      );
      
      await _remoteDataSource.deleteApp(requestModel);
      return const Right(null);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(e.message));
    } on UnauthorizedException catch (e) {
      return Left(UnauthorizedFailure(e.message));
    } on UnknownException catch (e) {
      return Left(UnknownFailure(e.message));
    } catch (e) {
      return Left(UnknownFailure('An unexpected error occurred: $e'));
    }
  }
}
