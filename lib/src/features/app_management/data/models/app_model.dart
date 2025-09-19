import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/app_entity.dart';

part 'app_model.freezed.dart';
part 'app_model.g.dart';

@freezed
class AppModel with _$AppModel {
  const factory AppModel({
    required int id,
    required String name,
    required String appKey,
    required String category,
    required String description,
    required bool isActive,
    required String version,
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
    required int total,
    required int page,
    required int pages,
    required int limit,
  }) = _AppListModel;

  factory AppListModel.fromJson(Map<String, dynamic> json) =>
      _$AppListModelFromJson(json);
}

@freezed
class CreateAppRequestModel with _$CreateAppRequestModel {
  const factory CreateAppRequestModel({
    required String name,
    required String appKey,
    required String category,
    required String description,
    required bool isActive,
    required String version,
  }) = _CreateAppRequestModel;

  factory CreateAppRequestModel.fromJson(Map<String, dynamic> json) =>
      _$CreateAppRequestModelFromJson(json);
}

@freezed
class UpdateAppRequestModel with _$UpdateAppRequestModel {
  const factory UpdateAppRequestModel({
    required int appId,
    required String name,
    required String description,
  }) = _UpdateAppRequestModel;

  factory UpdateAppRequestModel.fromJson(Map<String, dynamic> json) =>
      _$UpdateAppRequestModelFromJson(json);
}

@freezed
class DeleteAppRequestModel with _$DeleteAppRequestModel {
  const factory DeleteAppRequestModel({
    required int appId,
  }) = _DeleteAppRequestModel;

  factory DeleteAppRequestModel.fromJson(Map<String, dynamic> json) =>
      _$DeleteAppRequestModelFromJson(json);
}
