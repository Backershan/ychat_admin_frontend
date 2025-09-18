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
    required bool enableScreenShare,
    required bool enableAppInApp,
    required bool pushNotifications,
    required String defaultLanguage,
    required bool maintenanceMode,
    required bool registrationEnabled,
    required String maxFileSize,
    required int maxUsersPerGroup,
    required bool autoBackupEnabled,
    required SecurityFeaturesModel securityFeatures,
    required SystemInfoModel systemInfo,
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

// Extension to convert models to entities
extension SettingsModelToEntity on SettingsModel {
  SettingsEntity toEntity() {
    return SettingsEntity(
      enableScreenShare: data.enableScreenShare,
      enableAppInApp: data.enableAppInApp,
      pushNotifications: data.pushNotifications,
      defaultLanguage: data.defaultLanguage,
      maintenanceMode: data.maintenanceMode,
      registrationEnabled: data.registrationEnabled,
      maxFileSize: data.maxFileSize,
      maxUsersPerGroup: data.maxUsersPerGroup,
      autoBackupEnabled: data.autoBackupEnabled,
      securityFeatures: data.securityFeatures.toEntity(),
      systemInfo: data.systemInfo.toEntity(),
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
