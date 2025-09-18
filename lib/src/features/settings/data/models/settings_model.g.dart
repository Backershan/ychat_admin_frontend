// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SettingsModelImpl _$$SettingsModelImplFromJson(Map<String, dynamic> json) =>
    _$SettingsModelImpl(
      success: json['success'] as bool,
      data: SettingsDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SettingsModelImplToJson(_$SettingsModelImpl instance) =>
    <String, dynamic>{'success': instance.success, 'data': instance.data};

_$SettingsDataModelImpl _$$SettingsDataModelImplFromJson(
  Map<String, dynamic> json,
) => _$SettingsDataModelImpl(
  enableScreenShare: json['enableScreenShare'] as bool,
  enableAppInApp: json['enableAppInApp'] as bool,
  pushNotifications: json['pushNotifications'] as bool,
  defaultLanguage: json['defaultLanguage'] as String,
  maintenanceMode: json['maintenanceMode'] as bool,
  registrationEnabled: json['registrationEnabled'] as bool,
  maxFileSize: json['maxFileSize'] as String,
  maxUsersPerGroup: (json['maxUsersPerGroup'] as num).toInt(),
  autoBackupEnabled: json['autoBackupEnabled'] as bool,
  securityFeatures: SecurityFeaturesModel.fromJson(
    json['securityFeatures'] as Map<String, dynamic>,
  ),
  systemInfo: SystemInfoModel.fromJson(
    json['systemInfo'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$$SettingsDataModelImplToJson(
  _$SettingsDataModelImpl instance,
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

_$SecurityFeaturesModelImpl _$$SecurityFeaturesModelImplFromJson(
  Map<String, dynamic> json,
) => _$SecurityFeaturesModelImpl(
  twoFactorRequired: json['twoFactorRequired'] as bool,
  passwordPolicy: json['passwordPolicy'] as String,
  sessionTimeout: (json['sessionTimeout'] as num).toInt(),
);

Map<String, dynamic> _$$SecurityFeaturesModelImplToJson(
  _$SecurityFeaturesModelImpl instance,
) => <String, dynamic>{
  'twoFactorRequired': instance.twoFactorRequired,
  'passwordPolicy': instance.passwordPolicy,
  'sessionTimeout': instance.sessionTimeout,
};

_$SystemInfoModelImpl _$$SystemInfoModelImplFromJson(
  Map<String, dynamic> json,
) => _$SystemInfoModelImpl(
  version: json['version'] as String,
  lastUpdated: json['lastUpdated'] as String,
  uptime: (json['uptime'] as num).toDouble(),
);

Map<String, dynamic> _$$SystemInfoModelImplToJson(
  _$SystemInfoModelImpl instance,
) => <String, dynamic>{
  'version': instance.version,
  'lastUpdated': instance.lastUpdated,
  'uptime': instance.uptime,
};
