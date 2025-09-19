import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_model.freezed.dart';
part 'app_model.g.dart';

@freezed
class AppModel with _$AppModel {
  const factory AppModel({
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
  }) = _AppModel;

  factory AppModel.fromJson(Map<String, dynamic> json) =>
      _$AppModelFromJson(json);
}

@freezed
class AppListModel with _$AppListModel {
  const factory AppListModel({
    required List<AppModel> apps,
    required PaginationModel pagination,
  }) = _AppListModel;

  factory AppListModel.fromJson(Map<String, dynamic> json) =>
      _$AppListModelFromJson(json);
}

@freezed
class PaginationModel with _$PaginationModel {
  const factory PaginationModel({
    required int total,
    required int page,
    required int pages,
    required int limit,
  }) = _PaginationModel;

  factory PaginationModel.fromJson(Map<String, dynamic> json) =>
      _$PaginationModelFromJson(json);
}

@freezed
class CreateAppRequestModel with _$CreateAppRequestModel {
  const factory CreateAppRequestModel({
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
  }) = _CreateAppRequestModel;

  factory CreateAppRequestModel.fromJson(Map<String, dynamic> json) =>
      _$CreateAppRequestModelFromJson(json);
}

@freezed
class UpdateAppRequestModel with _$UpdateAppRequestModel {
  const factory UpdateAppRequestModel({
    required int appId,
    String? name,
    String? description,
    List<String>? category,
    bool? isActive,
    bool? isIntegrated,
    String? version,
    List<String>? permissions,
    Map<String, dynamic>? integrationConfig,
  }) = _UpdateAppRequestModel;

  factory UpdateAppRequestModel.fromJson(Map<String, dynamic> json) =>
      _$UpdateAppRequestModelFromJson(json);
}

@freezed
class UpdateAppStatusRequestModel with _$UpdateAppStatusRequestModel {
  const factory UpdateAppStatusRequestModel({
    required int appId,
    required bool isActive,
    required bool isIntegrated,
  }) = _UpdateAppStatusRequestModel;

  factory UpdateAppStatusRequestModel.fromJson(Map<String, dynamic> json) =>
      _$UpdateAppStatusRequestModelFromJson(json);
}

@freezed
class DeleteAppRequestModel with _$DeleteAppRequestModel {
  const factory DeleteAppRequestModel({
    required int appId,
  }) = _DeleteAppRequestModel;

  factory DeleteAppRequestModel.fromJson(Map<String, dynamic> json) =>
      _$DeleteAppRequestModelFromJson(json);
}

@freezed
class AppAnalyticsModel with _$AppAnalyticsModel {
  const factory AppAnalyticsModel({
    required List<CategoryAnalyticsModel> categories,
    required int totalApps,
    required int activeApps,
    required int integratedApps,
  }) = _AppAnalyticsModel;

  factory AppAnalyticsModel.fromJson(Map<String, dynamic> json) =>
      _$AppAnalyticsModelFromJson(json);
}

@freezed
class CategoryAnalyticsModel with _$CategoryAnalyticsModel {
  const factory CategoryAnalyticsModel({
    required String category,
    required int count,
    required int activeCount,
    required int integratedCount,
  }) = _CategoryAnalyticsModel;

  factory CategoryAnalyticsModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryAnalyticsModelFromJson(json);
}
