// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

UserEntity _$UserEntityFromJson(Map<String, dynamic> json) {
  return _UserEntity.fromJson(json);
}

/// @nodoc
mixin _$UserEntity {
  int get id => throw _privateConstructorUsedError;
  String? get name =>
      throw _privateConstructorUsedError; // Changed from firstname to name to match API
  String? get email => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  bool? get isActive =>
      throw _privateConstructorUsedError; // Changed from is_active to isActive for consistency
  String? get createdAt =>
      throw _privateConstructorUsedError; // Changed from created_at to createdAt
  String? get lastSeen =>
      throw _privateConstructorUsedError; // Changed from last_seen to lastSeen
  // Keep additional fields for backward compatibility
  String? get firstname => throw _privateConstructorUsedError;
  String? get lastname => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get uid => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;
  String? get ipAddress => throw _privateConstructorUsedError;
  String? get deviceInfo => throw _privateConstructorUsedError;
  String? get lastLoginAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  String? get banReason => throw _privateConstructorUsedError;
  String? get banType => throw _privateConstructorUsedError;
  String? get deactivationReason => throw _privateConstructorUsedError;
  bool? get isBanned => throw _privateConstructorUsedError;

  /// Serializes this UserEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserEntityCopyWith<UserEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEntityCopyWith<$Res> {
  factory $UserEntityCopyWith(
    UserEntity value,
    $Res Function(UserEntity) then,
  ) = _$UserEntityCopyWithImpl<$Res, UserEntity>;
  @useResult
  $Res call({
    int id,
    String? name,
    String? email,
    String? status,
    bool? isActive,
    String? createdAt,
    String? lastSeen,
    String? firstname,
    String? lastname,
    String? phone,
    String? uid,
    String? avatar,
    String? role,
    String? ipAddress,
    String? deviceInfo,
    String? lastLoginAt,
    String? updatedAt,
    String? banReason,
    String? banType,
    String? deactivationReason,
    bool? isBanned,
  });
}

/// @nodoc
class _$UserEntityCopyWithImpl<$Res, $Val extends UserEntity>
    implements $UserEntityCopyWith<$Res> {
  _$UserEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? email = freezed,
    Object? status = freezed,
    Object? isActive = freezed,
    Object? createdAt = freezed,
    Object? lastSeen = freezed,
    Object? firstname = freezed,
    Object? lastname = freezed,
    Object? phone = freezed,
    Object? uid = freezed,
    Object? avatar = freezed,
    Object? role = freezed,
    Object? ipAddress = freezed,
    Object? deviceInfo = freezed,
    Object? lastLoginAt = freezed,
    Object? updatedAt = freezed,
    Object? banReason = freezed,
    Object? banType = freezed,
    Object? deactivationReason = freezed,
    Object? isBanned = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            name: freezed == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String?,
            email: freezed == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                      as String?,
            status: freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String?,
            isActive: freezed == isActive
                ? _value.isActive
                : isActive // ignore: cast_nullable_to_non_nullable
                      as bool?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            lastSeen: freezed == lastSeen
                ? _value.lastSeen
                : lastSeen // ignore: cast_nullable_to_non_nullable
                      as String?,
            firstname: freezed == firstname
                ? _value.firstname
                : firstname // ignore: cast_nullable_to_non_nullable
                      as String?,
            lastname: freezed == lastname
                ? _value.lastname
                : lastname // ignore: cast_nullable_to_non_nullable
                      as String?,
            phone: freezed == phone
                ? _value.phone
                : phone // ignore: cast_nullable_to_non_nullable
                      as String?,
            uid: freezed == uid
                ? _value.uid
                : uid // ignore: cast_nullable_to_non_nullable
                      as String?,
            avatar: freezed == avatar
                ? _value.avatar
                : avatar // ignore: cast_nullable_to_non_nullable
                      as String?,
            role: freezed == role
                ? _value.role
                : role // ignore: cast_nullable_to_non_nullable
                      as String?,
            ipAddress: freezed == ipAddress
                ? _value.ipAddress
                : ipAddress // ignore: cast_nullable_to_non_nullable
                      as String?,
            deviceInfo: freezed == deviceInfo
                ? _value.deviceInfo
                : deviceInfo // ignore: cast_nullable_to_non_nullable
                      as String?,
            lastLoginAt: freezed == lastLoginAt
                ? _value.lastLoginAt
                : lastLoginAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            banReason: freezed == banReason
                ? _value.banReason
                : banReason // ignore: cast_nullable_to_non_nullable
                      as String?,
            banType: freezed == banType
                ? _value.banType
                : banType // ignore: cast_nullable_to_non_nullable
                      as String?,
            deactivationReason: freezed == deactivationReason
                ? _value.deactivationReason
                : deactivationReason // ignore: cast_nullable_to_non_nullable
                      as String?,
            isBanned: freezed == isBanned
                ? _value.isBanned
                : isBanned // ignore: cast_nullable_to_non_nullable
                      as bool?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UserEntityImplCopyWith<$Res>
    implements $UserEntityCopyWith<$Res> {
  factory _$$UserEntityImplCopyWith(
    _$UserEntityImpl value,
    $Res Function(_$UserEntityImpl) then,
  ) = __$$UserEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String? name,
    String? email,
    String? status,
    bool? isActive,
    String? createdAt,
    String? lastSeen,
    String? firstname,
    String? lastname,
    String? phone,
    String? uid,
    String? avatar,
    String? role,
    String? ipAddress,
    String? deviceInfo,
    String? lastLoginAt,
    String? updatedAt,
    String? banReason,
    String? banType,
    String? deactivationReason,
    bool? isBanned,
  });
}

