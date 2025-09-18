// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SettingsEntityImpl _$$SettingsEntityImplFromJson(Map<String, dynamic> json) =>
    _$SettingsEntityImpl(
      enableScreenShare: json['enableScreenShare'] as bool,
      enableAppInApp: json['enableAppInApp'] as bool,
      pushNotifications: json['pushNotifications'] as bool,
      defaultLanguage: json['defaultLanguage'] as String,
      maintenanceMode: json['maintenanceMode'] as bool,
      registrationEnabled: json['registrationEnabled'] as bool,
      maxFileSize: json['maxFileSize'] as String,
      maxUsersPerGroup: (json['maxUsersPerGroup'] as num).toInt(),
      autoBackupEnabled: json['autoBackupEnabled'] as bool,
      securityFeatures: SecurityFeatures.fromJson(
        json['securityFeatures'] as Map<String, dynamic>,
      ),
      systemInfo: SystemInfo.fromJson(
        json['systemInfo'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$$SettingsEntityImplToJson(
  _$SettingsEntityImpl instance,
) => <String, dynamic>{
  'enableScreenShare': instance.enableScreenShare,
  'enableAppInApp': instance.enableAppInApp,
  'pushNotifications': instance.pushNotifications,
  'defaultLanguage': instance.defaultLanguage,
  'maintenanceMode': instance.maintenanceMode,
  'registrationEnabled': instance.registrationEnabled,
  'maxFileSize': instance.maxFileSize,
  'maxUsersPerGroup': instance.maxUsersPerGroup,
  'autoBackupEnabled': instance.autoBackupEnabled,
  'securityFeatures': instance.securityFeatures,
  'systemInfo': instance.systemInfo,
};

_$SecurityFeaturesImpl _$$SecurityFeaturesImplFromJson(
  Map<String, dynamic> json,
) => _$SecurityFeaturesImpl(
  twoFactorRequired: json['twoFactorRequired'] as bool,
  passwordPolicy: json['passwordPolicy'] as String,
  sessionTimeout: (json['sessionTimeout'] as num).toInt(),
);

Map<String, dynamic> _$$SecurityFeaturesImplToJson(
  _$SecurityFeaturesImpl instance,
) => <String, dynamic>{
  'twoFactorRequired': instance.twoFactorRequired,
  'passwordPolicy': instance.passwordPolicy,
  'sessionTimeout': instance.sessionTimeout,
};

_$SystemInfoImpl _$$SystemInfoImplFromJson(Map<String, dynamic> json) =>
    _$SystemInfoImpl(
      version: json['version'] as String,
      lastUpdated: json['lastUpdated'] as String,
      uptime: (json['uptime'] as num).toDouble(),
    );

Map<String, dynamic> _$$SystemInfoImplToJson(_$SystemInfoImpl instance) =>
    <String, dynamic>{
      'version': instance.version,
      'lastUpdated': instance.lastUpdated,
      'uptime': instance.uptime,
    };

_$SettingsResponseImpl _$$SettingsResponseImplFromJson(
  Map<String, dynamic> json,
) => _$SettingsResponseImpl(
  success: json['success'] as bool,
  data: SettingsEntity.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$SettingsResponseImplToJson(
  _$SettingsResponseImpl instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};
