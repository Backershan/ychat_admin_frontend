import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_entity.freezed.dart';
part 'app_entity.g.dart';

@freezed
class AppEntity with _$AppEntity {
  const factory AppEntity({
    required int id,
    required String name,
    required String appKey,
    String? iconUrl,
    required List<String> category,
    required String description,
    required bool isActive,
    required bool isIntegrated,
    required String version,
    required List<String> permissions,
    Map<String, dynamic>? integrationConfig,
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
    required PaginationEntity pagination,
  }) = _AppListEntity;

  factory AppListEntity.fromJson(Map<String, dynamic> json) =>
      _$AppListEntityFromJson(json);
}

@freezed
class PaginationEntity with _$PaginationEntity {
  const factory PaginationEntity({
    required int total,
    required int page,
    required int pages,
    required int limit,
  }) = _PaginationEntity;

  factory PaginationEntity.fromJson(Map<String, dynamic> json) =>
      _$PaginationEntityFromJson(json);
}

@freezed
class CreateAppRequest with _$CreateAppRequest {
  const factory CreateAppRequest({
    required String name,
    required String appKey,
    String? iconUrl,
    required List<String> category,
    required String description,
    required bool isActive,
    required bool isIntegrated,
    required String version,
    required List<String> permissions,
    Map<String, dynamic>? integrationConfig,
  }) = _CreateAppRequest;

  factory CreateAppRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateAppRequestFromJson(json);
}

@freezed
class UpdateAppRequest with _$UpdateAppRequest {
  const factory UpdateAppRequest({
    required int appId,
    String? name,
    String? description,
    List<String>? category,
    bool? isActive,
    bool? isIntegrated,
    String? version,
    List<String>? permissions,
    Map<String, dynamic>? integrationConfig,
  }) = _UpdateAppRequest;

  factory UpdateAppRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateAppRequestFromJson(json);
}

@freezed
class UpdateAppStatusRequest with _$UpdateAppStatusRequest {
  const factory UpdateAppStatusRequest({
    required int appId,
    required bool isActive,
    required bool isIntegrated,
  }) = _UpdateAppStatusRequest;

  factory UpdateAppStatusRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateAppStatusRequestFromJson(json);
}

@freezed
class DeleteAppRequest with _$DeleteAppRequest {
  const factory DeleteAppRequest({
    required int appId,
  }) = _DeleteAppRequest;

  factory DeleteAppRequest.fromJson(Map<String, dynamic> json) =>
      _$DeleteAppRequestFromJson(json);
}

@freezed
class AppAnalyticsEntity with _$AppAnalyticsEntity {
  const factory AppAnalyticsEntity({
    required List<CategoryAnalyticsEntity> categories,
    required int totalApps,
    required int activeApps,
    required int integratedApps,
  }) = _AppAnalyticsEntity;

  factory AppAnalyticsEntity.fromJson(Map<String, dynamic> json) =>
      _$AppAnalyticsEntityFromJson(json);
}

@freezed
class CategoryAnalyticsEntity with _$CategoryAnalyticsEntity {
  const factory CategoryAnalyticsEntity({
    required String category,
    required int count,
    required int activeCount,
    required int integratedCount,
  }) = _CategoryAnalyticsEntity;

  factory CategoryAnalyticsEntity.fromJson(Map<String, dynamic> json) =>
      _$CategoryAnalyticsEntityFromJson(json);
}