/// @nodoc
class __$$UserEntityImplCopyWithImpl<$Res>
    extends _$UserEntityCopyWithImpl<$Res, _$UserEntityImpl>
    implements _$$UserEntityImplCopyWith<$Res> {
  __$$UserEntityImplCopyWithImpl(
    _$UserEntityImpl _value,
    $Res Function(_$UserEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? email = freezed,
    Object? status = freezed,
    Object? isActive = freezed,
    Object? createdAt = freezed,
    Object? lastSeen = freezed,
    Object? firstname = freezed,
    Object? lastname = freezed,
    Object? phone = freezed,
    Object? uid = freezed,
    Object? avatar = freezed,
    Object? role = freezed,
    Object? ipAddress = freezed,
    Object? deviceInfo = freezed,
    Object? lastLoginAt = freezed,
    Object? updatedAt = freezed,
    Object? banReason = freezed,
    Object? banType = freezed,
    Object? deactivationReason = freezed,
    Object? isBanned = freezed,
  }) {
    return _then(
      _$UserEntityImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        name: freezed == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String?,
        email: freezed == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String?,
        status: freezed == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String?,
        isActive: freezed == isActive
            ? _value.isActive
            : isActive // ignore: cast_nullable_to_non_nullable
                  as bool?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        lastSeen: freezed == lastSeen
            ? _value.lastSeen
            : lastSeen // ignore: cast_nullable_to_non_nullable
                  as String?,
        firstname: freezed == firstname
            ? _value.firstname
            : firstname // ignore: cast_nullable_to_non_nullable
                  as String?,
        lastname: freezed == lastname
            ? _value.lastname
            : lastname // ignore: cast_nullable_to_non_nullable
                  as String?,
        phone: freezed == phone
            ? _value.phone
            : phone // ignore: cast_nullable_to_non_nullable
                  as String?,
        uid: freezed == uid
            ? _value.uid
            : uid // ignore: cast_nullable_to_non_nullable
                  as String?,
        avatar: freezed == avatar
            ? _value.avatar
            : avatar // ignore: cast_nullable_to_non_nullable
                  as String?,
        role: freezed == role
            ? _value.role
            : role // ignore: cast_nullable_to_non_nullable
                  as String?,
        ipAddress: freezed == ipAddress
            ? _value.ipAddress
            : ipAddress // ignore: cast_nullable_to_non_nullable
                  as String?,
        deviceInfo: freezed == deviceInfo
            ? _value.deviceInfo
            : deviceInfo // ignore: cast_nullable_to_non_nullable
                  as String?,
        lastLoginAt: freezed == lastLoginAt
            ? _value.lastLoginAt
            : lastLoginAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        banReason: freezed == banReason
            ? _value.banReason
            : banReason // ignore: cast_nullable_to_non_nullable
                  as String?,
        banType: freezed == banType
            ? _value.banType
            : banType // ignore: cast_nullable_to_non_nullable
                  as String?,
        deactivationReason: freezed == deactivationReason
            ? _value.deactivationReason
            : deactivationReason // ignore: cast_nullable_to_non_nullable
                  as String?,
        isBanned: freezed == isBanned
            ? _value.isBanned
            : isBanned // ignore: cast_nullable_to_non_nullable
                  as bool?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserEntityImpl implements _UserEntity {
  const _$UserEntityImpl({
    required this.id,
    this.name,
    this.email,
    this.status,
    this.isActive,
    this.createdAt,
    this.lastSeen,
    this.firstname,
    this.lastname,
    this.phone,
    this.uid,
    this.avatar,
    this.role,
    this.ipAddress,
    this.deviceInfo,
    this.lastLoginAt,
    this.updatedAt,
    this.banReason,
    this.banType,
    this.deactivationReason,
    this.isBanned,
  });

  factory _$UserEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserEntityImplFromJson(json);

  @override
  final int id;
  @override
  final String? name;
  // Changed from firstname to name to match API
  @override
  final String? email;
  @override
  final String? status;
  @override
  final bool? isActive;
  // Changed from is_active to isActive for consistency
  @override
  final String? createdAt;
  // Changed from created_at to createdAt
  @override
  final String? lastSeen;
  // Changed from last_seen to lastSeen
  // Keep additional fields for backward compatibility
  @override
  final String? firstname;
  @override
  final String? lastname;
  @override
  final String? phone;
  @override
  final String? uid;
  @override
  final String? avatar;
  @override
  final String? role;
  @override
  final String? ipAddress;
  @override
  final String? deviceInfo;
  @override
  final String? lastLoginAt;
  @override
  final String? updatedAt;
  @override
  final String? banReason;
  @override
  final String? banType;
  @override
  final String? deactivationReason;
  @override
  final bool? isBanned;

  @override
  String toString() {
    return 'UserEntity(id: $id, name: $name, email: $email, status: $status, isActive: $isActive, createdAt: $createdAt, lastSeen: $lastSeen, firstname: $firstname, lastname: $lastname, phone: $phone, uid: $uid, avatar: $avatar, role: $role, ipAddress: $ipAddress, deviceInfo: $deviceInfo, lastLoginAt: $lastLoginAt, updatedAt: $updatedAt, banReason: $banReason, banType: $banType, deactivationReason: $deactivationReason, isBanned: $isBanned)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.lastSeen, lastSeen) ||
                other.lastSeen == lastSeen) &&
            (identical(other.firstname, firstname) ||
                other.firstname == firstname) &&
            (identical(other.lastname, lastname) ||
                other.lastname == lastname) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.ipAddress, ipAddress) ||
                other.ipAddress == ipAddress) &&
            (identical(other.deviceInfo, deviceInfo) ||
                other.deviceInfo == deviceInfo) &&
            (identical(other.lastLoginAt, lastLoginAt) ||
                other.lastLoginAt == lastLoginAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.banReason, banReason) ||
                other.banReason == banReason) &&
            (identical(other.banType, banType) || other.banType == banType) &&
            (identical(other.deactivationReason, deactivationReason) ||
                other.deactivationReason == deactivationReason) &&
            (identical(other.isBanned, isBanned) ||
                other.isBanned == isBanned));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    id,
    name,
    email,
    status,
    isActive,
    createdAt,
    lastSeen,
    firstname,
    lastname,
    phone,
    uid,
    avatar,
    role,
    ipAddress,
    deviceInfo,
    lastLoginAt,
    updatedAt,
    banReason,
    banType,
    deactivationReason,
    isBanned,
  ]);

  /// Create a copy of UserEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserEntityImplCopyWith<_$UserEntityImpl> get copyWith =>
      __$$UserEntityImplCopyWithImpl<_$UserEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserEntityImplToJson(this);
  }
}

