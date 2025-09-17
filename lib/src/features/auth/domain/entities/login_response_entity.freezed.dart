// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

LoginResponseEntity _$LoginResponseEntityFromJson(Map<String, dynamic> json) {
  return _LoginResponseEntity.fromJson(json);
}

/// @nodoc
mixin _$LoginResponseEntity {
  bool get success => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  LoginDataEntity get data => throw _privateConstructorUsedError;

  /// Serializes this LoginResponseEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LoginResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginResponseEntityCopyWith<LoginResponseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginResponseEntityCopyWith<$Res> {
  factory $LoginResponseEntityCopyWith(
    LoginResponseEntity value,
    $Res Function(LoginResponseEntity) then,
  ) = _$LoginResponseEntityCopyWithImpl<$Res, LoginResponseEntity>;
  @useResult
  $Res call({bool success, String message, LoginDataEntity data});

  $LoginDataEntityCopyWith<$Res> get data;
}

/// @nodoc
class _$LoginResponseEntityCopyWithImpl<$Res, $Val extends LoginResponseEntity>
    implements $LoginResponseEntityCopyWith<$Res> {
  _$LoginResponseEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(
      _value.copyWith(
            success: null == success
                ? _value.success
                : success // ignore: cast_nullable_to_non_nullable
                      as bool,
            message: null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                      as String,
            data: null == data
                ? _value.data
                : data // ignore: cast_nullable_to_non_nullable
                      as LoginDataEntity,
          )
          as $Val,
    );
  }

  /// Create a copy of LoginResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LoginDataEntityCopyWith<$Res> get data {
    return $LoginDataEntityCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoginResponseEntityImplCopyWith<$Res>
    implements $LoginResponseEntityCopyWith<$Res> {
  factory _$$LoginResponseEntityImplCopyWith(
    _$LoginResponseEntityImpl value,
    $Res Function(_$LoginResponseEntityImpl) then,
  ) = __$$LoginResponseEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, String message, LoginDataEntity data});

  @override
  $LoginDataEntityCopyWith<$Res> get data;
}

