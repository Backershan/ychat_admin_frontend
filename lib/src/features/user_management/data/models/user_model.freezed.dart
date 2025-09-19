// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  UserStatus get status => throw _privateConstructorUsedError;
  String get ipAddress => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;
  String? get lastLoginAt => throw _privateConstructorUsedError;
  String? get deviceInfo => throw _privateConstructorUsedError;

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call({
    String id,
    String name,
    String phone,
    String uid,
    String email,
    UserStatus status,
    String ipAddress,
    DateTime createdAt,
    DateTime updatedAt,
    String? avatar,
    String? role,
    String? lastLoginAt,
    String? deviceInfo,
  });
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? phone = null,
    Object? uid = null,
    Object? email = null,
    Object? status = null,
    Object? ipAddress = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? avatar = freezed,
    Object? role = freezed,
    Object? lastLoginAt = freezed,
    Object? deviceInfo = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            phone: null == phone
                ? _value.phone
                : phone // ignore: cast_nullable_to_non_nullable
                      as String,
            uid: null == uid
                ? _value.uid
                : uid // ignore: cast_nullable_to_non_nullable
                      as String,
            email: null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                      as String,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as UserStatus,
            ipAddress: null == ipAddress
                ? _value.ipAddress
                : ipAddress // ignore: cast_nullable_to_non_nullable
                      as String,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            updatedAt: null == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            avatar: freezed == avatar
                ? _value.avatar
                : avatar // ignore: cast_nullable_to_non_nullable
                      as String?,
            role: freezed == role
                ? _value.role
                : role // ignore: cast_nullable_to_non_nullable
                      as String?,
            lastLoginAt: freezed == lastLoginAt
                ? _value.lastLoginAt
                : lastLoginAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            deviceInfo: freezed == deviceInfo
                ? _value.deviceInfo
                : deviceInfo // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
    _$UserModelImpl value,
    $Res Function(_$UserModelImpl) then,
  ) = __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String name,
    String phone,
    String uid,
    String email,
    UserStatus status,
    String ipAddress,
    DateTime createdAt,
    DateTime updatedAt,
    String? avatar,
    String? role,
    String? lastLoginAt,
    String? deviceInfo,
  });
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
    _$UserModelImpl _value,
    $Res Function(_$UserModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? phone = null,
    Object? uid = null,
    Object? email = null,
    Object? status = null,
    Object? ipAddress = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? avatar = freezed,
    Object? role = freezed,
    Object? lastLoginAt = freezed,
    Object? deviceInfo = freezed,
  }) {
    return _then(
      _$UserModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        phone: null == phone
            ? _value.phone
            : phone // ignore: cast_nullable_to_non_nullable
                  as String,
        uid: null == uid
            ? _value.uid
            : uid // ignore: cast_nullable_to_non_nullable
                  as String,
        email: null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as UserStatus,
        ipAddress: null == ipAddress
            ? _value.ipAddress
            : ipAddress // ignore: cast_nullable_to_non_nullable
                  as String,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        updatedAt: null == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        avatar: freezed == avatar
            ? _value.avatar
            : avatar // ignore: cast_nullable_to_non_nullable
                  as String?,
        role: freezed == role
            ? _value.role
            : role // ignore: cast_nullable_to_non_nullable
                  as String?,
        lastLoginAt: freezed == lastLoginAt
            ? _value.lastLoginAt
            : lastLoginAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        deviceInfo: freezed == deviceInfo
            ? _value.deviceInfo
            : deviceInfo // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelImpl implements _UserModel {
  const _$UserModelImpl({
    required this.id,
    required this.name,
    required this.phone,
    required this.uid,
    required this.email,
    required this.status,
    required this.ipAddress,
    required this.createdAt,
    required this.updatedAt,
    this.avatar,
    this.role,
    this.lastLoginAt,
    this.deviceInfo,
  });

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String phone;
  @override
  final String uid;
  @override
  final String email;
  @override
  final UserStatus status;
  @override
  final String ipAddress;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final String? avatar;
  @override
  final String? role;
  @override
  final String? lastLoginAt;
  @override
  final String? deviceInfo;

  @override
  String toString() {
    return 'UserModel(id: $id, name: $name, phone: $phone, uid: $uid, email: $email, status: $status, ipAddress: $ipAddress, createdAt: $createdAt, updatedAt: $updatedAt, avatar: $avatar, role: $role, lastLoginAt: $lastLoginAt, deviceInfo: $deviceInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.ipAddress, ipAddress) ||
                other.ipAddress == ipAddress) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.lastLoginAt, lastLoginAt) ||
                other.lastLoginAt == lastLoginAt) &&
            (identical(other.deviceInfo, deviceInfo) ||
                other.deviceInfo == deviceInfo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    phone,
    uid,
    email,
    status,
    ipAddress,
    createdAt,
    updatedAt,
    avatar,
    role,
    lastLoginAt,
    deviceInfo,
  );

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(this);
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel({
    required final String id,
    required final String name,
    required final String phone,
    required final String uid,
    required final String email,
    required final UserStatus status,
    required final String ipAddress,
    required final DateTime createdAt,
    required final DateTime updatedAt,
    final String? avatar,
    final String? role,
    final String? lastLoginAt,
    final String? deviceInfo,
  }) = _$UserModelImpl;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get phone;
  @override
  String get uid;
  @override
  String get email;
  @override
  UserStatus get status;
  @override
  String get ipAddress;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  String? get avatar;
  @override
  String? get role;
  @override
  String? get lastLoginAt;
  @override
  String? get deviceInfo;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserListModel _$UserListModelFromJson(Map<String, dynamic> json) {
  return _UserListModel.fromJson(json);
}