abstract class _UserEntity implements UserEntity {
  const factory _UserEntity({
    required final int id,
    final String? name,
    final String? email,
    final String? status,
    final bool? isActive,
    final String? createdAt,
    final String? lastSeen,
    final String? firstname,
    final String? lastname,
    final String? phone,
    final String? uid,
    final String? avatar,
    final String? role,
    final String? ipAddress,
    final String? deviceInfo,
    final String? lastLoginAt,
    final String? updatedAt,
    final String? banReason,
    final String? banType,
    final String? deactivationReason,
    final bool? isBanned,
  }) = _$UserEntityImpl;

  factory _UserEntity.fromJson(Map<String, dynamic> json) =
      _$UserEntityImpl.fromJson;

  @override
  int get id;
  @override
  String? get name; // Changed from firstname to name to match API
  @override
  String? get email;
  @override
  String? get status;
  @override
  bool? get isActive; // Changed from is_active to isActive for consistency
  @override
  String? get createdAt; // Changed from created_at to createdAt
  @override
  String? get lastSeen; // Changed from last_seen to lastSeen
  // Keep additional fields for backward compatibility
  @override
  String? get firstname;
  @override
  String? get lastname;
  @override
  String? get phone;
  @override
  String? get uid;
  @override
  String? get avatar;
  @override
  String? get role;
  @override
  String? get ipAddress;
  @override
  String? get deviceInfo;
  @override
  String? get lastLoginAt;
  @override
  String? get updatedAt;
  @override
  String? get banReason;
  @override
  String? get banType;
  @override
  String? get deactivationReason;
  @override
  bool? get isBanned;

  /// Create a copy of UserEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserEntityImplCopyWith<_$UserEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserListResponse _$UserListResponseFromJson(Map<String, dynamic> json) {
  return _UserListResponse.fromJson(json);
}

