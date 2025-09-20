import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/utils/logger.dart';
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
          iconUrl: app.iconUrl,
          category: app.category,
          description: app.description,
          isActive: app.isActive,
          isIntegrated: app.isIntegrated,
          version: app.version,
          permissions: app.permissions,
          integrationConfig: app.integrationConfig,
          createdAt: app.createdAt,
          updatedAt: app.updatedAt,
        )).toList(),
        pagination: PaginationEntity(
          total: appListModel.pagination.total,
          page: appListModel.pagination.page,
          pages: appListModel.pagination.pages,
          limit: appListModel.pagination.limit,
        ),
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
    Logger.debug('🔧 AppRepositoryImpl: createApp called with request: $request');
    
    try {
      final requestModel = CreateAppRequestModel(
        name: request.name,
        appKey: request.appKey,
        iconUrl: request.iconUrl,
        category: request.category,
        description: request.description,
        isActive: request.isActive,
        isIntegrated: request.isIntegrated,
        version: request.version,
        permissions: request.permissions,
        integrationConfig: request.integrationConfig,
      );
      
      Logger.debug('🔧 AppRepositoryImpl: Created requestModel: $requestModel');
      Logger.debug('🔧 AppRepositoryImpl: Calling remoteDataSource.createApp...');
      
      final appModel = await _remoteDataSource.createApp(requestModel);
      
      Logger.debug('🔧 AppRepositoryImpl: Received appModel from remoteDataSource: $appModel');
      
      final appEntity = AppEntity(
        id: appModel.id,
        name: appModel.name,
        appKey: appModel.appKey,
        iconUrl: appModel.iconUrl,
        category: appModel.category,
        description: appModel.description,
        isActive: appModel.isActive,
        isIntegrated: appModel.isIntegrated,
        version: appModel.version,
        permissions: appModel.permissions,
        integrationConfig: appModel.integrationConfig,
        createdAt: appModel.createdAt,
        updatedAt: appModel.updatedAt,
      );
      
      Logger.debug('🔧 AppRepositoryImpl: Created appEntity: $appEntity');
      Logger.debug('🔧 AppRepositoryImpl: Returning Right(appEntity)');
      
      return Right(appEntity);
    } on ServerException catch (e) {
      Logger.debug('🔧 AppRepositoryImpl: ServerException: ${e.message}');
      return Left(ServerFailure(e.message));
    } on NetworkException catch (e) {
      Logger.debug('🔧 AppRepositoryImpl: NetworkException: ${e.message}');
      return Left(NetworkFailure(e.message));
    } on UnauthorizedException catch (e) {
      Logger.debug('🔧 AppRepositoryImpl: UnauthorizedException: ${e.message}');
      return Left(UnauthorizedFailure(e.message));
    } on UnknownException catch (e) {
      Logger.debug('🔧 AppRepositoryImpl: UnknownException: ${e.message}');
      return Left(UnknownFailure(e.message));
    } catch (e) {
      Logger.debug('🔧 AppRepositoryImpl: General exception: $e');
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
        isActive: request.isActive,
        isIntegrated: request.isIntegrated,
        version: request.version,
        permissions: request.permissions,
        integrationConfig: request.integrationConfig,
      );
      
      final appModel = await _remoteDataSource.updateApp(requestModel);
      final appEntity = AppEntity(
        id: appModel.id,
        name: appModel.name,
        appKey: appModel.appKey,
        iconUrl: appModel.iconUrl,
        category: appModel.category,
        description: appModel.description,
        isActive: appModel.isActive,
        isIntegrated: appModel.isIntegrated,
        version: appModel.version,
        permissions: appModel.permissions,
        integrationConfig: appModel.integrationConfig,
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
