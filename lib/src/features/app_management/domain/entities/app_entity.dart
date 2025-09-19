import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_entity.freezed.dart';
part 'app_entity.g.dart';

@freezed
class AppEntity with _$AppEntity {
  const factory AppEntity({
    required int id,
    required String name,
    required String appKey,
    required String category,
    required String description,
    required bool isActive,
    required String version,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _AppEntity;

  factory AppEntity.fromJson(Map<String, dynamic> json) =>
      _$AppEntityFromJson(json);
}

@freezed
class AppListEntity with _$AppListEntity {
  const factory AppListEntity({
    required List<AppEntity> apps,
    required int total,
    required int page,
    required int pages,
    required int limit,
  }) = _AppListEntity;

  factory AppListEntity.fromJson(Map<String, dynamic> json) =>
      _$AppListEntityFromJson(json);
}

@freezed
class CreateAppRequest with _$CreateAppRequest {
  const factory CreateAppRequest({
    required String name,
    required String appKey,
    required String category,
    required String description,
    required bool isActive,
    required String version,
  }) = _CreateAppRequest;

  factory CreateAppRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateAppRequestFromJson(json);
}

@freezed
class UpdateAppRequest with _$UpdateAppRequest {
  const factory UpdateAppRequest({
    required int appId,
    required String name,
    required String description,
  }) = _UpdateAppRequest;

  factory UpdateAppRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateAppRequestFromJson(json);
}

@freezed
class DeleteAppRequest with _$DeleteAppRequest {
  const factory DeleteAppRequest({
    required int appId,
  }) = _DeleteAppRequest;

  factory DeleteAppRequest.fromJson(Map<String, dynamic> json) =>
      _$DeleteAppRequestFromJson(json);
}
