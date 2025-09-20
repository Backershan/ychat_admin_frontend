import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/settings_entity.dart';

part 'settings_model.freezed.dart';
part 'settings_model.g.dart';

@freezed
class SettingsModel with _$SettingsModel {
  const factory SettingsModel({
    required bool success,
    required SettingsDataModel data,
  }) = _SettingsModel;

  factory SettingsModel.fromJson(Map<String, dynamic> json) =>
      _$SettingsModelFromJson(json);
}

@freezed
class SettingsDataModel with _$SettingsDataModel {
  const factory SettingsDataModel({
    @JsonKey(name: 'enable_screen_share') required bool enableScreenShare,
    @JsonKey(name: 'enable_app_in_app') required bool enableAppInApp,
    @JsonKey(name: 'push_notifications') required bool pushNotifications,
    @JsonKey(name: 'default_language') String? defaultLanguage,
    @JsonKey(name: 'maintenance_mode') bool? maintenanceMode,
    @JsonKey(name: 'registration_enabled') bool? registrationEnabled,
    @JsonKey(name: 'max_file_size') String? maxFileSize,
    @JsonKey(name: 'max_users_per_group') int? maxUsersPerGroup,
    @JsonKey(name: 'auto_backup_enabled') bool? autoBackupEnabled,
    @JsonKey(name: 'security_features') SecurityFeaturesModel? securityFeatures,
    @JsonKey(name: 'system_info') SystemInfoModel? systemInfo,
  }) = _SettingsDataModel;

  factory SettingsDataModel.fromJson(Map<String, dynamic> json) =>
      _$SettingsDataModelFromJson(json);
}

@freezed
class SecurityFeaturesModel with _$SecurityFeaturesModel {
  const factory SecurityFeaturesModel({
    required bool twoFactorRequired,
    required String passwordPolicy,
    required int sessionTimeout,
  }) = _SecurityFeaturesModel;

  factory SecurityFeaturesModel.fromJson(Map<String, dynamic> json) =>
      _$SecurityFeaturesModelFromJson(json);
}

@freezed
class SystemInfoModel with _$SystemInfoModel {
  const factory SystemInfoModel({
    required String version,
    required String lastUpdated,
    required double uptime,
  }) = _SystemInfoModel;

  factory SystemInfoModel.fromJson(Map<String, dynamic> json) =>
      _$SystemInfoModelFromJson(json);
}

@freezed
class SettingsUpdateRequest with _$SettingsUpdateRequest {
  const factory SettingsUpdateRequest({
    @JsonKey(name: 'enable_screen_share') required bool enableScreenShare,
    @JsonKey(name: 'enable_app_in_app') required bool enableAppInApp,
    @JsonKey(name: 'push_notifications') required bool pushNotifications,
  }) = _SettingsUpdateRequest;

  factory SettingsUpdateRequest.fromJson(Map<String, dynamic> json) =>
      _$SettingsUpdateRequestFromJson(json);
}

// Extension to convert models to entities
extension SettingsModelToEntity on SettingsModel {
  SettingsEntity toEntity() {
    return SettingsEntity(
      enableScreenShare: data.enableScreenShare,
      enableAppInApp: data.enableAppInApp,
      pushNotifications: data.pushNotifications,
      defaultLanguage: data.defaultLanguage ?? 'en',
      maintenanceMode: data.maintenanceMode ?? false,
      registrationEnabled: data.registrationEnabled ?? true,
      maxFileSize: data.maxFileSize ?? '10485760',
      maxUsersPerGroup: data.maxUsersPerGroup ?? 100,
      autoBackupEnabled: data.autoBackupEnabled ?? true,
      securityFeatures: data.securityFeatures?.toEntity() ?? SecurityFeatures(
        twoFactorRequired: false,
        passwordPolicy: 'medium',
        sessionTimeout: 3600,
      ),
      systemInfo: data.systemInfo?.toEntity() ?? SystemInfo(
        version: '1.0.0',
        lastUpdated: DateTime.now().toIso8601String(),
        uptime: 0.0,
      ),
    );
  }
}

extension SecurityFeaturesModelToEntity on SecurityFeaturesModel {
  SecurityFeatures toEntity() {
    return SecurityFeatures(
      twoFactorRequired: twoFactorRequired,
      passwordPolicy: passwordPolicy,
      sessionTimeout: sessionTimeout,
    );
  }
}

extension SystemInfoModelToEntity on SystemInfoModel {
  SystemInfo toEntity() {
    return SystemInfo(
      version: version,
      lastUpdated: lastUpdated,
      uptime: uptime,
    );
  }
}