/// @nodoc
class __$$LoginResponseEntityImplCopyWithImpl<$Res>
    extends _$LoginResponseEntityCopyWithImpl<$Res, _$LoginResponseEntityImpl>
    implements _$$LoginResponseEntityImplCopyWith<$Res> {
  __$$LoginResponseEntityImplCopyWithImpl(
    _$LoginResponseEntityImpl _value,
    $Res Function(_$LoginResponseEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LoginResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(
      _$LoginResponseEntityImpl(
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
        data: null == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                  as LoginDataEntity,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginResponseEntityImpl implements _LoginResponseEntity {
  const _$LoginResponseEntityImpl({
    required this.success,
    required this.message,
    required this.data,
  });

  factory _$LoginResponseEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginResponseEntityImplFromJson(json);

  @override
  final bool success;
  @override
  final String message;
  @override
  final LoginDataEntity data;

  @override
  String toString() {
    return 'LoginResponseEntity(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginResponseEntityImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, data);

  /// Create a copy of LoginResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginResponseEntityImplCopyWith<_$LoginResponseEntityImpl> get copyWith =>
      __$$LoginResponseEntityImplCopyWithImpl<_$LoginResponseEntityImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginResponseEntityImplToJson(this);
  }
}

abstract class _LoginResponseEntity implements LoginResponseEntity {
  const factory _LoginResponseEntity({
    required final bool success,
    required final String message,
    required final LoginDataEntity data,
  }) = _$LoginResponseEntityImpl;

  factory _LoginResponseEntity.fromJson(Map<String, dynamic> json) =
      _$LoginResponseEntityImpl.fromJson;

  @override
  bool get success;
  @override
  String get message;
  @override
  LoginDataEntity get data;

  /// Create a copy of LoginResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginResponseEntityImplCopyWith<_$LoginResponseEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LoginDataEntity _$LoginDataEntityFromJson(Map<String, dynamic> json) {
  return _LoginDataEntity.fromJson(json);
}

/// @nodoc
mixin _$LoginDataEntity {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  bool get role => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  String get refreshToken => throw _privateConstructorUsedError;
  DateTime get expiresAt => throw _privateConstructorUsedError;
  DateTime get refreshTokenExpiry => throw _privateConstructorUsedError;

  /// Serializes this LoginDataEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LoginDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginDataEntityCopyWith<LoginDataEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginDataEntityCopyWith<$Res> {
  factory $LoginDataEntityCopyWith(
    LoginDataEntity value,
    $Res Function(LoginDataEntity) then,
  ) = _$LoginDataEntityCopyWithImpl<$Res, LoginDataEntity>;
  @useResult
  $Res call({
    int id,
    String name,
    String email,
    bool role,
    String token,
    String refreshToken,
    DateTime expiresAt,
    DateTime refreshTokenExpiry,
  });
}

/// @nodoc
class _$LoginDataEntityCopyWithImpl<$Res, $Val extends LoginDataEntity>
    implements $LoginDataEntityCopyWith<$Res> {
  _$LoginDataEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? role = null,
    Object? token = null,
    Object? refreshToken = null,
    Object? expiresAt = null,
    Object? refreshTokenExpiry = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            email: null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                      as String,
            role: null == role
                ? _value.role
                : role // ignore: cast_nullable_to_non_nullable
                      as bool,
            token: null == token
                ? _value.token
                : token // ignore: cast_nullable_to_non_nullable
                      as String,
            refreshToken: null == refreshToken
                ? _value.refreshToken
                : refreshToken // ignore: cast_nullable_to_non_nullable
                      as String,
            expiresAt: null == expiresAt
                ? _value.expiresAt
                : expiresAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            refreshTokenExpiry: null == refreshTokenExpiry
                ? _value.refreshTokenExpiry
                : refreshTokenExpiry // ignore: cast_nullable_to_non_nullable
                      as DateTime,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LoginDataEntityImplCopyWith<$Res>
    implements $LoginDataEntityCopyWith<$Res> {
  factory _$$LoginDataEntityImplCopyWith(
    _$LoginDataEntityImpl value,
    $Res Function(_$LoginDataEntityImpl) then,
  ) = __$$LoginDataEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String name,
    String email,
    bool role,
    String token,
    String refreshToken,
    DateTime expiresAt,
    DateTime refreshTokenExpiry,
  });
}

/// @nodoc
class __$$LoginDataEntityImplCopyWithImpl<$Res>
    extends _$LoginDataEntityCopyWithImpl<$Res, _$LoginDataEntityImpl>
    implements _$$LoginDataEntityImplCopyWith<$Res> {
  __$$LoginDataEntityImplCopyWithImpl(
    _$LoginDataEntityImpl _value,
    $Res Function(_$LoginDataEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LoginDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? role = null,
    Object? token = null,
    Object? refreshToken = null,
    Object? expiresAt = null,
    Object? refreshTokenExpiry = null,
  }) {
    return _then(
      _$LoginDataEntityImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        email: null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
        role: null == role
            ? _value.role
            : role // ignore: cast_nullable_to_non_nullable
                  as bool,
        token: null == token
            ? _value.token
            : token // ignore: cast_nullable_to_non_nullable
                  as String,
        refreshToken: null == refreshToken
            ? _value.refreshToken
            : refreshToken // ignore: cast_nullable_to_non_nullable
                  as String,
        expiresAt: null == expiresAt
            ? _value.expiresAt
            : expiresAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        refreshTokenExpiry: null == refreshTokenExpiry
            ? _value.refreshTokenExpiry
            : refreshTokenExpiry // ignore: cast_nullable_to_non_nullable
                  as DateTime,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginDataEntityImpl implements _LoginDataEntity {
  const _$LoginDataEntityImpl({
    required this.id,
    required this.name,
    required this.email,
    required this.role,
    required this.token,
    required this.refreshToken,
    required this.expiresAt,
    required this.refreshTokenExpiry,
  });

  factory _$LoginDataEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginDataEntityImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String email;
  @override
  final bool role;
  @override
  final String token;
  @override
  final String refreshToken;
  @override
  final DateTime expiresAt;
  @override
  final DateTime refreshTokenExpiry;

  @override
  String toString() {
    return 'LoginDataEntity(id: $id, name: $name, email: $email, role: $role, token: $token, refreshToken: $refreshToken, expiresAt: $expiresAt, refreshTokenExpiry: $refreshTokenExpiry)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginDataEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.refreshTokenExpiry, refreshTokenExpiry) ||
                other.refreshTokenExpiry == refreshTokenExpiry));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    email,
    role,
    token,
    refreshToken,
    expiresAt,
    refreshTokenExpiry,
  );

  /// Create a copy of LoginDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginDataEntityImplCopyWith<_$LoginDataEntityImpl> get copyWith =>
      __$$LoginDataEntityImplCopyWithImpl<_$LoginDataEntityImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginDataEntityImplToJson(this);
  }
}

abstract class _LoginDataEntity implements LoginDataEntity {
  const factory _LoginDataEntity({
    required final int id,
    required final String name,
    required final String email,
    required final bool role,
    required final String token,
    required final String refreshToken,
    required final DateTime expiresAt,
    required final DateTime refreshTokenExpiry,
  }) = _$LoginDataEntityImpl;

  factory _LoginDataEntity.fromJson(Map<String, dynamic> json) =
      _$LoginDataEntityImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get email;
  @override
  bool get role;
  @override
  String get token;
  @override
  String get refreshToken;
  @override
  DateTime get expiresAt;
  @override
  DateTime get refreshTokenExpiry;

  /// Create a copy of LoginDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginDataEntityImplCopyWith<_$LoginDataEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
