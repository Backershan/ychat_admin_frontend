import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import '../../domain/entities/dashboard_entity.dart';
import '../../domain/usecases/get_dashboard_data_usecase.dart';
import '../../../../core/error/failures.dart';

part 'dashboard_event.dart';
part 'dashboard_state.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  final GetDashboardDataUseCase _getDashboardDataUseCase;

  DashboardBloc({
    required GetDashboardDataUseCase getDashboardDataUseCase,
  })  : _getDashboardDataUseCase = getDashboardDataUseCase,
        super(DashboardInitial()) {
    on<GetDashboardData>(_onGetDashboardData);
  }

  Future<void> _onGetDashboardData(
    GetDashboardData event,
    Emitter<DashboardState> emit,
  ) async {
    emit(DashboardLoading());

    final result = await _getDashboardDataUseCase();

    result.fold(
      (failure) => emit(DashboardError(_mapFailureToMessage(failure))),
      (dashboardData) => emit(DashboardLoaded(dashboardData)),
    );
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure) {
      case ServerFailure _:
        return 'Server error. Please try again later.';
      case NetworkFailure _:
        return 'No internet connection. Please check your network.';
      case TimeoutFailure _:
        return 'Connection timeout. Please try again.';
      case UnauthorizedFailure _:
        return 'Unauthorized access. Please login again.';
      case ForbiddenFailure _:
        return 'Access forbidden. You do not have permission.';
      case NotFoundFailure _:
        return 'Dashboard data not found.';
      default:
        return 'An unexpected error occurred. Please try again.';
    }
  }
}
