// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SettingsEntity _$SettingsEntityFromJson(Map<String, dynamic> json) {
  return _SettingsEntity.fromJson(json);
}

/// @nodoc
mixin _$SettingsEntity {
  bool get enableScreenShare => throw _privateConstructorUsedError;
  bool get enableAppInApp => throw _privateConstructorUsedError;
  bool get pushNotifications => throw _privateConstructorUsedError;
  String get defaultLanguage => throw _privateConstructorUsedError;
  bool get maintenanceMode => throw _privateConstructorUsedError;
  bool get registrationEnabled => throw _privateConstructorUsedError;
  String get maxFileSize => throw _privateConstructorUsedError;
  int get maxUsersPerGroup => throw _privateConstructorUsedError;
  bool get autoBackupEnabled => throw _privateConstructorUsedError;
  SecurityFeatures get securityFeatures => throw _privateConstructorUsedError;
  SystemInfo get systemInfo => throw _privateConstructorUsedError;

  /// Serializes this SettingsEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SettingsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SettingsEntityCopyWith<SettingsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsEntityCopyWith<$Res> {
  factory $SettingsEntityCopyWith(
    SettingsEntity value,
    $Res Function(SettingsEntity) then,
  ) = _$SettingsEntityCopyWithImpl<$Res, SettingsEntity>;
  @useResult
  $Res call({
    bool enableScreenShare,
    bool enableAppInApp,
    bool pushNotifications,
    String defaultLanguage,
    bool maintenanceMode,
    bool registrationEnabled,
    String maxFileSize,
    int maxUsersPerGroup,
    bool autoBackupEnabled,
    SecurityFeatures securityFeatures,
    SystemInfo systemInfo,
  });

  $SecurityFeaturesCopyWith<$Res> get securityFeatures;
  $SystemInfoCopyWith<$Res> get systemInfo;
}