/// @nodoc
mixin _$UserListModel {
  List<UserModel> get users => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;

  /// Serializes this UserListModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserListModelCopyWith<UserListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserListModelCopyWith<$Res> {
  factory $UserListModelCopyWith(
    UserListModel value,
    $Res Function(UserListModel) then,
  ) = _$UserListModelCopyWithImpl<$Res, UserListModel>;
  @useResult
  $Res call({List<UserModel> users, int total, int page, int limit});
}

/// @nodoc
class _$UserListModelCopyWithImpl<$Res, $Val extends UserListModel>
    implements $UserListModelCopyWith<$Res> {
  _$UserListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
    Object? total = null,
    Object? page = null,
    Object? limit = null,
  }) {
    return _then(
      _value.copyWith(
            users: null == users
                ? _value.users
                : users // ignore: cast_nullable_to_non_nullable
                      as List<UserModel>,
            total: null == total
                ? _value.total
                : total // ignore: cast_nullable_to_non_nullable
                      as int,
            page: null == page
                ? _value.page
                : page // ignore: cast_nullable_to_non_nullable
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
abstract class _$$UserListModelImplCopyWith<$Res>
    implements $UserListModelCopyWith<$Res> {
  factory _$$UserListModelImplCopyWith(
    _$UserListModelImpl value,
    $Res Function(_$UserListModelImpl) then,
  ) = __$$UserListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<UserModel> users, int total, int page, int limit});
}

/// @nodoc
class __$$UserListModelImplCopyWithImpl<$Res>
    extends _$UserListModelCopyWithImpl<$Res, _$UserListModelImpl>
    implements _$$UserListModelImplCopyWith<$Res> {
  __$$UserListModelImplCopyWithImpl(
    _$UserListModelImpl _value,
    $Res Function(_$UserListModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
    Object? total = null,
    Object? page = null,
    Object? limit = null,
  }) {
    return _then(
      _$UserListModelImpl(
        users: null == users
            ? _value._users
            : users // ignore: cast_nullable_to_non_nullable
                  as List<UserModel>,
        total: null == total
            ? _value.total
            : total // ignore: cast_nullable_to_non_nullable
                  as int,
        page: null == page
            ? _value.page
            : page // ignore: cast_nullable_to_non_nullable
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
class _$UserListModelImpl implements _UserListModel {
  const _$UserListModelImpl({
    required final List<UserModel> users,
    required this.total,
    required this.page,
    required this.limit,
  }) : _users = users;

  factory _$UserListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserListModelImplFromJson(json);

  final List<UserModel> _users;
  @override
  List<UserModel> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  final int total;
  @override
  final int page;
  @override
  final int limit;

  @override
  String toString() {
    return 'UserListModel(users: $users, total: $total, page: $page, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserListModelImpl &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_users),
    total,
    page,
    limit,
  );

  /// Create a copy of UserListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserListModelImplCopyWith<_$UserListModelImpl> get copyWith =>
      __$$UserListModelImplCopyWithImpl<_$UserListModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserListModelImplToJson(this);
  }
}

abstract class _UserListModel implements UserListModel {
  const factory _UserListModel({
    required final List<UserModel> users,
    required final int total,
    required final int page,
    required final int limit,
  }) = _$UserListModelImpl;

  factory _UserListModel.fromJson(Map<String, dynamic> json) =
      _$UserListModelImpl.fromJson;

  @override
  List<UserModel> get users;
  @override
  int get total;
  @override
  int get page;
  @override
  int get limit;

  /// Create a copy of UserListModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserListModelImplCopyWith<_$UserListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdateUserStatusRequestModel _$UpdateUserStatusRequestModelFromJson(
  Map<String, dynamic> json,
) {
  return _UpdateUserStatusRequestModel.fromJson(json);
}

/// @nodoc
mixin _$UpdateUserStatusRequestModel {
  String get userId => throw _privateConstructorUsedError;
  UserStatus get status => throw _privateConstructorUsedError;

  /// Serializes this UpdateUserStatusRequestModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateUserStatusRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateUserStatusRequestModelCopyWith<UpdateUserStatusRequestModel>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateUserStatusRequestModelCopyWith<$Res> {
  factory $UpdateUserStatusRequestModelCopyWith(
    UpdateUserStatusRequestModel value,
    $Res Function(UpdateUserStatusRequestModel) then,
  ) =
      _$UpdateUserStatusRequestModelCopyWithImpl<
        $Res,
        UpdateUserStatusRequestModel
      >;
  @useResult
  $Res call({String userId, UserStatus status});
}

/// @nodoc
class _$UpdateUserStatusRequestModelCopyWithImpl<
  $Res,
  $Val extends UpdateUserStatusRequestModel
>
    implements $UpdateUserStatusRequestModelCopyWith<$Res> {
  _$UpdateUserStatusRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateUserStatusRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? userId = null, Object? status = null}) {
    return _then(
      _value.copyWith(
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as UserStatus,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UpdateUserStatusRequestModelImplCopyWith<$Res>
    implements $UpdateUserStatusRequestModelCopyWith<$Res> {
  factory _$$UpdateUserStatusRequestModelImplCopyWith(
    _$UpdateUserStatusRequestModelImpl value,
    $Res Function(_$UpdateUserStatusRequestModelImpl) then,
  ) = __$$UpdateUserStatusRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId, UserStatus status});
}

/// @nodoc
class __$$UpdateUserStatusRequestModelImplCopyWithImpl<$Res>
    extends
        _$UpdateUserStatusRequestModelCopyWithImpl<
          $Res,
          _$UpdateUserStatusRequestModelImpl
        >
    implements _$$UpdateUserStatusRequestModelImplCopyWith<$Res> {
  __$$UpdateUserStatusRequestModelImplCopyWithImpl(
    _$UpdateUserStatusRequestModelImpl _value,
    $Res Function(_$UpdateUserStatusRequestModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UpdateUserStatusRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? userId = null, Object? status = null}) {
    return _then(
      _$UpdateUserStatusRequestModelImpl(
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as UserStatus,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateUserStatusRequestModelImpl
    implements _UpdateUserStatusRequestModel {
  const _$UpdateUserStatusRequestModelImpl({
    required this.userId,
    required this.status,
  });

  factory _$UpdateUserStatusRequestModelImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$UpdateUserStatusRequestModelImplFromJson(json);

  @override
  final String userId;
  @override
  final UserStatus status;

  @override
  String toString() {
    return 'UpdateUserStatusRequestModel(userId: $userId, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserStatusRequestModelImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, status);

  /// Create a copy of UpdateUserStatusRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUserStatusRequestModelImplCopyWith<
    _$UpdateUserStatusRequestModelImpl
  >
  get copyWith =>
      __$$UpdateUserStatusRequestModelImplCopyWithImpl<
        _$UpdateUserStatusRequestModelImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateUserStatusRequestModelImplToJson(this);
  }
}

abstract class _UpdateUserStatusRequestModel
    implements UpdateUserStatusRequestModel {
  const factory _UpdateUserStatusRequestModel({
    required final String userId,
    required final UserStatus status,
  }) = _$UpdateUserStatusRequestModelImpl;

  factory _UpdateUserStatusRequestModel.fromJson(Map<String, dynamic> json) =
      _$UpdateUserStatusRequestModelImpl.fromJson;

  @override
  String get userId;
  @override
  UserStatus get status;

  /// Create a copy of UpdateUserStatusRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateUserStatusRequestModelImplCopyWith<
    _$UpdateUserStatusRequestModelImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}
