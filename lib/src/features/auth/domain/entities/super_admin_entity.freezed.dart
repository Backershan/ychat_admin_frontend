// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'super_admin_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SuperAdminEntity _$SuperAdminEntityFromJson(Map<String, dynamic> json) {
  return _SuperAdminEntity.fromJson(json);
}

/// @nodoc
mixin _$SuperAdminEntity {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  bool get role => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  String get refreshToken => throw _privateConstructorUsedError;
  DateTime get expiresAt => throw _privateConstructorUsedError;
  DateTime get refreshTokenExpiry => throw _privateConstructorUsedError;

  /// Serializes this SuperAdminEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SuperAdminEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SuperAdminEntityCopyWith<SuperAdminEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuperAdminEntityCopyWith<$Res> {
  factory $SuperAdminEntityCopyWith(
    SuperAdminEntity value,
    $Res Function(SuperAdminEntity) then,
  ) = _$SuperAdminEntityCopyWithImpl<$Res, SuperAdminEntity>;
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
class _$SuperAdminEntityCopyWithImpl<$Res, $Val extends SuperAdminEntity>
    implements $SuperAdminEntityCopyWith<$Res> {
  _$SuperAdminEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SuperAdminEntity
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
abstract class _$$SuperAdminEntityImplCopyWith<$Res>
    implements $SuperAdminEntityCopyWith<$Res> {
  factory _$$SuperAdminEntityImplCopyWith(
    _$SuperAdminEntityImpl value,
    $Res Function(_$SuperAdminEntityImpl) then,
  ) = __$$SuperAdminEntityImplCopyWithImpl<$Res>;
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
class __$$SuperAdminEntityImplCopyWithImpl<$Res>
    extends _$SuperAdminEntityCopyWithImpl<$Res, _$SuperAdminEntityImpl>
    implements _$$SuperAdminEntityImplCopyWith<$Res> {
  __$$SuperAdminEntityImplCopyWithImpl(
    _$SuperAdminEntityImpl _value,
    $Res Function(_$SuperAdminEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SuperAdminEntity
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
      _$SuperAdminEntityImpl(
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
class _$SuperAdminEntityImpl implements _SuperAdminEntity {
  const _$SuperAdminEntityImpl({
    required this.id,
    required this.name,
    required this.email,
    required this.role,
    required this.token,
    required this.refreshToken,
    required this.expiresAt,
    required this.refreshTokenExpiry,
  });

  factory _$SuperAdminEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$SuperAdminEntityImplFromJson(json);

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
    return 'SuperAdminEntity(id: $id, name: $name, email: $email, role: $role, token: $token, refreshToken: $refreshToken, expiresAt: $expiresAt, refreshTokenExpiry: $refreshTokenExpiry)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuperAdminEntityImpl &&
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

  /// Create a copy of SuperAdminEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuperAdminEntityImplCopyWith<_$SuperAdminEntityImpl> get copyWith =>
      __$$SuperAdminEntityImplCopyWithImpl<_$SuperAdminEntityImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SuperAdminEntityImplToJson(this);
  }
}

abstract class _SuperAdminEntity implements SuperAdminEntity {
  const factory _SuperAdminEntity({
    required final int id,
    required final String name,
    required final String email,
    required final bool role,
    required final String token,
    required final String refreshToken,
    required final DateTime expiresAt,
    required final DateTime refreshTokenExpiry,
  }) = _$SuperAdminEntityImpl;

  factory _SuperAdminEntity.fromJson(Map<String, dynamic> json) =
      _$SuperAdminEntityImpl.fromJson;

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

  /// Create a copy of SuperAdminEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuperAdminEntityImplCopyWith<_$SuperAdminEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
