import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_entity.freezed.dart';
part 'settings_entity.g.dart';

@freezed
class SettingsEntity with _$SettingsEntity {
  const factory SettingsEntity({
    required bool enableScreenShare,
    required bool enableAppInApp,
    required bool pushNotifications,
    required String defaultLanguage,
    required bool maintenanceMode,
    required bool registrationEnabled,
    required String maxFileSize,
    required int maxUsersPerGroup,
    required bool autoBackupEnabled,
    required SecurityFeatures securityFeatures,
    required SystemInfo systemInfo,
  }) = _SettingsEntity;

  factory SettingsEntity.fromJson(Map<String, dynamic> json) =>
      _$SettingsEntityFromJson(json);
}

@freezed
class SecurityFeatures with _$SecurityFeatures {
  const factory SecurityFeatures({
    required bool twoFactorRequired,
    required String passwordPolicy,
    required int sessionTimeout,
  }) = _SecurityFeatures;

  factory SecurityFeatures.fromJson(Map<String, dynamic> json) =>
      _$SecurityFeaturesFromJson(json);
}

@freezed
class SystemInfo with _$SystemInfo {
  const factory SystemInfo({
    required String version,
    required String lastUpdated,
    required double uptime,
  }) = _SystemInfo;

  factory SystemInfo.fromJson(Map<String, dynamic> json) =>
      _$SystemInfoFromJson(json);
}

@freezed
class SettingsResponse with _$SettingsResponse {
  const factory SettingsResponse({
    required bool success,
    required SettingsEntity data,
  }) = _SettingsResponse;

  factory SettingsResponse.fromJson(Map<String, dynamic> json) =>
      _$SettingsResponseFromJson(json);
}
