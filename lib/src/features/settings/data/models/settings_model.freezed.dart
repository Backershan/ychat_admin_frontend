// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SettingsModel _$SettingsModelFromJson(Map<String, dynamic> json) {
  return _SettingsModel.fromJson(json);
}

/// @nodoc
mixin _$SettingsModel {
  bool get success => throw _privateConstructorUsedError;
  SettingsDataModel get data => throw _privateConstructorUsedError;

  /// Serializes this SettingsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SettingsModelCopyWith<SettingsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsModelCopyWith<$Res> {
  factory $SettingsModelCopyWith(
    SettingsModel value,
    $Res Function(SettingsModel) then,
  ) = _$SettingsModelCopyWithImpl<$Res, SettingsModel>;
  @useResult
  $Res call({bool success, SettingsDataModel data});

  $SettingsDataModelCopyWith<$Res> get data;
}

/// @nodoc
class _$SettingsModelCopyWithImpl<$Res, $Val extends SettingsModel>
    implements $SettingsModelCopyWith<$Res> {
  _$SettingsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? success = null, Object? data = null}) {
    return _then(
      _value.copyWith(
            success: null == success
                ? _value.success
                : success // ignore: cast_nullable_to_non_nullable
                      as bool,
            data: null == data
                ? _value.data
                : data // ignore: cast_nullable_to_non_nullable
                      as SettingsDataModel,
          )
          as $Val,
    );
  }

  /// Create a copy of SettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SettingsDataModelCopyWith<$Res> get data {
    return $SettingsDataModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SettingsModelImplCopyWith<$Res>
    implements $SettingsModelCopyWith<$Res> {
  factory _$$SettingsModelImplCopyWith(
    _$SettingsModelImpl value,
    $Res Function(_$SettingsModelImpl) then,
  ) = __$$SettingsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, SettingsDataModel data});

  @override
  $SettingsDataModelCopyWith<$Res> get data;
}