/// @nodoc
class _$SettingsEntityCopyWithImpl<$Res, $Val extends SettingsEntity>
    implements $SettingsEntityCopyWith<$Res> {
  _$SettingsEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SettingsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enableScreenShare = null,
    Object? enableAppInApp = null,
    Object? pushNotifications = null,
    Object? defaultLanguage = null,
    Object? maintenanceMode = null,
    Object? registrationEnabled = null,
    Object? maxFileSize = null,
    Object? maxUsersPerGroup = null,
    Object? autoBackupEnabled = null,
    Object? securityFeatures = null,
    Object? systemInfo = null,
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
            defaultLanguage: null == defaultLanguage
                ? _value.defaultLanguage
                : defaultLanguage // ignore: cast_nullable_to_non_nullable
                      as String,
            maintenanceMode: null == maintenanceMode
                ? _value.maintenanceMode
                : maintenanceMode // ignore: cast_nullable_to_non_nullable
                      as bool,
            registrationEnabled: null == registrationEnabled
                ? _value.registrationEnabled
                : registrationEnabled // ignore: cast_nullable_to_non_nullable
                      as bool,
            maxFileSize: null == maxFileSize
                ? _value.maxFileSize
                : maxFileSize // ignore: cast_nullable_to_non_nullable
                      as String,
            maxUsersPerGroup: null == maxUsersPerGroup
                ? _value.maxUsersPerGroup
                : maxUsersPerGroup // ignore: cast_nullable_to_non_nullable
                      as int,
            autoBackupEnabled: null == autoBackupEnabled
                ? _value.autoBackupEnabled
                : autoBackupEnabled // ignore: cast_nullable_to_non_nullable
                      as bool,
            securityFeatures: null == securityFeatures
                ? _value.securityFeatures
                : securityFeatures // ignore: cast_nullable_to_non_nullable
                      as SecurityFeatures,
            systemInfo: null == systemInfo
                ? _value.systemInfo
                : systemInfo // ignore: cast_nullable_to_non_nullable
                      as SystemInfo,
          )
          as $Val,
    );
  }

  /// Create a copy of SettingsEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SecurityFeaturesCopyWith<$Res> get securityFeatures {
    return $SecurityFeaturesCopyWith<$Res>(_value.securityFeatures, (value) {
      return _then(_value.copyWith(securityFeatures: value) as $Val);
    });
  }

  /// Create a copy of SettingsEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SystemInfoCopyWith<$Res> get systemInfo {
    return $SystemInfoCopyWith<$Res>(_value.systemInfo, (value) {
      return _then(_value.copyWith(systemInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SettingsEntityImplCopyWith<$Res>
    implements $SettingsEntityCopyWith<$Res> {
  factory _$$SettingsEntityImplCopyWith(
    _$SettingsEntityImpl value,
    $Res Function(_$SettingsEntityImpl) then,
  ) = __$$SettingsEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool enableScreenShare,
    bool enableAppInApp,
    bool pushNotifications,
    String defaultLanguage,
    bool maintenanceMode,
    bool registrationEnabled,
    String maxFileSize,
    int maxUsersPerGroup,
    bool autoBackupEnabled,
    SecurityFeatures securityFeatures,
    SystemInfo systemInfo,
  });

  @override
  $SecurityFeaturesCopyWith<$Res> get securityFeatures;
  @override
  $SystemInfoCopyWith<$Res> get systemInfo;
}

/// @nodoc
class __$$SettingsEntityImplCopyWithImpl<$Res>
    extends _$SettingsEntityCopyWithImpl<$Res, _$SettingsEntityImpl>
    implements _$$SettingsEntityImplCopyWith<$Res> {
  __$$SettingsEntityImplCopyWithImpl(
    _$SettingsEntityImpl _value,
    $Res Function(_$SettingsEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SettingsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enableScreenShare = null,
    Object? enableAppInApp = null,
    Object? pushNotifications = null,
    Object? defaultLanguage = null,
    Object? maintenanceMode = null,
    Object? registrationEnabled = null,
    Object? maxFileSize = null,
    Object? maxUsersPerGroup = null,
    Object? autoBackupEnabled = null,
    Object? securityFeatures = null,
    Object? systemInfo = null,
  }) {
    return _then(
      _$SettingsEntityImpl(
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
        defaultLanguage: null == defaultLanguage
            ? _value.defaultLanguage
            : defaultLanguage // ignore: cast_nullable_to_non_nullable
                  as String,
        maintenanceMode: null == maintenanceMode
            ? _value.maintenanceMode
            : maintenanceMode // ignore: cast_nullable_to_non_nullable
                  as bool,
        registrationEnabled: null == registrationEnabled
            ? _value.registrationEnabled
            : registrationEnabled // ignore: cast_nullable_to_non_nullable
                  as bool,
        maxFileSize: null == maxFileSize
            ? _value.maxFileSize
            : maxFileSize // ignore: cast_nullable_to_non_nullable
                  as String,
        maxUsersPerGroup: null == maxUsersPerGroup
            ? _value.maxUsersPerGroup
            : maxUsersPerGroup // ignore: cast_nullable_to_non_nullable
                  as int,
        autoBackupEnabled: null == autoBackupEnabled
            ? _value.autoBackupEnabled
            : autoBackupEnabled // ignore: cast_nullable_to_non_nullable
                  as bool,
        securityFeatures: null == securityFeatures
            ? _value.securityFeatures
            : securityFeatures // ignore: cast_nullable_to_non_nullable
                  as SecurityFeatures,
        systemInfo: null == systemInfo
            ? _value.systemInfo
            : systemInfo // ignore: cast_nullable_to_non_nullable
                  as SystemInfo,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SettingsEntityImpl implements _SettingsEntity {
  const _$SettingsEntityImpl({
    required this.enableScreenShare,
    required this.enableAppInApp,
    required this.pushNotifications,
    required this.defaultLanguage,
    required this.maintenanceMode,
    required this.registrationEnabled,
    required this.maxFileSize,
    required this.maxUsersPerGroup,
    required this.autoBackupEnabled,
    required this.securityFeatures,
    required this.systemInfo,
  });

  factory _$SettingsEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$SettingsEntityImplFromJson(json);

  @override
  final bool enableScreenShare;
  @override
  final bool enableAppInApp;
  @override
  final bool pushNotifications;
  @override
  final String defaultLanguage;
  @override
  final bool maintenanceMode;
  @override
  final bool registrationEnabled;
  @override
  final String maxFileSize;
  @override
  final int maxUsersPerGroup;
  @override
  final bool autoBackupEnabled;
  @override
  final SecurityFeatures securityFeatures;
  @override
  final SystemInfo systemInfo;

  @override
  String toString() {
    return 'SettingsEntity(enableScreenShare: $enableScreenShare, enableAppInApp: $enableAppInApp, pushNotifications: $pushNotifications, defaultLanguage: $defaultLanguage, maintenanceMode: $maintenanceMode, registrationEnabled: $registrationEnabled, maxFileSize: $maxFileSize, maxUsersPerGroup: $maxUsersPerGroup, autoBackupEnabled: $autoBackupEnabled, securityFeatures: $securityFeatures, systemInfo: $systemInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsEntityImpl &&
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

  /// Create a copy of SettingsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsEntityImplCopyWith<_$SettingsEntityImpl> get copyWith =>
      __$$SettingsEntityImplCopyWithImpl<_$SettingsEntityImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SettingsEntityImplToJson(this);
  }
}

abstract class _SettingsEntity implements SettingsEntity {
  const factory _SettingsEntity({
    required final bool enableScreenShare,
    required final bool enableAppInApp,
    required final bool pushNotifications,
    required final String defaultLanguage,
    required final bool maintenanceMode,
    required final bool registrationEnabled,
    required final String maxFileSize,
    required final int maxUsersPerGroup,
    required final bool autoBackupEnabled,
    required final SecurityFeatures securityFeatures,
    required final SystemInfo systemInfo,
  }) = _$SettingsEntityImpl;

  factory _SettingsEntity.fromJson(Map<String, dynamic> json) =
      _$SettingsEntityImpl.fromJson;

  @override
  bool get enableScreenShare;
  @override
  bool get enableAppInApp;
  @override
  bool get pushNotifications;
  @override
  String get defaultLanguage;
  @override
  bool get maintenanceMode;
  @override
  bool get registrationEnabled;
  @override
  String get maxFileSize;
  @override
  int get maxUsersPerGroup;
  @override
  bool get autoBackupEnabled;
  @override
  SecurityFeatures get securityFeatures;
  @override
  SystemInfo get systemInfo;

  /// Create a copy of SettingsEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SettingsEntityImplCopyWith<_$SettingsEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SecurityFeatures _$SecurityFeaturesFromJson(Map<String, dynamic> json) {
  return _SecurityFeatures.fromJson(json);
}

/// @nodoc
mixin _$SecurityFeatures {
  bool get twoFactorRequired => throw _privateConstructorUsedError;
  String get passwordPolicy => throw _privateConstructorUsedError;
  int get sessionTimeout => throw _privateConstructorUsedError;

  /// Serializes this SecurityFeatures to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SecurityFeatures
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SecurityFeaturesCopyWith<SecurityFeatures> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SecurityFeaturesCopyWith<$Res> {
  factory $SecurityFeaturesCopyWith(
    SecurityFeatures value,
    $Res Function(SecurityFeatures) then,
  ) = _$SecurityFeaturesCopyWithImpl<$Res, SecurityFeatures>;
  @useResult
  $Res call({
    bool twoFactorRequired,
    String passwordPolicy,
    int sessionTimeout,
  });
}

/// @nodoc
class _$SecurityFeaturesCopyWithImpl<$Res, $Val extends SecurityFeatures>
    implements $SecurityFeaturesCopyWith<$Res> {
  _$SecurityFeaturesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SecurityFeatures
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
abstract class _$$SecurityFeaturesImplCopyWith<$Res>
    implements $SecurityFeaturesCopyWith<$Res> {
  factory _$$SecurityFeaturesImplCopyWith(
    _$SecurityFeaturesImpl value,
    $Res Function(_$SecurityFeaturesImpl) then,
  ) = __$$SecurityFeaturesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool twoFactorRequired,
    String passwordPolicy,
    int sessionTimeout,
  });
}

/// @nodoc
class __$$SecurityFeaturesImplCopyWithImpl<$Res>
    extends _$SecurityFeaturesCopyWithImpl<$Res, _$SecurityFeaturesImpl>
    implements _$$SecurityFeaturesImplCopyWith<$Res> {
  __$$SecurityFeaturesImplCopyWithImpl(
    _$SecurityFeaturesImpl _value,
    $Res Function(_$SecurityFeaturesImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SecurityFeatures
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? twoFactorRequired = null,
    Object? passwordPolicy = null,
    Object? sessionTimeout = null,
  }) {
    return _then(
      _$SecurityFeaturesImpl(
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
class _$SecurityFeaturesImpl implements _SecurityFeatures {
  const _$SecurityFeaturesImpl({
    required this.twoFactorRequired,
    required this.passwordPolicy,
    required this.sessionTimeout,
  });

  factory _$SecurityFeaturesImpl.fromJson(Map<String, dynamic> json) =>
      _$$SecurityFeaturesImplFromJson(json);

  @override
  final bool twoFactorRequired;
  @override
  final String passwordPolicy;
  @override
  final int sessionTimeout;

  @override
  String toString() {
    return 'SecurityFeatures(twoFactorRequired: $twoFactorRequired, passwordPolicy: $passwordPolicy, sessionTimeout: $sessionTimeout)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SecurityFeaturesImpl &&
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

  /// Create a copy of SecurityFeatures
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SecurityFeaturesImplCopyWith<_$SecurityFeaturesImpl> get copyWith =>
      __$$SecurityFeaturesImplCopyWithImpl<_$SecurityFeaturesImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SecurityFeaturesImplToJson(this);
  }
}

abstract class _SecurityFeatures implements SecurityFeatures {
  const factory _SecurityFeatures({
    required final bool twoFactorRequired,
    required final String passwordPolicy,
    required final int sessionTimeout,
  }) = _$SecurityFeaturesImpl;

  factory _SecurityFeatures.fromJson(Map<String, dynamic> json) =
      _$SecurityFeaturesImpl.fromJson;

  @override
  bool get twoFactorRequired;
  @override
  String get passwordPolicy;
  @override
  int get sessionTimeout;

  /// Create a copy of SecurityFeatures
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SecurityFeaturesImplCopyWith<_$SecurityFeaturesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SystemInfo _$SystemInfoFromJson(Map<String, dynamic> json) {
  return _SystemInfo.fromJson(json);
}

/// @nodoc
mixin _$SystemInfo {
  String get version => throw _privateConstructorUsedError;
  String get lastUpdated => throw _privateConstructorUsedError;
  double get uptime => throw _privateConstructorUsedError;

  /// Serializes this SystemInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SystemInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SystemInfoCopyWith<SystemInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SystemInfoCopyWith<$Res> {
  factory $SystemInfoCopyWith(
    SystemInfo value,
    $Res Function(SystemInfo) then,
  ) = _$SystemInfoCopyWithImpl<$Res, SystemInfo>;
  @useResult
  $Res call({String version, String lastUpdated, double uptime});
}

/// @nodoc
class _$SystemInfoCopyWithImpl<$Res, $Val extends SystemInfo>
    implements $SystemInfoCopyWith<$Res> {
  _$SystemInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SystemInfo
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
abstract class _$$SystemInfoImplCopyWith<$Res>
    implements $SystemInfoCopyWith<$Res> {
  factory _$$SystemInfoImplCopyWith(
    _$SystemInfoImpl value,
    $Res Function(_$SystemInfoImpl) then,
  ) = __$$SystemInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String version, String lastUpdated, double uptime});
}

/// @nodoc
class __$$SystemInfoImplCopyWithImpl<$Res>
    extends _$SystemInfoCopyWithImpl<$Res, _$SystemInfoImpl>
    implements _$$SystemInfoImplCopyWith<$Res> {
  __$$SystemInfoImplCopyWithImpl(
    _$SystemInfoImpl _value,
    $Res Function(_$SystemInfoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SystemInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = null,
    Object? lastUpdated = null,
    Object? uptime = null,
  }) {
    return _then(
      _$SystemInfoImpl(
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
class _$SystemInfoImpl implements _SystemInfo {
  const _$SystemInfoImpl({
    required this.version,
    required this.lastUpdated,
    required this.uptime,
  });

  factory _$SystemInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SystemInfoImplFromJson(json);

  @override
  final String version;
  @override
  final String lastUpdated;
  @override
  final double uptime;

  @override
  String toString() {
    return 'SystemInfo(version: $version, lastUpdated: $lastUpdated, uptime: $uptime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SystemInfoImpl &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.uptime, uptime) || other.uptime == uptime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, version, lastUpdated, uptime);

  /// Create a copy of SystemInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SystemInfoImplCopyWith<_$SystemInfoImpl> get copyWith =>
      __$$SystemInfoImplCopyWithImpl<_$SystemInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SystemInfoImplToJson(this);
  }
}

abstract class _SystemInfo implements SystemInfo {
  const factory _SystemInfo({
    required final String version,
    required final String lastUpdated,
    required final double uptime,
  }) = _$SystemInfoImpl;

  factory _SystemInfo.fromJson(Map<String, dynamic> json) =
      _$SystemInfoImpl.fromJson;

  @override
  String get version;
  @override
  String get lastUpdated;
  @override
  double get uptime;

  /// Create a copy of SystemInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SystemInfoImplCopyWith<_$SystemInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SettingsResponse _$SettingsResponseFromJson(Map<String, dynamic> json) {
  return _SettingsResponse.fromJson(json);
}

/// @nodoc
mixin _$SettingsResponse {
  bool get success => throw _privateConstructorUsedError;
  SettingsEntity get data => throw _privateConstructorUsedError;

  /// Serializes this SettingsResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SettingsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SettingsResponseCopyWith<SettingsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsResponseCopyWith<$Res> {
  factory $SettingsResponseCopyWith(
    SettingsResponse value,
    $Res Function(SettingsResponse) then,
  ) = _$SettingsResponseCopyWithImpl<$Res, SettingsResponse>;
  @useResult
  $Res call({bool success, SettingsEntity data});

  $SettingsEntityCopyWith<$Res> get data;
}

/// @nodoc
class _$SettingsResponseCopyWithImpl<$Res, $Val extends SettingsResponse>
    implements $SettingsResponseCopyWith<$Res> {
  _$SettingsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SettingsResponse
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
                      as SettingsEntity,
          )
          as $Val,
    );
  }

  /// Create a copy of SettingsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SettingsEntityCopyWith<$Res> get data {
    return $SettingsEntityCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SettingsResponseImplCopyWith<$Res>
    implements $SettingsResponseCopyWith<$Res> {
  factory _$$SettingsResponseImplCopyWith(
    _$SettingsResponseImpl value,
    $Res Function(_$SettingsResponseImpl) then,
  ) = __$$SettingsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, SettingsEntity data});

  @override
  $SettingsEntityCopyWith<$Res> get data;
}

/// @nodoc
class __$$SettingsResponseImplCopyWithImpl<$Res>
    extends _$SettingsResponseCopyWithImpl<$Res, _$SettingsResponseImpl>
    implements _$$SettingsResponseImplCopyWith<$Res> {
  __$$SettingsResponseImplCopyWithImpl(
    _$SettingsResponseImpl _value,
    $Res Function(_$SettingsResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SettingsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? success = null, Object? data = null}) {
    return _then(
      _$SettingsResponseImpl(
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
        data: null == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                  as SettingsEntity,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SettingsResponseImpl implements _SettingsResponse {
  const _$SettingsResponseImpl({required this.success, required this.data});

  factory _$SettingsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SettingsResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final SettingsEntity data;

  @override
  String toString() {
    return 'SettingsResponse(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data);

  /// Create a copy of SettingsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsResponseImplCopyWith<_$SettingsResponseImpl> get copyWith =>
      __$$SettingsResponseImplCopyWithImpl<_$SettingsResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SettingsResponseImplToJson(this);
  }
}

abstract class _SettingsResponse implements SettingsResponse {
  const factory _SettingsResponse({
    required final bool success,
    required final SettingsEntity data,
  }) = _$SettingsResponseImpl;

  factory _SettingsResponse.fromJson(Map<String, dynamic> json) =
      _$SettingsResponseImpl.fromJson;

  @override
  bool get success;
  @override
  SettingsEntity get data;

  /// Create a copy of SettingsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SettingsResponseImplCopyWith<_$SettingsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
