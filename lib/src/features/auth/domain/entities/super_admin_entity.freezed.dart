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
  String get phone => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;

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
    String phone,
    String email,
    String role,
    String location,
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
    Object? phone = null,
    Object? email = null,
    Object? role = null,
    Object? location = null,
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
            phone: null == phone
                ? _value.phone
                : phone // ignore: cast_nullable_to_non_nullable
                      as String,
            email: null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                      as String,
            role: null == role
                ? _value.role
                : role // ignore: cast_nullable_to_non_nullable
                      as String,
            location: null == location
                ? _value.location
                : location // ignore: cast_nullable_to_non_nullable
                      as String,
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
    String phone,
    String email,
    String role,
    String location,
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
    Object? phone = null,
    Object? email = null,
    Object? role = null,
    Object? location = null,
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
        phone: null == phone
            ? _value.phone
            : phone // ignore: cast_nullable_to_non_nullable
                  as String,
        email: null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
        role: null == role
            ? _value.role
            : role // ignore: cast_nullable_to_non_nullable
                  as String,
        location: null == location
            ? _value.location
            : location // ignore: cast_nullable_to_non_nullable
                  as String,
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
    required this.phone,
    required this.email,
    required this.role,
    required this.location,
  });

  factory _$SuperAdminEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$SuperAdminEntityImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String phone;
  @override
  final String email;
  @override
  final String role;
  @override
  final String location;

  @override
  String toString() {
    return 'SuperAdminEntity(id: $id, name: $name, phone: $phone, email: $email, role: $role, location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuperAdminEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, phone, email, role, location);

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
    required final String phone,
    required final String email,
    required final String role,
    required final String location,
  }) = _$SuperAdminEntityImpl;

  factory _SuperAdminEntity.fromJson(Map<String, dynamic> json) =
      _$SuperAdminEntityImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get phone;
  @override
  String get email;
  @override
  String get role;
  @override
  String get location;

  /// Create a copy of SuperAdminEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuperAdminEntityImplCopyWith<_$SuperAdminEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
