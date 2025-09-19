part of 'app_bloc.dart';

abstract class AppState extends Equatable {
  const AppState();

  @override
  List<Object> get props => [];
}

class AppInitial extends AppState {}

class AppLoading extends AppState {}

class AppsLoaded extends AppState {
  final AppListEntity apps;

  const AppsLoaded(this.apps);

  @override
  List<Object> get props => [apps];
}

class AppCreated extends AppState {
  final AppEntity app;

  const AppCreated(this.app);

  @override
  List<Object> get props => [app];
}

class AppUpdated extends AppState {
  final AppEntity app;

  const AppUpdated(this.app);

  @override
  List<Object> get props => [app];
}

class AppDeleted extends AppState {
  final int appId;

  const AppDeleted(this.appId);

  @override
  List<Object> get props => [appId];
}

class AppStatusUpdated extends AppState {
  final AppEntity app;

  const AppStatusUpdated(this.app);

  @override
  List<Object> get props => [app];
}

class AppAnalyticsLoaded extends AppState {
  final AppAnalyticsEntity analytics;

  const AppAnalyticsLoaded(this.analytics);

  @override
  List<Object> get props => [analytics];
}

class AppError extends AppState {
  final Failure failure;

  const AppError(this.failure);

  @override
  List<Object> get props => [failure];
}