/// @nodoc
class __$$SettingsModelImplCopyWithImpl<$Res>
    extends _$SettingsModelCopyWithImpl<$Res, _$SettingsModelImpl>
    implements _$$SettingsModelImplCopyWith<$Res> {
  __$$SettingsModelImplCopyWithImpl(
    _$SettingsModelImpl _value,
    $Res Function(_$SettingsModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? success = null, Object? data = null}) {
    return _then(
      _$SettingsModelImpl(
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
        data: null == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                  as SettingsDataModel,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SettingsModelImpl implements _SettingsModel {
  const _$SettingsModelImpl({required this.success, required this.data});

  factory _$SettingsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SettingsModelImplFromJson(json);

  @override
  final bool success;
  @override
  final SettingsDataModel data;

  @override
  String toString() {
    return 'SettingsModel(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsModelImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data);

  /// Create a copy of SettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsModelImplCopyWith<_$SettingsModelImpl> get copyWith =>
      __$$SettingsModelImplCopyWithImpl<_$SettingsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SettingsModelImplToJson(this);
  }
}

abstract class _SettingsModel implements SettingsModel {
  const factory _SettingsModel({
    required final bool success,
    required final SettingsDataModel data,
  }) = _$SettingsModelImpl;

  factory _SettingsModel.fromJson(Map<String, dynamic> json) =
      _$SettingsModelImpl.fromJson;

  @override
  bool get success;
  @override
  SettingsDataModel get data;

  /// Create a copy of SettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SettingsModelImplCopyWith<_$SettingsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SettingsDataModel _$SettingsDataModelFromJson(Map<String, dynamic> json) {
  return _SettingsDataModel.fromJson(json);
}

/// @nodoc
mixin _$SettingsDataModel {
  @JsonKey(name: 'enable_screen_share')
  bool get enableScreenShare => throw _privateConstructorUsedError;
  @JsonKey(name: 'enable_app_in_app')
  bool get enableAppInApp => throw _privateConstructorUsedError;
  @JsonKey(name: 'push_notifications')
  bool get pushNotifications => throw _privateConstructorUsedError;
  @JsonKey(name: 'default_language')
  String? get defaultLanguage => throw _privateConstructorUsedError;
  @JsonKey(name: 'maintenance_mode')
  bool? get maintenanceMode => throw _privateConstructorUsedError;
  @JsonKey(name: 'registration_enabled')
  bool? get registrationEnabled => throw _privateConstructorUsedError;
  @JsonKey(name: 'max_file_size')
  String? get maxFileSize => throw _privateConstructorUsedError;
  @JsonKey(name: 'max_users_per_group')
  int? get maxUsersPerGroup => throw _privateConstructorUsedError;
  @JsonKey(name: 'auto_backup_enabled')
  bool? get autoBackupEnabled => throw _privateConstructorUsedError;
  @JsonKey(name: 'security_features')
  SecurityFeaturesModel? get securityFeatures =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'system_info')
  SystemInfoModel? get systemInfo => throw _privateConstructorUsedError;

  /// Serializes this SettingsDataModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SettingsDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SettingsDataModelCopyWith<SettingsDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsDataModelCopyWith<$Res> {
  factory $SettingsDataModelCopyWith(
    SettingsDataModel value,
    $Res Function(SettingsDataModel) then,
  ) = _$SettingsDataModelCopyWithImpl<$Res, SettingsDataModel>;
  @useResult
  $Res call({
    @JsonKey(name: 'enable_screen_share') bool enableScreenShare,
    @JsonKey(name: 'enable_app_in_app') bool enableAppInApp,
    @JsonKey(name: 'push_notifications') bool pushNotifications,
    @JsonKey(name: 'default_language') String? defaultLanguage,
    @JsonKey(name: 'maintenance_mode') bool? maintenanceMode,
    @JsonKey(name: 'registration_enabled') bool? registrationEnabled,
    @JsonKey(name: 'max_file_size') String? maxFileSize,
    @JsonKey(name: 'max_users_per_group') int? maxUsersPerGroup,
    @JsonKey(name: 'auto_backup_enabled') bool? autoBackupEnabled,
    @JsonKey(name: 'security_features') SecurityFeaturesModel? securityFeatures,
    @JsonKey(name: 'system_info') SystemInfoModel? systemInfo,
  });

  $SecurityFeaturesModelCopyWith<$Res>? get securityFeatures;
  $SystemInfoModelCopyWith<$Res>? get systemInfo;
}

/// @nodoc
class _$SettingsDataModelCopyWithImpl<$Res, $Val extends SettingsDataModel>
    implements $SettingsDataModelCopyWith<$Res> {
  _$SettingsDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SettingsDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enableScreenShare = null,
    Object? enableAppInApp = null,
    Object? pushNotifications = null,
    Object? defaultLanguage = freezed,
    Object? maintenanceMode = freezed,
    Object? registrationEnabled = freezed,
    Object? maxFileSize = freezed,
    Object? maxUsersPerGroup = freezed,
    Object? autoBackupEnabled = freezed,
    Object? securityFeatures = freezed,
    Object? systemInfo = freezed,
  }) {
    return _then(
      _value.copyWith(
            enableScreenShare: null == enableScreenShare
                ? _value.enableScreenShare
                : enableScreenShare // ignore: cast_nullable_to_non_nullable
                      as bool,
            enableAppInApp: null == enableAppInApp
                ? _value.enableAppInApp
                : enableAppInApp // ignore: cast_nullable_to_non_nullable
                      as bool,
            pushNotifications: null == pushNotifications
                ? _value.pushNotifications
                : pushNotifications // ignore: cast_nullable_to_non_nullable
                      as bool,
            defaultLanguage: freezed == defaultLanguage
                ? _value.defaultLanguage
                : defaultLanguage // ignore: cast_nullable_to_non_nullable
                      as String?,
            maintenanceMode: freezed == maintenanceMode
                ? _value.maintenanceMode
                : maintenanceMode // ignore: cast_nullable_to_non_nullable
                      as bool?,
            registrationEnabled: freezed == registrationEnabled
                ? _value.registrationEnabled
                : registrationEnabled // ignore: cast_nullable_to_non_nullable
                      as bool?,
            maxFileSize: freezed == maxFileSize
                ? _value.maxFileSize
                : maxFileSize // ignore: cast_nullable_to_non_nullable
                      as String?,
            maxUsersPerGroup: freezed == maxUsersPerGroup
                ? _value.maxUsersPerGroup
                : maxUsersPerGroup // ignore: cast_nullable_to_non_nullable
                      as int?,
            autoBackupEnabled: freezed == autoBackupEnabled
                ? _value.autoBackupEnabled
                : autoBackupEnabled // ignore: cast_nullable_to_non_nullable
                      as bool?,
            securityFeatures: freezed == securityFeatures
                ? _value.securityFeatures
                : securityFeatures // ignore: cast_nullable_to_non_nullable
                      as SecurityFeaturesModel?,
            systemInfo: freezed == systemInfo
                ? _value.systemInfo
                : systemInfo // ignore: cast_nullable_to_non_nullable
                      as SystemInfoModel?,
          )
          as $Val,
    );
  }

  /// Create a copy of SettingsDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SecurityFeaturesModelCopyWith<$Res>? get securityFeatures {
    if (_value.securityFeatures == null) {
      return null;
    }

    return $SecurityFeaturesModelCopyWith<$Res>(_value.securityFeatures!, (
      value,
    ) {
      return _then(_value.copyWith(securityFeatures: value) as $Val);
    });
  }

  /// Create a copy of SettingsDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SystemInfoModelCopyWith<$Res>? get systemInfo {
    if (_value.systemInfo == null) {
      return null;
    }

    return $SystemInfoModelCopyWith<$Res>(_value.systemInfo!, (value) {
      return _then(_value.copyWith(systemInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SettingsDataModelImplCopyWith<$Res>
    implements $SettingsDataModelCopyWith<$Res> {
  factory _$$SettingsDataModelImplCopyWith(
    _$SettingsDataModelImpl value,
    $Res Function(_$SettingsDataModelImpl) then,
  ) = __$$SettingsDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'enable_screen_share') bool enableScreenShare,
    @JsonKey(name: 'enable_app_in_app') bool enableAppInApp,
    @JsonKey(name: 'push_notifications') bool pushNotifications,
    @JsonKey(name: 'default_language') String? defaultLanguage,
    @JsonKey(name: 'maintenance_mode') bool? maintenanceMode,
    @JsonKey(name: 'registration_enabled') bool? registrationEnabled,
    @JsonKey(name: 'max_file_size') String? maxFileSize,
    @JsonKey(name: 'max_users_per_group') int? maxUsersPerGroup,
    @JsonKey(name: 'auto_backup_enabled') bool? autoBackupEnabled,
    @JsonKey(name: 'security_features') SecurityFeaturesModel? securityFeatures,
    @JsonKey(name: 'system_info') SystemInfoModel? systemInfo,
  });

  @override
  $SecurityFeaturesModelCopyWith<$Res>? get securityFeatures;
  @override
  $SystemInfoModelCopyWith<$Res>? get systemInfo;
}

/// @nodoc
class __$$SettingsDataModelImplCopyWithImpl<$Res>
    extends _$SettingsDataModelCopyWithImpl<$Res, _$SettingsDataModelImpl>
    implements _$$SettingsDataModelImplCopyWith<$Res> {
  __$$SettingsDataModelImplCopyWithImpl(
    _$SettingsDataModelImpl _value,
    $Res Function(_$SettingsDataModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SettingsDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enableScreenShare = null,
    Object? enableAppInApp = null,
    Object? pushNotifications = null,
    Object? defaultLanguage = freezed,
    Object? maintenanceMode = freezed,
    Object? registrationEnabled = freezed,
    Object? maxFileSize = freezed,
    Object? maxUsersPerGroup = freezed,
    Object? autoBackupEnabled = freezed,
    Object? securityFeatures = freezed,
    Object? systemInfo = freezed,
  }) {
    return _then(
      _$SettingsDataModelImpl(
        enableScreenShare: null == enableScreenShare
            ? _value.enableScreenShare
            : enableScreenShare // ignore: cast_nullable_to_non_nullable
                  as bool,
        enableAppInApp: null == enableAppInApp
            ? _value.enableAppInApp
            : enableAppInApp // ignore: cast_nullable_to_non_nullable
                  as bool,
        pushNotifications: null == pushNotifications
            ? _value.pushNotifications
            : pushNotifications // ignore: cast_nullable_to_non_nullable
                  as bool,
        defaultLanguage: freezed == defaultLanguage
            ? _value.defaultLanguage
            : defaultLanguage // ignore: cast_nullable_to_non_nullable
                  as String?,
        maintenanceMode: freezed == maintenanceMode
            ? _value.maintenanceMode
            : maintenanceMode // ignore: cast_nullable_to_non_nullable
                  as bool?,
        registrationEnabled: freezed == registrationEnabled
            ? _value.registrationEnabled
            : registrationEnabled // ignore: cast_nullable_to_non_nullable
                  as bool?,
        maxFileSize: freezed == maxFileSize
            ? _value.maxFileSize
            : maxFileSize // ignore: cast_nullable_to_non_nullable
                  as String?,
        maxUsersPerGroup: freezed == maxUsersPerGroup
            ? _value.maxUsersPerGroup
            : maxUsersPerGroup // ignore: cast_nullable_to_non_nullable
                  as int?,
        autoBackupEnabled: freezed == autoBackupEnabled
            ? _value.autoBackupEnabled
            : autoBackupEnabled // ignore: cast_nullable_to_non_nullable
                  as bool?,
        securityFeatures: freezed == securityFeatures
            ? _value.securityFeatures
            : securityFeatures // ignore: cast_nullable_to_non_nullable
                  as SecurityFeaturesModel?,
        systemInfo: freezed == systemInfo
            ? _value.systemInfo
            : systemInfo // ignore: cast_nullable_to_non_nullable
                  as SystemInfoModel?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SettingsDataModelImpl implements _SettingsDataModel {
  const _$SettingsDataModelImpl({
    @JsonKey(name: 'enable_screen_share') required this.enableScreenShare,
    @JsonKey(name: 'enable_app_in_app') required this.enableAppInApp,
    @JsonKey(name: 'push_notifications') required this.pushNotifications,
    @JsonKey(name: 'default_language') this.defaultLanguage,
    @JsonKey(name: 'maintenance_mode') this.maintenanceMode,
    @JsonKey(name: 'registration_enabled') this.registrationEnabled,
    @JsonKey(name: 'max_file_size') this.maxFileSize,
    @JsonKey(name: 'max_users_per_group') this.maxUsersPerGroup,
    @JsonKey(name: 'auto_backup_enabled') this.autoBackupEnabled,
    @JsonKey(name: 'security_features') this.securityFeatures,
    @JsonKey(name: 'system_info') this.systemInfo,
  });

  factory _$SettingsDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SettingsDataModelImplFromJson(json);

  @override
  @JsonKey(name: 'enable_screen_share')
  final bool enableScreenShare;
  @override
  @JsonKey(name: 'enable_app_in_app')
  final bool enableAppInApp;
  @override
  @JsonKey(name: 'push_notifications')
  final bool pushNotifications;
  @override
  @JsonKey(name: 'default_language')
  final String? defaultLanguage;
  @override
  @JsonKey(name: 'maintenance_mode')
  final bool? maintenanceMode;
  @override
  @JsonKey(name: 'registration_enabled')
  final bool? registrationEnabled;
  @override
  @JsonKey(name: 'max_file_size')
  final String? maxFileSize;
  @override
  @JsonKey(name: 'max_users_per_group')
  final int? maxUsersPerGroup;
  @override
  @JsonKey(name: 'auto_backup_enabled')
  final bool? autoBackupEnabled;
  @override
  @JsonKey(name: 'security_features')
  final SecurityFeaturesModel? securityFeatures;
  @override
  @JsonKey(name: 'system_info')
  final SystemInfoModel? systemInfo;

  @override
  String toString() {
    return 'SettingsDataModel(enableScreenShare: $enableScreenShare, enableAppInApp: $enableAppInApp, pushNotifications: $pushNotifications, defaultLanguage: $defaultLanguage, maintenanceMode: $maintenanceMode, registrationEnabled: $registrationEnabled, maxFileSize: $maxFileSize, maxUsersPerGroup: $maxUsersPerGroup, autoBackupEnabled: $autoBackupEnabled, securityFeatures: $securityFeatures, systemInfo: $systemInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsDataModelImpl &&
            (identical(other.enableScreenShare, enableScreenShare) ||
                other.enableScreenShare == enableScreenShare) &&
            (identical(other.enableAppInApp, enableAppInApp) ||
                other.enableAppInApp == enableAppInApp) &&
            (identical(other.pushNotifications, pushNotifications) ||
                other.pushNotifications == pushNotifications) &&
            (identical(other.defaultLanguage, defaultLanguage) ||
                other.defaultLanguage == defaultLanguage) &&
            (identical(other.maintenanceMode, maintenanceMode) ||
                other.maintenanceMode == maintenanceMode) &&
            (identical(other.registrationEnabled, registrationEnabled) ||
                other.registrationEnabled == registrationEnabled) &&
            (identical(other.maxFileSize, maxFileSize) ||
                other.maxFileSize == maxFileSize) &&
            (identical(other.maxUsersPerGroup, maxUsersPerGroup) ||
                other.maxUsersPerGroup == maxUsersPerGroup) &&
            (identical(other.autoBackupEnabled, autoBackupEnabled) ||
                other.autoBackupEnabled == autoBackupEnabled) &&
            (identical(other.securityFeatures, securityFeatures) ||
                other.securityFeatures == securityFeatures) &&
            (identical(other.systemInfo, systemInfo) ||
                other.systemInfo == systemInfo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    enableScreenShare,
    enableAppInApp,
    pushNotifications,
    defaultLanguage,
    maintenanceMode,
    registrationEnabled,
    maxFileSize,
    maxUsersPerGroup,
    autoBackupEnabled,
    securityFeatures,
    systemInfo,
  );

  /// Create a copy of SettingsDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsDataModelImplCopyWith<_$SettingsDataModelImpl> get copyWith =>
      __$$SettingsDataModelImplCopyWithImpl<_$SettingsDataModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SettingsDataModelImplToJson(this);
  }
}

abstract class _SettingsDataModel implements SettingsDataModel {
  const factory _SettingsDataModel({
    @JsonKey(name: 'enable_screen_share') required final bool enableScreenShare,
    @JsonKey(name: 'enable_app_in_app') required final bool enableAppInApp,
    @JsonKey(name: 'push_notifications') required final bool pushNotifications,
    @JsonKey(name: 'default_language') final String? defaultLanguage,
    @JsonKey(name: 'maintenance_mode') final bool? maintenanceMode,
    @JsonKey(name: 'registration_enabled') final bool? registrationEnabled,
    @JsonKey(name: 'max_file_size') final String? maxFileSize,
    @JsonKey(name: 'max_users_per_group') final int? maxUsersPerGroup,
    @JsonKey(name: 'auto_backup_enabled') final bool? autoBackupEnabled,
    @JsonKey(name: 'security_features')
    final SecurityFeaturesModel? securityFeatures,
    @JsonKey(name: 'system_info') final SystemInfoModel? systemInfo,
  }) = _$SettingsDataModelImpl;

  factory _SettingsDataModel.fromJson(Map<String, dynamic> json) =
      _$SettingsDataModelImpl.fromJson;

  @override
  @JsonKey(name: 'enable_screen_share')
  bool get enableScreenShare;
  @override
  @JsonKey(name: 'enable_app_in_app')
  bool get enableAppInApp;
  @override
  @JsonKey(name: 'push_notifications')
  bool get pushNotifications;
  @override
  @JsonKey(name: 'default_language')
  String? get defaultLanguage;
  @override
  @JsonKey(name: 'maintenance_mode')
  bool? get maintenanceMode;
  @override
  @JsonKey(name: 'registration_enabled')
  bool? get registrationEnabled;
  @override
  @JsonKey(name: 'max_file_size')
  String? get maxFileSize;
  @override
  @JsonKey(name: 'max_users_per_group')
  int? get maxUsersPerGroup;
  @override
  @JsonKey(name: 'auto_backup_enabled')
  bool? get autoBackupEnabled;
  @override
  @JsonKey(name: 'security_features')
  SecurityFeaturesModel? get securityFeatures;
  @override
  @JsonKey(name: 'system_info')
  SystemInfoModel? get systemInfo;

  /// Create a copy of SettingsDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SettingsDataModelImplCopyWith<_$SettingsDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SecurityFeaturesModel _$SecurityFeaturesModelFromJson(
  Map<String, dynamic> json,
) {
  return _SecurityFeaturesModel.fromJson(json);
}

/// @nodoc
mixin _$SecurityFeaturesModel {
  bool get twoFactorRequired => throw _privateConstructorUsedError;
  String get passwordPolicy => throw _privateConstructorUsedError;
  int get sessionTimeout => throw _privateConstructorUsedError;

  /// Serializes this SecurityFeaturesModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SecurityFeaturesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SecurityFeaturesModelCopyWith<SecurityFeaturesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SecurityFeaturesModelCopyWith<$Res> {
  factory $SecurityFeaturesModelCopyWith(
    SecurityFeaturesModel value,
    $Res Function(SecurityFeaturesModel) then,
  ) = _$SecurityFeaturesModelCopyWithImpl<$Res, SecurityFeaturesModel>;
  @useResult
  $Res call({
    bool twoFactorRequired,
    String passwordPolicy,
    int sessionTimeout,
  });
}

/// @nodoc
class _$SecurityFeaturesModelCopyWithImpl<
  $Res,
  $Val extends SecurityFeaturesModel
>
    implements $SecurityFeaturesModelCopyWith<$Res> {
  _$SecurityFeaturesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SecurityFeaturesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? twoFactorRequired = null,
    Object? passwordPolicy = null,
    Object? sessionTimeout = null,
  }) {
    return _then(
      _value.copyWith(
            twoFactorRequired: null == twoFactorRequired
                ? _value.twoFactorRequired
                : twoFactorRequired // ignore: cast_nullable_to_non_nullable
                      as bool,
            passwordPolicy: null == passwordPolicy
                ? _value.passwordPolicy
                : passwordPolicy // ignore: cast_nullable_to_non_nullable
                      as String,
            sessionTimeout: null == sessionTimeout
                ? _value.sessionTimeout
                : sessionTimeout // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SecurityFeaturesModelImplCopyWith<$Res>
    implements $SecurityFeaturesModelCopyWith<$Res> {
  factory _$$SecurityFeaturesModelImplCopyWith(
    _$SecurityFeaturesModelImpl value,
    $Res Function(_$SecurityFeaturesModelImpl) then,
  ) = __$$SecurityFeaturesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool twoFactorRequired,
    String passwordPolicy,
    int sessionTimeout,
  });
}

/// @nodoc
class __$$SecurityFeaturesModelImplCopyWithImpl<$Res>
    extends
        _$SecurityFeaturesModelCopyWithImpl<$Res, _$SecurityFeaturesModelImpl>
    implements _$$SecurityFeaturesModelImplCopyWith<$Res> {
  __$$SecurityFeaturesModelImplCopyWithImpl(
    _$SecurityFeaturesModelImpl _value,
    $Res Function(_$SecurityFeaturesModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SecurityFeaturesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? twoFactorRequired = null,
    Object? passwordPolicy = null,
    Object? sessionTimeout = null,
  }) {
    return _then(
      _$SecurityFeaturesModelImpl(
        twoFactorRequired: null == twoFactorRequired
            ? _value.twoFactorRequired
            : twoFactorRequired // ignore: cast_nullable_to_non_nullable
                  as bool,
        passwordPolicy: null == passwordPolicy
            ? _value.passwordPolicy
            : passwordPolicy // ignore: cast_nullable_to_non_nullable
                  as String,
        sessionTimeout: null == sessionTimeout
            ? _value.sessionTimeout
            : sessionTimeout // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SecurityFeaturesModelImpl implements _SecurityFeaturesModel {
  const _$SecurityFeaturesModelImpl({
    required this.twoFactorRequired,
    required this.passwordPolicy,
    required this.sessionTimeout,
  });

  factory _$SecurityFeaturesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SecurityFeaturesModelImplFromJson(json);

  @override
  final bool twoFactorRequired;
  @override
  final String passwordPolicy;
  @override
  final int sessionTimeout;

  @override
  String toString() {
    return 'SecurityFeaturesModel(twoFactorRequired: $twoFactorRequired, passwordPolicy: $passwordPolicy, sessionTimeout: $sessionTimeout)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SecurityFeaturesModelImpl &&
            (identical(other.twoFactorRequired, twoFactorRequired) ||
                other.twoFactorRequired == twoFactorRequired) &&
            (identical(other.passwordPolicy, passwordPolicy) ||
                other.passwordPolicy == passwordPolicy) &&
            (identical(other.sessionTimeout, sessionTimeout) ||
                other.sessionTimeout == sessionTimeout));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    twoFactorRequired,
    passwordPolicy,
    sessionTimeout,
  );

  /// Create a copy of SecurityFeaturesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SecurityFeaturesModelImplCopyWith<_$SecurityFeaturesModelImpl>
  get copyWith =>
      __$$SecurityFeaturesModelImplCopyWithImpl<_$SecurityFeaturesModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SecurityFeaturesModelImplToJson(this);
  }
}

abstract class _SecurityFeaturesModel implements SecurityFeaturesModel {
  const factory _SecurityFeaturesModel({
    required final bool twoFactorRequired,
    required final String passwordPolicy,
    required final int sessionTimeout,
  }) = _$SecurityFeaturesModelImpl;

  factory _SecurityFeaturesModel.fromJson(Map<String, dynamic> json) =
      _$SecurityFeaturesModelImpl.fromJson;

  @override
  bool get twoFactorRequired;
  @override
  String get passwordPolicy;
  @override
  int get sessionTimeout;

  /// Create a copy of SecurityFeaturesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SecurityFeaturesModelImplCopyWith<_$SecurityFeaturesModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}

SystemInfoModel _$SystemInfoModelFromJson(Map<String, dynamic> json) {
  return _SystemInfoModel.fromJson(json);
}

/// @nodoc
mixin _$SystemInfoModel {
  String get version => throw _privateConstructorUsedError;
  String get lastUpdated => throw _privateConstructorUsedError;
  double get uptime => throw _privateConstructorUsedError;

  /// Serializes this SystemInfoModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SystemInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SystemInfoModelCopyWith<SystemInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SystemInfoModelCopyWith<$Res> {
  factory $SystemInfoModelCopyWith(
    SystemInfoModel value,
    $Res Function(SystemInfoModel) then,
  ) = _$SystemInfoModelCopyWithImpl<$Res, SystemInfoModel>;
  @useResult
  $Res call({String version, String lastUpdated, double uptime});
}

/// @nodoc
class _$SystemInfoModelCopyWithImpl<$Res, $Val extends SystemInfoModel>
    implements $SystemInfoModelCopyWith<$Res> {
  _$SystemInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SystemInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = null,
    Object? lastUpdated = null,
    Object? uptime = null,
  }) {
    return _then(
      _value.copyWith(
            version: null == version
                ? _value.version
                : version // ignore: cast_nullable_to_non_nullable
                      as String,
            lastUpdated: null == lastUpdated
                ? _value.lastUpdated
                : lastUpdated // ignore: cast_nullable_to_non_nullable
                      as String,
            uptime: null == uptime
                ? _value.uptime
                : uptime // ignore: cast_nullable_to_non_nullable
                      as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SystemInfoModelImplCopyWith<$Res>
    implements $SystemInfoModelCopyWith<$Res> {
  factory _$$SystemInfoModelImplCopyWith(
    _$SystemInfoModelImpl value,
    $Res Function(_$SystemInfoModelImpl) then,
  ) = __$$SystemInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String version, String lastUpdated, double uptime});
}

/// @nodoc
class __$$SystemInfoModelImplCopyWithImpl<$Res>
    extends _$SystemInfoModelCopyWithImpl<$Res, _$SystemInfoModelImpl>
    implements _$$SystemInfoModelImplCopyWith<$Res> {
  __$$SystemInfoModelImplCopyWithImpl(
    _$SystemInfoModelImpl _value,
    $Res Function(_$SystemInfoModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SystemInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = null,
    Object? lastUpdated = null,
    Object? uptime = null,
  }) {
    return _then(
      _$SystemInfoModelImpl(
        version: null == version
            ? _value.version
            : version // ignore: cast_nullable_to_non_nullable
                  as String,
        lastUpdated: null == lastUpdated
            ? _value.lastUpdated
            : lastUpdated // ignore: cast_nullable_to_non_nullable
                  as String,
        uptime: null == uptime
            ? _value.uptime
            : uptime // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SystemInfoModelImpl implements _SystemInfoModel {
  const _$SystemInfoModelImpl({
    required this.version,
    required this.lastUpdated,
    required this.uptime,
  });

  factory _$SystemInfoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SystemInfoModelImplFromJson(json);

  @override
  final String version;
  @override
  final String lastUpdated;
  @override
  final double uptime;

  @override
  String toString() {
    return 'SystemInfoModel(version: $version, lastUpdated: $lastUpdated, uptime: $uptime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SystemInfoModelImpl &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.uptime, uptime) || other.uptime == uptime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, version, lastUpdated, uptime);

  /// Create a copy of SystemInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SystemInfoModelImplCopyWith<_$SystemInfoModelImpl> get copyWith =>
      __$$SystemInfoModelImplCopyWithImpl<_$SystemInfoModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SystemInfoModelImplToJson(this);
  }
}

abstract class _SystemInfoModel implements SystemInfoModel {
  const factory _SystemInfoModel({
    required final String version,
    required final String lastUpdated,
    required final double uptime,
  }) = _$SystemInfoModelImpl;

  factory _SystemInfoModel.fromJson(Map<String, dynamic> json) =
      _$SystemInfoModelImpl.fromJson;

  @override
  String get version;
  @override
  String get lastUpdated;
  @override
  double get uptime;

  /// Create a copy of SystemInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SystemInfoModelImplCopyWith<_$SystemInfoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SettingsUpdateRequest _$SettingsUpdateRequestFromJson(
  Map<String, dynamic> json,
) {
  return _SettingsUpdateRequest.fromJson(json);
}

/// @nodoc
mixin _$SettingsUpdateRequest {
  @JsonKey(name: 'enable_screen_share')
  bool get enableScreenShare => throw _privateConstructorUsedError;
  @JsonKey(name: 'enable_app_in_app')
  bool get enableAppInApp => throw _privateConstructorUsedError;
  @JsonKey(name: 'push_notifications')
  bool get pushNotifications => throw _privateConstructorUsedError;

  /// Serializes this SettingsUpdateRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SettingsUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SettingsUpdateRequestCopyWith<SettingsUpdateRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsUpdateRequestCopyWith<$Res> {
  factory $SettingsUpdateRequestCopyWith(
    SettingsUpdateRequest value,
    $Res Function(SettingsUpdateRequest) then,
  ) = _$SettingsUpdateRequestCopyWithImpl<$Res, SettingsUpdateRequest>;
  @useResult
  $Res call({
    @JsonKey(name: 'enable_screen_share') bool enableScreenShare,
    @JsonKey(name: 'enable_app_in_app') bool enableAppInApp,
    @JsonKey(name: 'push_notifications') bool pushNotifications,
  });
}

/// @nodoc
class _$SettingsUpdateRequestCopyWithImpl<
  $Res,
  $Val extends SettingsUpdateRequest
>
    implements $SettingsUpdateRequestCopyWith<$Res> {
  _$SettingsUpdateRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SettingsUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enableScreenShare = null,
    Object? enableAppInApp = null,
    Object? pushNotifications = null,
  }) {
    return _then(
      _value.copyWith(
            enableScreenShare: null == enableScreenShare
                ? _value.enableScreenShare
                : enableScreenShare // ignore: cast_nullable_to_non_nullable
                      as bool,
            enableAppInApp: null == enableAppInApp
                ? _value.enableAppInApp
                : enableAppInApp // ignore: cast_nullable_to_non_nullable
                      as bool,
            pushNotifications: null == pushNotifications
                ? _value.pushNotifications
                : pushNotifications // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SettingsUpdateRequestImplCopyWith<$Res>
    implements $SettingsUpdateRequestCopyWith<$Res> {
  factory _$$SettingsUpdateRequestImplCopyWith(
    _$SettingsUpdateRequestImpl value,
    $Res Function(_$SettingsUpdateRequestImpl) then,
  ) = __$$SettingsUpdateRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'enable_screen_share') bool enableScreenShare,
    @JsonKey(name: 'enable_app_in_app') bool enableAppInApp,
    @JsonKey(name: 'push_notifications') bool pushNotifications,
  });
}

/// @nodoc
class __$$SettingsUpdateRequestImplCopyWithImpl<$Res>
    extends
        _$SettingsUpdateRequestCopyWithImpl<$Res, _$SettingsUpdateRequestImpl>
    implements _$$SettingsUpdateRequestImplCopyWith<$Res> {
  __$$SettingsUpdateRequestImplCopyWithImpl(
    _$SettingsUpdateRequestImpl _value,
    $Res Function(_$SettingsUpdateRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SettingsUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enableScreenShare = null,
    Object? enableAppInApp = null,
    Object? pushNotifications = null,
  }) {
    return _then(
      _$SettingsUpdateRequestImpl(
        enableScreenShare: null == enableScreenShare
            ? _value.enableScreenShare
            : enableScreenShare // ignore: cast_nullable_to_non_nullable
                  as bool,
        enableAppInApp: null == enableAppInApp
            ? _value.enableAppInApp
            : enableAppInApp // ignore: cast_nullable_to_non_nullable
                  as bool,
        pushNotifications: null == pushNotifications
            ? _value.pushNotifications
            : pushNotifications // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SettingsUpdateRequestImpl implements _SettingsUpdateRequest {
  const _$SettingsUpdateRequestImpl({
    @JsonKey(name: 'enable_screen_share') required this.enableScreenShare,
    @JsonKey(name: 'enable_app_in_app') required this.enableAppInApp,
    @JsonKey(name: 'push_notifications') required this.pushNotifications,
  });

  factory _$SettingsUpdateRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$SettingsUpdateRequestImplFromJson(json);

  @override
  @JsonKey(name: 'enable_screen_share')
  final bool enableScreenShare;
  @override
  @JsonKey(name: 'enable_app_in_app')
  final bool enableAppInApp;
  @override
  @JsonKey(name: 'push_notifications')
  final bool pushNotifications;

  @override
  String toString() {
    return 'SettingsUpdateRequest(enableScreenShare: $enableScreenShare, enableAppInApp: $enableAppInApp, pushNotifications: $pushNotifications)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsUpdateRequestImpl &&
            (identical(other.enableScreenShare, enableScreenShare) ||
                other.enableScreenShare == enableScreenShare) &&
            (identical(other.enableAppInApp, enableAppInApp) ||
                other.enableAppInApp == enableAppInApp) &&
            (identical(other.pushNotifications, pushNotifications) ||
                other.pushNotifications == pushNotifications));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    enableScreenShare,
    enableAppInApp,
    pushNotifications,
  );

  /// Create a copy of SettingsUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsUpdateRequestImplCopyWith<_$SettingsUpdateRequestImpl>
  get copyWith =>
      __$$SettingsUpdateRequestImplCopyWithImpl<_$SettingsUpdateRequestImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SettingsUpdateRequestImplToJson(this);
  }
}

abstract class _SettingsUpdateRequest implements SettingsUpdateRequest {
  const factory _SettingsUpdateRequest({
    @JsonKey(name: 'enable_screen_share') required final bool enableScreenShare,
    @JsonKey(name: 'enable_app_in_app') required final bool enableAppInApp,
    @JsonKey(name: 'push_notifications') required final bool pushNotifications,
  }) = _$SettingsUpdateRequestImpl;

  factory _SettingsUpdateRequest.fromJson(Map<String, dynamic> json) =
      _$SettingsUpdateRequestImpl.fromJson;

  @override
  @JsonKey(name: 'enable_screen_share')
  bool get enableScreenShare;
  @override
  @JsonKey(name: 'enable_app_in_app')
  bool get enableAppInApp;
  @override
  @JsonKey(name: 'push_notifications')
  bool get pushNotifications;

  /// Create a copy of SettingsUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SettingsUpdateRequestImplCopyWith<_$SettingsUpdateRequestImpl>
  get copyWith => throw _privateConstructorUsedError;
}
