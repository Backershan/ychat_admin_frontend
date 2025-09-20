import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import '../../domain/entities/app_entity.dart';
import '../../domain/usecases/get_apps_usecase.dart';
import '../../domain/usecases/create_app_usecase.dart';
import '../../domain/usecases/update_app_usecase.dart';
import '../../domain/usecases/delete_app_usecase.dart';
import '../../../../core/error/failures.dart';
import 'package:y_chat_admin/src/core/utils/logger.dart';

part 'app_event.dart';
part 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  final GetAppsUseCase _getAppsUseCase;
  final CreateAppUseCase _createAppUseCase;
  final UpdateAppUseCase _updateAppUseCase;
  final DeleteAppUseCase _deleteAppUseCase;

  AppBloc({
    required GetAppsUseCase getAppsUseCase,
    required CreateAppUseCase createAppUseCase,
    required UpdateAppUseCase updateAppUseCase,
    required DeleteAppUseCase deleteAppUseCase,
  })  : _getAppsUseCase = getAppsUseCase,
        _createAppUseCase = createAppUseCase,
        _updateAppUseCase = updateAppUseCase,
        _deleteAppUseCase = deleteAppUseCase,
        super(AppInitial()) {
    on<GetApps>(_onGetApps);
    on<CreateApp>(_onCreateApp);
    on<UpdateApp>(_onUpdateApp);
    on<UpdateAppStatus>(_onUpdateAppStatus);
    on<DeleteApp>(_onDeleteApp);
    on<RefreshApps>(_onRefreshApps);
    on<GetAppAnalytics>(_onGetAppAnalytics);
    on<GetAppsByCategory>(_onGetAppsByCategory);
  }

  Future<void> _onGetApps(
    GetApps event,
    Emitter<AppState> emit,
  ) async {
    Logger.debug('🔧 AppBloc: _onGetApps called');
    emit(AppLoading());

    try {
      Logger.debug('🔧 AppBloc: Calling _getAppsUseCase...');
      final result = await _getAppsUseCase();
      Logger.debug('🔧 AppBloc: Got result from use case: $result');

      result.fold(
        (failure) {
          Logger.debug('🔧 AppBloc: GetApps failed with: ${failure.message}');
          emit(AppError(failure));
        },
        (apps) {
          Logger.debug('🔧 AppBloc: GetApps successful, got ${apps.apps.length} apps');
          emit(AppsLoaded(apps));
        },
      );
    } catch (e) {
      Logger.debug('🔧 AppBloc: GetApps exception: $e');
      emit(AppError(UnknownFailure('An unexpected error occurred: $e')));
    }
  }

  Future<void> _onCreateApp(
    CreateApp event,
    Emitter<AppState> emit,
  ) async {
    Logger.debug('🔧 AppBloc: _onCreateApp called with event: $event');
    emit(AppLoading());

    try {
      final result = await _createAppUseCase(
        name: event.name,
        appKey: event.appKey,
        iconUrl: event.iconUrl,
        category: event.category,
        description: event.description,
        isActive: event.isActive,
        isIntegrated: event.isIntegrated,
        version: event.version,
        permissions: event.permissions,
        integrationConfig: event.integrationConfig,
      );

      Logger.debug('🔧 AppBloc: CreateAppUseCase result: $result');

      result.fold(
        (failure) {
          Logger.debug('🔧 AppBloc: CreateApp failed with: ${failure.message}');
          emit(AppError(failure));
        },
        (app) {
          Logger.debug('🔧 AppBloc: CreateApp successful, created app: $app');
          emit(AppCreated(app));
        },
      );
    } catch (e) {
      Logger.debug('🔧 AppBloc: CreateApp exception: $e');
      emit(AppError(UnknownFailure('An unexpected error occurred: $e')));
    }
  }

  Future<void> _onUpdateApp(
    UpdateApp event,
    Emitter<AppState> emit,
  ) async {
    emit(AppLoading());

    final result = await _updateAppUseCase(
      appId: event.appId,
      name: event.name ?? '',
      description: event.description ?? '',
    );

    result.fold(
      (failure) => emit(AppError(failure)),
      (app) => emit(AppUpdated(app)),
    );
  }

  Future<void> _onDeleteApp(
    DeleteApp event,
    Emitter<AppState> emit,
  ) async {
    emit(AppLoading());

    final result = await _deleteAppUseCase(appId: event.appId);

    result.fold(
      (failure) => emit(AppError(failure)),
      (_) => emit(AppDeleted(event.appId)),
    );
  }

  Future<void> _onUpdateAppStatus(
    UpdateAppStatus event,
    Emitter<AppState> emit,
  ) async {
    emit(AppLoading());

    final result = await _updateAppUseCase(
      appId: event.appId,
      name: '',
      description: '',
    );

    result.fold(
      (failure) => emit(AppError(failure)),
      (app) => emit(AppStatusUpdated(app)),
    );
  }

  Future<void> _onGetAppAnalytics(
    GetAppAnalytics event,
    Emitter<AppState> emit,
  ) async {
    emit(AppLoading());

    // TODO: Implement analytics use case
    // For now, emit empty analytics
    emit(const AppAnalyticsLoaded(AppAnalyticsEntity(
      categories: [],
      totalApps: 0,
      activeApps: 0,
      integratedApps: 0,
    )));
  }

  Future<void> _onGetAppsByCategory(
    GetAppsByCategory event,
    Emitter<AppState> emit,
  ) async {
    emit(AppLoading());

    // TODO: Implement get apps by category use case
    // For now, just get all apps
    add(const GetApps());
  }

  Future<void> _onRefreshApps(
    RefreshApps event,
    Emitter<AppState> emit,
  ) async {
    add(const GetApps());
  }
}
