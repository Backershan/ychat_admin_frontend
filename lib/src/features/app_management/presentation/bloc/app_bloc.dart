import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import '../../domain/entities/app_entity.dart';
import '../../domain/usecases/get_apps_usecase.dart';
import '../../domain/usecases/create_app_usecase.dart';
import '../../domain/usecases/update_app_usecase.dart';
import '../../domain/usecases/delete_app_usecase.dart';
import '../../../../core/error/failures.dart';

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
    on<DeleteApp>(_onDeleteApp);
    on<RefreshApps>(_onRefreshApps);
  }

  Future<void> _onGetApps(
    GetApps event,
    Emitter<AppState> emit,
  ) async {
    emit(AppLoading());

    final result = await _getAppsUseCase();

    result.fold(
      (failure) => emit(AppError(failure)),
      (apps) => emit(AppsLoaded(apps)),
    );
  }

  Future<void> _onCreateApp(
    CreateApp event,
    Emitter<AppState> emit,
  ) async {
    print('🔧 AppBloc: _onCreateApp called with event: $event');
    emit(AppLoading());

    try {
      final result = await _createAppUseCase(
        name: event.name,
        appKey: event.appKey,
        category: event.category,
        description: event.description,
        isActive: event.isActive,
        version: event.version,
      );

      print('🔧 AppBloc: CreateAppUseCase result: $result');

      result.fold(
        (failure) {
          print('🔧 AppBloc: CreateApp failed with: ${failure.message}');
          emit(AppError(failure));
        },
        (app) {
          print('🔧 AppBloc: CreateApp successful, created app: $app');
          emit(AppCreated(app));
        },
      );
    } catch (e) {
      print('🔧 AppBloc: CreateApp exception: $e');
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
      name: event.name,
      description: event.description,
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

  Future<void> _onRefreshApps(
    RefreshApps event,
    Emitter<AppState> emit,
  ) async {
    add(const GetApps());
  }
}
