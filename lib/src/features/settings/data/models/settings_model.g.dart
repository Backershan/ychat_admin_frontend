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
  enableScreenShare: json['enable_screen_share'] as bool,
  enableAppInApp: json['enable_app_in_app'] as bool,
  pushNotifications: json['push_notifications'] as bool,
  defaultLanguage: json['default_language'] as String?,
  maintenanceMode: json['maintenance_mode'] as bool?,
  registrationEnabled: json['registration_enabled'] as bool?,
  maxFileSize: json['max_file_size'] as String?,
  maxUsersPerGroup: (json['max_users_per_group'] as num?)?.toInt(),
  autoBackupEnabled: json['auto_backup_enabled'] as bool?,
  securityFeatures: json['security_features'] == null
      ? null
      : SecurityFeaturesModel.fromJson(
          json['security_features'] as Map<String, dynamic>,
        ),
  systemInfo: json['system_info'] == null
      ? null
      : SystemInfoModel.fromJson(json['system_info'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$SettingsDataModelImplToJson(
  _$SettingsDataModelImpl instance,
) => <String, dynamic>{
  'enable_screen_share': instance.enableScreenShare,
  'enable_app_in_app': instance.enableAppInApp,
  'push_notifications': instance.pushNotifications,
  'default_language': instance.defaultLanguage,
  'maintenance_mode': instance.maintenanceMode,
  'registration_enabled': instance.registrationEnabled,
  'max_file_size': instance.maxFileSize,
  'max_users_per_group': instance.maxUsersPerGroup,
  'auto_backup_enabled': instance.autoBackupEnabled,
  'security_features': instance.securityFeatures,
  'system_info': instance.systemInfo,
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

_$SettingsUpdateRequestImpl _$$SettingsUpdateRequestImplFromJson(
  Map<String, dynamic> json,
) => _$SettingsUpdateRequestImpl(
  enableScreenShare: json['enable_screen_share'] as bool,
  enableAppInApp: json['enable_app_in_app'] as bool,
  pushNotifications: json['push_notifications'] as bool,
);

Map<String, dynamic> _$$SettingsUpdateRequestImplToJson(
  _$SettingsUpdateRequestImpl instance,
) => <String, dynamic>{
  'enable_screen_share': instance.enableScreenShare,
  'enable_app_in_app': instance.enableAppInApp,
  'push_notifications': instance.pushNotifications,
};
