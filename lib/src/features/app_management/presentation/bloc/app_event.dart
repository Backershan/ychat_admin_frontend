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
  final String? iconUrl;
  final List<String> category;
  final String description;
  final bool isActive;
  final bool isIntegrated;
  final String version;
  final List<String> permissions;
  final Map<String, dynamic>? integrationConfig;

  const CreateApp({
    required this.name,
    required this.appKey,
    this.iconUrl,
    required this.category,
    required this.description,
    required this.isActive,
    required this.isIntegrated,
    required this.version,
    required this.permissions,
    this.integrationConfig,
  });

  @override
  List<Object> get props => [name, appKey, iconUrl ?? '', category, description, isActive, isIntegrated, version, permissions, integrationConfig ?? {}];
}

class UpdateApp extends AppEvent {
  final int appId;
  final String? name;
  final String? description;
  final List<String>? category;
  final bool? isActive;
  final bool? isIntegrated;
  final String? version;
  final List<String>? permissions;
  final Map<String, dynamic>? integrationConfig;

  const UpdateApp({
    required this.appId,
    this.name,
    this.description,
    this.category,
    this.isActive,
    this.isIntegrated,
    this.version,
    this.permissions,
    this.integrationConfig,
  });

  @override
  List<Object> get props => [appId, name ?? '', description ?? '', category ?? [], isActive ?? false, isIntegrated ?? false, version ?? '', permissions ?? [], integrationConfig ?? {}];
}

class UpdateAppStatus extends AppEvent {
  final int appId;
  final bool isActive;
  final bool isIntegrated;

  const UpdateAppStatus({
    required this.appId,
    required this.isActive,
    required this.isIntegrated,
  });

  @override
  List<Object> get props => [appId, isActive, isIntegrated];
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

class GetAppAnalytics extends AppEvent {
  const GetAppAnalytics();
}

class GetAppsByCategory extends AppEvent {
  final String category;

  const GetAppsByCategory({required this.category});

  @override
  List<Object> get props => [category];
}
