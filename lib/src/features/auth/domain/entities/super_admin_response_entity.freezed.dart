// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'super_admin_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SuperAdminResponseEntity _$SuperAdminResponseEntityFromJson(
  Map<String, dynamic> json,
) {
  return _SuperAdminResponseEntity.fromJson(json);
}

/// @nodoc
mixin _$SuperAdminResponseEntity {
  bool get success => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  SuperAdminEntity get data => throw _privateConstructorUsedError;

  /// Serializes this SuperAdminResponseEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SuperAdminResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SuperAdminResponseEntityCopyWith<SuperAdminResponseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuperAdminResponseEntityCopyWith<$Res> {
  factory $SuperAdminResponseEntityCopyWith(
    SuperAdminResponseEntity value,
    $Res Function(SuperAdminResponseEntity) then,
  ) = _$SuperAdminResponseEntityCopyWithImpl<$Res, SuperAdminResponseEntity>;
  @useResult
  $Res call({bool success, String message, SuperAdminEntity data});

  $SuperAdminEntityCopyWith<$Res> get data;
}

/// @nodoc
class _$SuperAdminResponseEntityCopyWithImpl<
  $Res,
  $Val extends SuperAdminResponseEntity
>
    implements $SuperAdminResponseEntityCopyWith<$Res> {
  _$SuperAdminResponseEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SuperAdminResponseEntity
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
                      as SuperAdminEntity,
          )
          as $Val,
    );
  }

  /// Create a copy of SuperAdminResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SuperAdminEntityCopyWith<$Res> get data {
    return $SuperAdminEntityCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SuperAdminResponseEntityImplCopyWith<$Res>
    implements $SuperAdminResponseEntityCopyWith<$Res> {
  factory _$$SuperAdminResponseEntityImplCopyWith(
    _$SuperAdminResponseEntityImpl value,
    $Res Function(_$SuperAdminResponseEntityImpl) then,
  ) = __$$SuperAdminResponseEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, String message, SuperAdminEntity data});

  @override
  $SuperAdminEntityCopyWith<$Res> get data;
}

/// @nodoc
class __$$SuperAdminResponseEntityImplCopyWithImpl<$Res>
    extends
        _$SuperAdminResponseEntityCopyWithImpl<
          $Res,
          _$SuperAdminResponseEntityImpl
        >
    implements _$$SuperAdminResponseEntityImplCopyWith<$Res> {
  __$$SuperAdminResponseEntityImplCopyWithImpl(
    _$SuperAdminResponseEntityImpl _value,
    $Res Function(_$SuperAdminResponseEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SuperAdminResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(
      _$SuperAdminResponseEntityImpl(
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
                  as SuperAdminEntity,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SuperAdminResponseEntityImpl implements _SuperAdminResponseEntity {
  const _$SuperAdminResponseEntityImpl({
    required this.success,
    required this.message,
    required this.data,
  });

  factory _$SuperAdminResponseEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$SuperAdminResponseEntityImplFromJson(json);

  @override
  final bool success;
  @override
  final String message;
  @override
  final SuperAdminEntity data;

  @override
  String toString() {
    return 'SuperAdminResponseEntity(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuperAdminResponseEntityImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, data);

  /// Create a copy of SuperAdminResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuperAdminResponseEntityImplCopyWith<_$SuperAdminResponseEntityImpl>
  get copyWith =>
      __$$SuperAdminResponseEntityImplCopyWithImpl<
        _$SuperAdminResponseEntityImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SuperAdminResponseEntityImplToJson(this);
  }
}

abstract class _SuperAdminResponseEntity implements SuperAdminResponseEntity {
  const factory _SuperAdminResponseEntity({
    required final bool success,
    required final String message,
    required final SuperAdminEntity data,
  }) = _$SuperAdminResponseEntityImpl;

  factory _SuperAdminResponseEntity.fromJson(Map<String, dynamic> json) =
      _$SuperAdminResponseEntityImpl.fromJson;

  @override
  bool get success;
  @override
  String get message;
  @override
  SuperAdminEntity get data;

  /// Create a copy of SuperAdminResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuperAdminResponseEntityImplCopyWith<_$SuperAdminResponseEntityImpl>
  get copyWith => throw _privateConstructorUsedError;
}
