import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import '../../domain/entities/settings_entity.dart';
import '../../domain/usecases/get_settings_usecase.dart';
import '../../domain/usecases/update_settings_usecase.dart';
import '../../../../core/error/failures.dart';

part 'settings_event.dart';
part 'settings_state.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  final GetSettingsUseCase _getSettingsUseCase;
  final UpdateSettingsUseCase _updateSettingsUseCase;

  SettingsBloc({
    required GetSettingsUseCase getSettingsUseCase,
    required UpdateSettingsUseCase updateSettingsUseCase,
  })  : _getSettingsUseCase = getSettingsUseCase,
        _updateSettingsUseCase = updateSettingsUseCase,
        super(SettingsInitial()) {
    on<GetSettings>(_onGetSettings);
    on<UpdateSettings>(_onUpdateSettings);
  }

  Future<void> _onGetSettings(
    GetSettings event,
    Emitter<SettingsState> emit,
  ) async {
    emit(SettingsLoading());

    final result = await _getSettingsUseCase();

    result.fold(
      (failure) => emit(SettingsError(_mapFailureToMessage(failure))),
      (settings) => emit(SettingsLoaded(settings)),
    );
  }

  Future<void> _onUpdateSettings(
    UpdateSettings event,
    Emitter<SettingsState> emit,
  ) async {
    emit(SettingsLoading());

    final result = await _updateSettingsUseCase(event.settings);

    result.fold(
      (failure) => emit(SettingsError(_mapFailureToMessage(failure))),
      (settings) => emit(SettingsUpdated(settings)),
    );
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        final message = failure.message.toLowerCase();
        if (message.contains('settings database not configured') || 
            message.contains('relation "settings" does not exist')) {
          return 'Settings database not configured. Settings are working in offline mode. Contact your administrator to set up the database.';
        }
        return 'Server error. Please try again later.';
      case NetworkFailure:
        return 'No internet connection. Settings are working in offline mode.';
      case TimeoutFailure:
        return 'Connection timeout. Settings are working in offline mode.';
      case UnauthorizedFailure:
        return 'Unauthorized access. Please login again.';
      case ForbiddenFailure:
        return 'Access forbidden. You do not have permission.';
      case NotFoundFailure:
        return 'Settings not found. Using default settings.';
      default:
        return 'An unexpected error occurred. Settings are working in offline mode.';
    }
  }
}
