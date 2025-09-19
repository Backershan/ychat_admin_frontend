part of 'app_bloc.dart';

abstract class AppEvent extends Equatable {
  const AppEvent();

  @override
  List<Object> get props => [];
}

class GetApps extends AppEvent {
  const GetApps();
}

class CreateApp extends AppEvent {
  final String name;
  final String appKey;
  final String category;
  final String description;
  final bool isActive;
  final String version;

  const CreateApp({
    required this.name,
    required this.appKey,
    required this.category,
    required this.description,
    required this.isActive,
    required this.version,
  });

  @override
  List<Object> get props => [name, appKey, category, description, isActive, version];
}

class UpdateApp extends AppEvent {
  final int appId;
  final String name;
  final String description;

  const UpdateApp({
    required this.appId,
    required this.name,
    required this.description,
  });

  @override
  List<Object> get props => [appId, name, description];
}

class DeleteApp extends AppEvent {
  final int appId;

  const DeleteApp({required this.appId});

  @override
  List<Object> get props => [appId];
}

class RefreshApps extends AppEvent {
  const RefreshApps();
}