/// @nodoc
mixin _$UserListResponse {
  bool get success => throw _privateConstructorUsedError;
  UserListData get data => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this UserListResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserListResponseCopyWith<UserListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserListResponseCopyWith<$Res> {
  factory $UserListResponseCopyWith(
    UserListResponse value,
    $Res Function(UserListResponse) then,
  ) = _$UserListResponseCopyWithImpl<$Res, UserListResponse>;
  @useResult
  $Res call({bool success, UserListData data, String? message});

  $UserListDataCopyWith<$Res> get data;
}

/// @nodoc
class _$UserListResponseCopyWithImpl<$Res, $Val extends UserListResponse>
    implements $UserListResponseCopyWith<$Res> {
  _$UserListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
    Object? message = freezed,
  }) {
    return _then(
      _value.copyWith(
            success: null == success
                ? _value.success
                : success // ignore: cast_nullable_to_non_nullable
                      as bool,
            data: null == data
                ? _value.data
                : data // ignore: cast_nullable_to_non_nullable
                      as UserListData,
            message: freezed == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }

  /// Create a copy of UserListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserListDataCopyWith<$Res> get data {
    return $UserListDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserListResponseImplCopyWith<$Res>
    implements $UserListResponseCopyWith<$Res> {
  factory _$$UserListResponseImplCopyWith(
    _$UserListResponseImpl value,
    $Res Function(_$UserListResponseImpl) then,
  ) = __$$UserListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, UserListData data, String? message});

  @override
  $UserListDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$UserListResponseImplCopyWithImpl<$Res>
    extends _$UserListResponseCopyWithImpl<$Res, _$UserListResponseImpl>
    implements _$$UserListResponseImplCopyWith<$Res> {
  __$$UserListResponseImplCopyWithImpl(
    _$UserListResponseImpl _value,
    $Res Function(_$UserListResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
    Object? message = freezed,
  }) {
    return _then(
      _$UserListResponseImpl(
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
        data: null == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                  as UserListData,
        message: freezed == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserListResponseImpl implements _UserListResponse {
  const _$UserListResponseImpl({
    required this.success,
    required this.data,
    this.message,
  });

  factory _$UserListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserListResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final UserListData data;
  @override
  final String? message;

  @override
  String toString() {
    return 'UserListResponse(success: $success, data: $data, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserListResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data, message);

  /// Create a copy of UserListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserListResponseImplCopyWith<_$UserListResponseImpl> get copyWith =>
      __$$UserListResponseImplCopyWithImpl<_$UserListResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$UserListResponseImplToJson(this);
  }
}

abstract class _UserListResponse implements UserListResponse {
  const factory _UserListResponse({
    required final bool success,
    required final UserListData data,
    final String? message,
  }) = _$UserListResponseImpl;

  factory _UserListResponse.fromJson(Map<String, dynamic> json) =
      _$UserListResponseImpl.fromJson;

  @override
  bool get success;
  @override
  UserListData get data;
  @override
  String? get message;

  /// Create a copy of UserListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserListResponseImplCopyWith<_$UserListResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserListData _$UserListDataFromJson(Map<String, dynamic> json) {
  return _UserListData.fromJson(json);
}

/// @nodoc
mixin _$UserListData {
  List<UserEntity> get users => throw _privateConstructorUsedError;
  UserPagination get pagination => throw _privateConstructorUsedError;

  /// Serializes this UserListData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserListData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserListDataCopyWith<UserListData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserListDataCopyWith<$Res> {
  factory $UserListDataCopyWith(
    UserListData value,
    $Res Function(UserListData) then,
  ) = _$UserListDataCopyWithImpl<$Res, UserListData>;
  @useResult
  $Res call({List<UserEntity> users, UserPagination pagination});

  $UserPaginationCopyWith<$Res> get pagination;
}

/// @nodoc
class _$UserListDataCopyWithImpl<$Res, $Val extends UserListData>
    implements $UserListDataCopyWith<$Res> {
  _$UserListDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserListData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? users = null, Object? pagination = null}) {
    return _then(
      _value.copyWith(
            users: null == users
                ? _value.users
                : users // ignore: cast_nullable_to_non_nullable
                      as List<UserEntity>,
            pagination: null == pagination
                ? _value.pagination
                : pagination // ignore: cast_nullable_to_non_nullable
                      as UserPagination,
          )
          as $Val,
    );
  }

  /// Create a copy of UserListData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserPaginationCopyWith<$Res> get pagination {
    return $UserPaginationCopyWith<$Res>(_value.pagination, (value) {
      return _then(_value.copyWith(pagination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserListDataImplCopyWith<$Res>
    implements $UserListDataCopyWith<$Res> {
  factory _$$UserListDataImplCopyWith(
    _$UserListDataImpl value,
    $Res Function(_$UserListDataImpl) then,
  ) = __$$UserListDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<UserEntity> users, UserPagination pagination});

  @override
  $UserPaginationCopyWith<$Res> get pagination;
}

/// @nodoc
class __$$UserListDataImplCopyWithImpl<$Res>
    extends _$UserListDataCopyWithImpl<$Res, _$UserListDataImpl>
    implements _$$UserListDataImplCopyWith<$Res> {
  __$$UserListDataImplCopyWithImpl(
    _$UserListDataImpl _value,
    $Res Function(_$UserListDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserListData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? users = null, Object? pagination = null}) {
    return _then(
      _$UserListDataImpl(
        users: null == users
            ? _value._users
            : users // ignore: cast_nullable_to_non_nullable
                  as List<UserEntity>,
        pagination: null == pagination
            ? _value.pagination
            : pagination // ignore: cast_nullable_to_non_nullable
                  as UserPagination,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserListDataImpl implements _UserListData {
  const _$UserListDataImpl({
    required final List<UserEntity> users,
    required this.pagination,
  }) : _users = users;

  factory _$UserListDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserListDataImplFromJson(json);

  final List<UserEntity> _users;
  @override
  List<UserEntity> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  final UserPagination pagination;

  @override
  String toString() {
    return 'UserListData(users: $users, pagination: $pagination)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserListDataImpl &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_users),
    pagination,
  );

  /// Create a copy of UserListData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserListDataImplCopyWith<_$UserListDataImpl> get copyWith =>
      __$$UserListDataImplCopyWithImpl<_$UserListDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserListDataImplToJson(this);
  }
}

abstract class _UserListData implements UserListData {
  const factory _UserListData({
    required final List<UserEntity> users,
    required final UserPagination pagination,
  }) = _$UserListDataImpl;

  factory _UserListData.fromJson(Map<String, dynamic> json) =
      _$UserListDataImpl.fromJson;

  @override
  List<UserEntity> get users;
  @override
  UserPagination get pagination;

  /// Create a copy of UserListData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserListDataImplCopyWith<_$UserListDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserPagination _$UserPaginationFromJson(Map<String, dynamic> json) {
  return _UserPagination.fromJson(json);
}

/// @nodoc
mixin _$UserPagination {
  int get total => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get pages => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;

  /// Serializes this UserPagination to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserPagination
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserPaginationCopyWith<UserPagination> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserPaginationCopyWith<$Res> {
  factory $UserPaginationCopyWith(
    UserPagination value,
    $Res Function(UserPagination) then,
  ) = _$UserPaginationCopyWithImpl<$Res, UserPagination>;
  @useResult
  $Res call({int total, int page, int pages, int limit});
}

/// @nodoc
class _$UserPaginationCopyWithImpl<$Res, $Val extends UserPagination>
    implements $UserPaginationCopyWith<$Res> {
  _$UserPaginationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserPagination
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? page = null,
    Object? pages = null,
    Object? limit = null,
  }) {
    return _then(
      _value.copyWith(
            total: null == total
                ? _value.total
                : total // ignore: cast_nullable_to_non_nullable
                      as int,
            page: null == page
                ? _value.page
                : page // ignore: cast_nullable_to_non_nullable
                      as int,
            pages: null == pages
                ? _value.pages
                : pages // ignore: cast_nullable_to_non_nullable
                      as int,
            limit: null == limit
                ? _value.limit
                : limit // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UserPaginationImplCopyWith<$Res>
    implements $UserPaginationCopyWith<$Res> {
  factory _$$UserPaginationImplCopyWith(
    _$UserPaginationImpl value,
    $Res Function(_$UserPaginationImpl) then,
  ) = __$$UserPaginationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int total, int page, int pages, int limit});
}

/// @nodoc
class __$$UserPaginationImplCopyWithImpl<$Res>
    extends _$UserPaginationCopyWithImpl<$Res, _$UserPaginationImpl>
    implements _$$UserPaginationImplCopyWith<$Res> {
  __$$UserPaginationImplCopyWithImpl(
    _$UserPaginationImpl _value,
    $Res Function(_$UserPaginationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserPagination
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? page = null,
    Object? pages = null,
    Object? limit = null,
  }) {
    return _then(
      _$UserPaginationImpl(
        total: null == total
            ? _value.total
            : total // ignore: cast_nullable_to_non_nullable
                  as int,
        page: null == page
            ? _value.page
            : page // ignore: cast_nullable_to_non_nullable
                  as int,
        pages: null == pages
            ? _value.pages
            : pages // ignore: cast_nullable_to_non_nullable
                  as int,
        limit: null == limit
            ? _value.limit
            : limit // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserPaginationImpl implements _UserPagination {
  const _$UserPaginationImpl({
    required this.total,
    required this.page,
    required this.pages,
    required this.limit,
  });

  factory _$UserPaginationImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserPaginationImplFromJson(json);

  @override
  final int total;
  @override
  final int page;
  @override
  final int pages;
  @override
  final int limit;

  @override
  String toString() {
    return 'UserPagination(total: $total, page: $page, pages: $pages, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserPaginationImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pages, pages) || other.pages == pages) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, total, page, pages, limit);

  /// Create a copy of UserPagination
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserPaginationImplCopyWith<_$UserPaginationImpl> get copyWith =>
      __$$UserPaginationImplCopyWithImpl<_$UserPaginationImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$UserPaginationImplToJson(this);
  }
}

abstract class _UserPagination implements UserPagination {
  const factory _UserPagination({
    required final int total,
    required final int page,
    required final int pages,
    required final int limit,
  }) = _$UserPaginationImpl;

  factory _UserPagination.fromJson(Map<String, dynamic> json) =
      _$UserPaginationImpl.fromJson;

  @override
  int get total;
  @override
  int get page;
  @override
  int get pages;
  @override
  int get limit;

  /// Create a copy of UserPagination
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserPaginationImplCopyWith<_$UserPaginationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserActionResponse _$UserActionResponseFromJson(Map<String, dynamic> json) {
  return _UserActionResponse.fromJson(json);
}

/// @nodoc
mixin _$UserActionResponse {
  bool get success => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  UserEntity? get data => throw _privateConstructorUsedError;

  /// Serializes this UserActionResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserActionResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserActionResponseCopyWith<UserActionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserActionResponseCopyWith<$Res> {
  factory $UserActionResponseCopyWith(
    UserActionResponse value,
    $Res Function(UserActionResponse) then,
  ) = _$UserActionResponseCopyWithImpl<$Res, UserActionResponse>;
  @useResult
  $Res call({bool success, String message, UserEntity? data});

  $UserEntityCopyWith<$Res>? get data;
}

/// @nodoc
class _$UserActionResponseCopyWithImpl<$Res, $Val extends UserActionResponse>
    implements $UserActionResponseCopyWith<$Res> {
  _$UserActionResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserActionResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? data = freezed,
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
            data: freezed == data
                ? _value.data
                : data // ignore: cast_nullable_to_non_nullable
                      as UserEntity?,
          )
          as $Val,
    );
  }

  /// Create a copy of UserActionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserEntityCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $UserEntityCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserActionResponseImplCopyWith<$Res>
    implements $UserActionResponseCopyWith<$Res> {
  factory _$$UserActionResponseImplCopyWith(
    _$UserActionResponseImpl value,
    $Res Function(_$UserActionResponseImpl) then,
  ) = __$$UserActionResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, String message, UserEntity? data});

  @override
  $UserEntityCopyWith<$Res>? get data;
}

/// @nodoc
class __$$UserActionResponseImplCopyWithImpl<$Res>
    extends _$UserActionResponseCopyWithImpl<$Res, _$UserActionResponseImpl>
    implements _$$UserActionResponseImplCopyWith<$Res> {
  __$$UserActionResponseImplCopyWithImpl(
    _$UserActionResponseImpl _value,
    $Res Function(_$UserActionResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserActionResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? data = freezed,
  }) {
    return _then(
      _$UserActionResponseImpl(
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
        data: freezed == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                  as UserEntity?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserActionResponseImpl implements _UserActionResponse {
  const _$UserActionResponseImpl({
    required this.success,
    required this.message,
    this.data,
  });

  factory _$UserActionResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserActionResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final String message;
  @override
  final UserEntity? data;

  @override
  String toString() {
    return 'UserActionResponse(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserActionResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, data);

  /// Create a copy of UserActionResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserActionResponseImplCopyWith<_$UserActionResponseImpl> get copyWith =>
      __$$UserActionResponseImplCopyWithImpl<_$UserActionResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$UserActionResponseImplToJson(this);
  }
}

abstract class _UserActionResponse implements UserActionResponse {
  const factory _UserActionResponse({
    required final bool success,
    required final String message,
    final UserEntity? data,
  }) = _$UserActionResponseImpl;

  factory _UserActionResponse.fromJson(Map<String, dynamic> json) =
      _$UserActionResponseImpl.fromJson;

  @override
  bool get success;
  @override
  String get message;
  @override
  UserEntity? get data;

  /// Create a copy of UserActionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserActionResponseImplCopyWith<_$UserActionResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserStatusUpdateRequest _$UserStatusUpdateRequestFromJson(
  Map<String, dynamic> json,
) {
  return _UserStatusUpdateRequest.fromJson(json);
}

/// @nodoc
mixin _$UserStatusUpdateRequest {
  String get action => throw _privateConstructorUsedError;
  UserStatusData get data => throw _privateConstructorUsedError;

  /// Serializes this UserStatusUpdateRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserStatusUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserStatusUpdateRequestCopyWith<UserStatusUpdateRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStatusUpdateRequestCopyWith<$Res> {
  factory $UserStatusUpdateRequestCopyWith(
    UserStatusUpdateRequest value,
    $Res Function(UserStatusUpdateRequest) then,
  ) = _$UserStatusUpdateRequestCopyWithImpl<$Res, UserStatusUpdateRequest>;
  @useResult
  $Res call({String action, UserStatusData data});

  $UserStatusDataCopyWith<$Res> get data;
}

/// @nodoc
class _$UserStatusUpdateRequestCopyWithImpl<
  $Res,
  $Val extends UserStatusUpdateRequest
>
    implements $UserStatusUpdateRequestCopyWith<$Res> {
  _$UserStatusUpdateRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserStatusUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? action = null, Object? data = null}) {
    return _then(
      _value.copyWith(
            action: null == action
                ? _value.action
                : action // ignore: cast_nullable_to_non_nullable
                      as String,
            data: null == data
                ? _value.data
                : data // ignore: cast_nullable_to_non_nullable
                      as UserStatusData,
          )
          as $Val,
    );
  }

  /// Create a copy of UserStatusUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserStatusDataCopyWith<$Res> get data {
    return $UserStatusDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserStatusUpdateRequestImplCopyWith<$Res>
    implements $UserStatusUpdateRequestCopyWith<$Res> {
  factory _$$UserStatusUpdateRequestImplCopyWith(
    _$UserStatusUpdateRequestImpl value,
    $Res Function(_$UserStatusUpdateRequestImpl) then,
  ) = __$$UserStatusUpdateRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String action, UserStatusData data});

  @override
  $UserStatusDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$UserStatusUpdateRequestImplCopyWithImpl<$Res>
    extends
        _$UserStatusUpdateRequestCopyWithImpl<
          $Res,
          _$UserStatusUpdateRequestImpl
        >
    implements _$$UserStatusUpdateRequestImplCopyWith<$Res> {
  __$$UserStatusUpdateRequestImplCopyWithImpl(
    _$UserStatusUpdateRequestImpl _value,
    $Res Function(_$UserStatusUpdateRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserStatusUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? action = null, Object? data = null}) {
    return _then(
      _$UserStatusUpdateRequestImpl(
        action: null == action
            ? _value.action
            : action // ignore: cast_nullable_to_non_nullable
                  as String,
        data: null == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                  as UserStatusData,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserStatusUpdateRequestImpl implements _UserStatusUpdateRequest {
  const _$UserStatusUpdateRequestImpl({
    required this.action,
    required this.data,
  });

  factory _$UserStatusUpdateRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserStatusUpdateRequestImplFromJson(json);

  @override
  final String action;
  @override
  final UserStatusData data;

  @override
  String toString() {
    return 'UserStatusUpdateRequest(action: $action, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserStatusUpdateRequestImpl &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, action, data);

  /// Create a copy of UserStatusUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserStatusUpdateRequestImplCopyWith<_$UserStatusUpdateRequestImpl>
  get copyWith =>
      __$$UserStatusUpdateRequestImplCopyWithImpl<
        _$UserStatusUpdateRequestImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserStatusUpdateRequestImplToJson(this);
  }
}

abstract class _UserStatusUpdateRequest implements UserStatusUpdateRequest {
  const factory _UserStatusUpdateRequest({
    required final String action,
    required final UserStatusData data,
  }) = _$UserStatusUpdateRequestImpl;

  factory _UserStatusUpdateRequest.fromJson(Map<String, dynamic> json) =
      _$UserStatusUpdateRequestImpl.fromJson;

  @override
  String get action;
  @override
  UserStatusData get data;

  /// Create a copy of UserStatusUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserStatusUpdateRequestImplCopyWith<_$UserStatusUpdateRequestImpl>
  get copyWith => throw _privateConstructorUsedError;
}

UserStatusData _$UserStatusDataFromJson(Map<String, dynamic> json) {
  return _UserStatusData.fromJson(json);
}

/// @nodoc
mixin _$UserStatusData {
  int get userId => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  /// Serializes this UserStatusData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserStatusData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserStatusDataCopyWith<UserStatusData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStatusDataCopyWith<$Res> {
  factory $UserStatusDataCopyWith(
    UserStatusData value,
    $Res Function(UserStatusData) then,
  ) = _$UserStatusDataCopyWithImpl<$Res, UserStatusData>;
  @useResult
  $Res call({int userId, String status});
}

/// @nodoc
class _$UserStatusDataCopyWithImpl<$Res, $Val extends UserStatusData>
    implements $UserStatusDataCopyWith<$Res> {
  _$UserStatusDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserStatusData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? userId = null, Object? status = null}) {
    return _then(
      _value.copyWith(
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as int,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UserStatusDataImplCopyWith<$Res>
    implements $UserStatusDataCopyWith<$Res> {
  factory _$$UserStatusDataImplCopyWith(
    _$UserStatusDataImpl value,
    $Res Function(_$UserStatusDataImpl) then,
  ) = __$$UserStatusDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int userId, String status});
}

/// @nodoc
class __$$UserStatusDataImplCopyWithImpl<$Res>
    extends _$UserStatusDataCopyWithImpl<$Res, _$UserStatusDataImpl>
    implements _$$UserStatusDataImplCopyWith<$Res> {
  __$$UserStatusDataImplCopyWithImpl(
    _$UserStatusDataImpl _value,
    $Res Function(_$UserStatusDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserStatusData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? userId = null, Object? status = null}) {
    return _then(
      _$UserStatusDataImpl(
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as int,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserStatusDataImpl implements _UserStatusData {
  const _$UserStatusDataImpl({required this.userId, required this.status});

  factory _$UserStatusDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserStatusDataImplFromJson(json);

  @override
  final int userId;
  @override
  final String status;

  @override
  String toString() {
    return 'UserStatusData(userId: $userId, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserStatusDataImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, status);

  /// Create a copy of UserStatusData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserStatusDataImplCopyWith<_$UserStatusDataImpl> get copyWith =>
      __$$UserStatusDataImplCopyWithImpl<_$UserStatusDataImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$UserStatusDataImplToJson(this);
  }
}

abstract class _UserStatusData implements UserStatusData {
  const factory _UserStatusData({
    required final int userId,
    required final String status,
  }) = _$UserStatusDataImpl;

  factory _UserStatusData.fromJson(Map<String, dynamic> json) =
      _$UserStatusDataImpl.fromJson;

  @override
  int get userId;
  @override
  String get status;

  /// Create a copy of UserStatusData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserStatusDataImplCopyWith<_$UserStatusDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserBanRequest _$UserBanRequestFromJson(Map<String, dynamic> json) {
  return _UserBanRequest.fromJson(json);
}

/// @nodoc
mixin _$UserBanRequest {
  String get reason => throw _privateConstructorUsedError;
  String get banType => throw _privateConstructorUsedError;

  /// Serializes this UserBanRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserBanRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserBanRequestCopyWith<UserBanRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserBanRequestCopyWith<$Res> {
  factory $UserBanRequestCopyWith(
    UserBanRequest value,
    $Res Function(UserBanRequest) then,
  ) = _$UserBanRequestCopyWithImpl<$Res, UserBanRequest>;
  @useResult
  $Res call({String reason, String banType});
}

/// @nodoc
class _$UserBanRequestCopyWithImpl<$Res, $Val extends UserBanRequest>
    implements $UserBanRequestCopyWith<$Res> {
  _$UserBanRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserBanRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? reason = null, Object? banType = null}) {
    return _then(
      _value.copyWith(
            reason: null == reason
                ? _value.reason
                : reason // ignore: cast_nullable_to_non_nullable
                      as String,
            banType: null == banType
                ? _value.banType
                : banType // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UserBanRequestImplCopyWith<$Res>
    implements $UserBanRequestCopyWith<$Res> {
  factory _$$UserBanRequestImplCopyWith(
    _$UserBanRequestImpl value,
    $Res Function(_$UserBanRequestImpl) then,
  ) = __$$UserBanRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String reason, String banType});
}

/// @nodoc
class __$$UserBanRequestImplCopyWithImpl<$Res>
    extends _$UserBanRequestCopyWithImpl<$Res, _$UserBanRequestImpl>
    implements _$$UserBanRequestImplCopyWith<$Res> {
  __$$UserBanRequestImplCopyWithImpl(
    _$UserBanRequestImpl _value,
    $Res Function(_$UserBanRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserBanRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? reason = null, Object? banType = null}) {
    return _then(
      _$UserBanRequestImpl(
        reason: null == reason
            ? _value.reason
            : reason // ignore: cast_nullable_to_non_nullable
                  as String,
        banType: null == banType
            ? _value.banType
            : banType // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserBanRequestImpl implements _UserBanRequest {
  const _$UserBanRequestImpl({required this.reason, required this.banType});

  factory _$UserBanRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserBanRequestImplFromJson(json);

  @override
  final String reason;
  @override
  final String banType;

  @override
  String toString() {
    return 'UserBanRequest(reason: $reason, banType: $banType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserBanRequestImpl &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.banType, banType) || other.banType == banType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, reason, banType);

  /// Create a copy of UserBanRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserBanRequestImplCopyWith<_$UserBanRequestImpl> get copyWith =>
      __$$UserBanRequestImplCopyWithImpl<_$UserBanRequestImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$UserBanRequestImplToJson(this);
  }
}

abstract class _UserBanRequest implements UserBanRequest {
  const factory _UserBanRequest({
    required final String reason,
    required final String banType,
  }) = _$UserBanRequestImpl;

  factory _UserBanRequest.fromJson(Map<String, dynamic> json) =
      _$UserBanRequestImpl.fromJson;

  @override
  String get reason;
  @override
  String get banType;

  /// Create a copy of UserBanRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserBanRequestImplCopyWith<_$UserBanRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserDeactivationRequest _$UserDeactivationRequestFromJson(
  Map<String, dynamic> json,
) {
  return _UserDeactivationRequest.fromJson(json);
}

/// @nodoc
mixin _$UserDeactivationRequest {
  String get reason => throw _privateConstructorUsedError;

  /// Serializes this UserDeactivationRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserDeactivationRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserDeactivationRequestCopyWith<UserDeactivationRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDeactivationRequestCopyWith<$Res> {
  factory $UserDeactivationRequestCopyWith(
    UserDeactivationRequest value,
    $Res Function(UserDeactivationRequest) then,
  ) = _$UserDeactivationRequestCopyWithImpl<$Res, UserDeactivationRequest>;
  @useResult
  $Res call({String reason});
}

/// @nodoc
class _$UserDeactivationRequestCopyWithImpl<
  $Res,
  $Val extends UserDeactivationRequest
>
    implements $UserDeactivationRequestCopyWith<$Res> {
  _$UserDeactivationRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserDeactivationRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? reason = null}) {
    return _then(
      _value.copyWith(
            reason: null == reason
                ? _value.reason
                : reason // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UserDeactivationRequestImplCopyWith<$Res>
    implements $UserDeactivationRequestCopyWith<$Res> {
  factory _$$UserDeactivationRequestImplCopyWith(
    _$UserDeactivationRequestImpl value,
    $Res Function(_$UserDeactivationRequestImpl) then,
  ) = __$$UserDeactivationRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String reason});
}

/// @nodoc
class __$$UserDeactivationRequestImplCopyWithImpl<$Res>
    extends
        _$UserDeactivationRequestCopyWithImpl<
          $Res,
          _$UserDeactivationRequestImpl
        >
    implements _$$UserDeactivationRequestImplCopyWith<$Res> {
  __$$UserDeactivationRequestImplCopyWithImpl(
    _$UserDeactivationRequestImpl _value,
    $Res Function(_$UserDeactivationRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserDeactivationRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? reason = null}) {
    return _then(
      _$UserDeactivationRequestImpl(
        reason: null == reason
            ? _value.reason
            : reason // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserDeactivationRequestImpl implements _UserDeactivationRequest {
  const _$UserDeactivationRequestImpl({required this.reason});

  factory _$UserDeactivationRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDeactivationRequestImplFromJson(json);

  @override
  final String reason;

  @override
  String toString() {
    return 'UserDeactivationRequest(reason: $reason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDeactivationRequestImpl &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, reason);

  /// Create a copy of UserDeactivationRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDeactivationRequestImplCopyWith<_$UserDeactivationRequestImpl>
  get copyWith =>
      __$$UserDeactivationRequestImplCopyWithImpl<
        _$UserDeactivationRequestImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDeactivationRequestImplToJson(this);
  }
}

abstract class _UserDeactivationRequest implements UserDeactivationRequest {
  const factory _UserDeactivationRequest({required final String reason}) =
      _$UserDeactivationRequestImpl;

  factory _UserDeactivationRequest.fromJson(Map<String, dynamic> json) =
      _$UserDeactivationRequestImpl.fromJson;

  @override
  String get reason;

  /// Create a copy of UserDeactivationRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserDeactivationRequestImplCopyWith<_$UserDeactivationRequestImpl>
  get copyWith => throw _privateConstructorUsedError;
}
