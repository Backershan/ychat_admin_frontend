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
  String get firstname => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String? get lastname => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;
  DateTime? get lastLogin => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  String? get banReason => throw _privateConstructorUsedError;
  String? get banType => throw _privateConstructorUsedError;
  DateTime? get bannedAt => throw _privateConstructorUsedError;
  String? get deactivationReason => throw _privateConstructorUsedError;
  DateTime? get deactivatedAt => throw _privateConstructorUsedError;

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
    String firstname,
    String email,
    String status,
    String? lastname,
    String? phone,
    String? avatar,
    DateTime? lastLogin,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? banReason,
    String? banType,
    DateTime? bannedAt,
    String? deactivationReason,
    DateTime? deactivatedAt,
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
    Object? firstname = null,
    Object? email = null,
    Object? status = null,
    Object? lastname = freezed,
    Object? phone = freezed,
    Object? avatar = freezed,
    Object? lastLogin = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? banReason = freezed,
    Object? banType = freezed,
    Object? bannedAt = freezed,
    Object? deactivationReason = freezed,
    Object? deactivatedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            firstname: null == firstname
                ? _value.firstname
                : firstname // ignore: cast_nullable_to_non_nullable
                      as String,
            email: null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                      as String,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String,
            lastname: freezed == lastname
                ? _value.lastname
                : lastname // ignore: cast_nullable_to_non_nullable
                      as String?,
            phone: freezed == phone
                ? _value.phone
                : phone // ignore: cast_nullable_to_non_nullable
                      as String?,
            avatar: freezed == avatar
                ? _value.avatar
                : avatar // ignore: cast_nullable_to_non_nullable
                      as String?,
            lastLogin: freezed == lastLogin
                ? _value.lastLogin
                : lastLogin // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            banReason: freezed == banReason
                ? _value.banReason
                : banReason // ignore: cast_nullable_to_non_nullable
                      as String?,
            banType: freezed == banType
                ? _value.banType
                : banType // ignore: cast_nullable_to_non_nullable
                      as String?,
            bannedAt: freezed == bannedAt
                ? _value.bannedAt
                : bannedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            deactivationReason: freezed == deactivationReason
                ? _value.deactivationReason
                : deactivationReason // ignore: cast_nullable_to_non_nullable
                      as String?,
            deactivatedAt: freezed == deactivatedAt
                ? _value.deactivatedAt
                : deactivatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
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
    String firstname,
    String email,
    String status,
    String? lastname,
    String? phone,
    String? avatar,
    DateTime? lastLogin,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? banReason,
    String? banType,
    DateTime? bannedAt,
    String? deactivationReason,
    DateTime? deactivatedAt,
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
    Object? firstname = null,
    Object? email = null,
    Object? status = null,
    Object? lastname = freezed,
    Object? phone = freezed,
    Object? avatar = freezed,
    Object? lastLogin = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? banReason = freezed,
    Object? banType = freezed,
    Object? bannedAt = freezed,
    Object? deactivationReason = freezed,
    Object? deactivatedAt = freezed,
  }) {
    return _then(
      _$UserEntityImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        firstname: null == firstname
            ? _value.firstname
            : firstname // ignore: cast_nullable_to_non_nullable
                  as String,
        email: null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
        lastname: freezed == lastname
            ? _value.lastname
            : lastname // ignore: cast_nullable_to_non_nullable
                  as String?,
        phone: freezed == phone
            ? _value.phone
            : phone // ignore: cast_nullable_to_non_nullable
                  as String?,
        avatar: freezed == avatar
            ? _value.avatar
            : avatar // ignore: cast_nullable_to_non_nullable
                  as String?,
        lastLogin: freezed == lastLogin
            ? _value.lastLogin
            : lastLogin // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        banReason: freezed == banReason
            ? _value.banReason
            : banReason // ignore: cast_nullable_to_non_nullable
                  as String?,
        banType: freezed == banType
            ? _value.banType
            : banType // ignore: cast_nullable_to_non_nullable
                  as String?,
        bannedAt: freezed == bannedAt
            ? _value.bannedAt
            : bannedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        deactivationReason: freezed == deactivationReason
            ? _value.deactivationReason
            : deactivationReason // ignore: cast_nullable_to_non_nullable
                  as String?,
        deactivatedAt: freezed == deactivatedAt
            ? _value.deactivatedAt
            : deactivatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserEntityImpl implements _UserEntity {
  const _$UserEntityImpl({
    required this.id,
    required this.firstname,
    required this.email,
    required this.status,
    this.lastname,
    this.phone,
    this.avatar,
    this.lastLogin,
    this.createdAt,
    this.updatedAt,
    this.banReason,
    this.banType,
    this.bannedAt,
    this.deactivationReason,
    this.deactivatedAt,
  });

  factory _$UserEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserEntityImplFromJson(json);

  @override
  final int id;
  @override
  final String firstname;
  @override
  final String email;
  @override
  final String status;
  @override
  final String? lastname;
  @override
  final String? phone;
  @override
  final String? avatar;
  @override
  final DateTime? lastLogin;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final String? banReason;
  @override
  final String? banType;
  @override
  final DateTime? bannedAt;
  @override
  final String? deactivationReason;
  @override
  final DateTime? deactivatedAt;

  @override
  String toString() {
    return 'UserEntity(id: $id, firstname: $firstname, email: $email, status: $status, lastname: $lastname, phone: $phone, avatar: $avatar, lastLogin: $lastLogin, createdAt: $createdAt, updatedAt: $updatedAt, banReason: $banReason, banType: $banType, bannedAt: $bannedAt, deactivationReason: $deactivationReason, deactivatedAt: $deactivatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstname, firstname) ||
                other.firstname == firstname) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.lastname, lastname) ||
                other.lastname == lastname) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.lastLogin, lastLogin) ||
                other.lastLogin == lastLogin) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.banReason, banReason) ||
                other.banReason == banReason) &&
            (identical(other.banType, banType) || other.banType == banType) &&
            (identical(other.bannedAt, bannedAt) ||
                other.bannedAt == bannedAt) &&
            (identical(other.deactivationReason, deactivationReason) ||
                other.deactivationReason == deactivationReason) &&
            (identical(other.deactivatedAt, deactivatedAt) ||
                other.deactivatedAt == deactivatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    firstname,
    email,
    status,
    lastname,
    phone,
    avatar,
    lastLogin,
    createdAt,
    updatedAt,
    banReason,
    banType,
    bannedAt,
    deactivationReason,
    deactivatedAt,
  );

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
    required final String firstname,
    required final String email,
    required final String status,
    final String? lastname,
    final String? phone,
    final String? avatar,
    final DateTime? lastLogin,
    final DateTime? createdAt,
    final DateTime? updatedAt,
    final String? banReason,
    final String? banType,
    final DateTime? bannedAt,
    final String? deactivationReason,
    final DateTime? deactivatedAt,
  }) = _$UserEntityImpl;

  factory _UserEntity.fromJson(Map<String, dynamic> json) =
      _$UserEntityImpl.fromJson;

  @override
  int get id;
  @override
  String get firstname;
  @override
  String get email;
  @override
  String get status;
  @override
  String? get lastname;
  @override
  String? get phone;
  @override
  String? get avatar;
  @override
  DateTime? get lastLogin;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  String? get banReason;
  @override
  String? get banType;
  @override
  DateTime? get bannedAt;
  @override
  String? get deactivationReason;
  @override
  DateTime? get deactivatedAt;

  /// Create a copy of UserEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserEntityImplCopyWith<_$UserEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserListEntity _$UserListEntityFromJson(Map<String, dynamic> json) {
  return _UserListEntity.fromJson(json);
}

/// @nodoc
mixin _$UserListEntity {
  List<UserEntity> get users => throw _privateConstructorUsedError;
  UserPaginationEntity get pagination => throw _privateConstructorUsedError;

  /// Serializes this UserListEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserListEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserListEntityCopyWith<UserListEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserListEntityCopyWith<$Res> {
  factory $UserListEntityCopyWith(
    UserListEntity value,
    $Res Function(UserListEntity) then,
  ) = _$UserListEntityCopyWithImpl<$Res, UserListEntity>;
  @useResult
  $Res call({List<UserEntity> users, UserPaginationEntity pagination});

  $UserPaginationEntityCopyWith<$Res> get pagination;
}

/// @nodoc
class _$UserListEntityCopyWithImpl<$Res, $Val extends UserListEntity>
    implements $UserListEntityCopyWith<$Res> {
  _$UserListEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserListEntity
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
                      as UserPaginationEntity,
          )
          as $Val,
    );
  }

  /// Create a copy of UserListEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserPaginationEntityCopyWith<$Res> get pagination {
    return $UserPaginationEntityCopyWith<$Res>(_value.pagination, (value) {
      return _then(_value.copyWith(pagination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserListEntityImplCopyWith<$Res>
    implements $UserListEntityCopyWith<$Res> {
  factory _$$UserListEntityImplCopyWith(
    _$UserListEntityImpl value,
    $Res Function(_$UserListEntityImpl) then,
  ) = __$$UserListEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<UserEntity> users, UserPaginationEntity pagination});

  @override
  $UserPaginationEntityCopyWith<$Res> get pagination;
}

/// @nodoc
class __$$UserListEntityImplCopyWithImpl<$Res>
    extends _$UserListEntityCopyWithImpl<$Res, _$UserListEntityImpl>
    implements _$$UserListEntityImplCopyWith<$Res> {
  __$$UserListEntityImplCopyWithImpl(
    _$UserListEntityImpl _value,
    $Res Function(_$UserListEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserListEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? users = null, Object? pagination = null}) {
    return _then(
      _$UserListEntityImpl(
        users: null == users
            ? _value._users
            : users // ignore: cast_nullable_to_non_nullable
                  as List<UserEntity>,
        pagination: null == pagination
            ? _value.pagination
            : pagination // ignore: cast_nullable_to_non_nullable
                  as UserPaginationEntity,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserListEntityImpl implements _UserListEntity {
  const _$UserListEntityImpl({
    required final List<UserEntity> users,
    required this.pagination,
  }) : _users = users;

  factory _$UserListEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserListEntityImplFromJson(json);

  final List<UserEntity> _users;
  @override
  List<UserEntity> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  final UserPaginationEntity pagination;

  @override
  String toString() {
    return 'UserListEntity(users: $users, pagination: $pagination)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserListEntityImpl &&
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

  /// Create a copy of UserListEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserListEntityImplCopyWith<_$UserListEntityImpl> get copyWith =>
      __$$UserListEntityImplCopyWithImpl<_$UserListEntityImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$UserListEntityImplToJson(this);
  }
}

abstract class _UserListEntity implements UserListEntity {
  const factory _UserListEntity({
    required final List<UserEntity> users,
    required final UserPaginationEntity pagination,
  }) = _$UserListEntityImpl;

  factory _UserListEntity.fromJson(Map<String, dynamic> json) =
      _$UserListEntityImpl.fromJson;

  @override
  List<UserEntity> get users;
  @override
  UserPaginationEntity get pagination;

  /// Create a copy of UserListEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserListEntityImplCopyWith<_$UserListEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserPaginationEntity _$UserPaginationEntityFromJson(Map<String, dynamic> json) {
  return _UserPaginationEntity.fromJson(json);
}

/// @nodoc
mixin _$UserPaginationEntity {
  int get total => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get pages => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;

  /// Serializes this UserPaginationEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserPaginationEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserPaginationEntityCopyWith<UserPaginationEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserPaginationEntityCopyWith<$Res> {
  factory $UserPaginationEntityCopyWith(
    UserPaginationEntity value,
    $Res Function(UserPaginationEntity) then,
  ) = _$UserPaginationEntityCopyWithImpl<$Res, UserPaginationEntity>;
  @useResult
  $Res call({int total, int page, int pages, int limit});
}

/// @nodoc
class _$UserPaginationEntityCopyWithImpl<
  $Res,
  $Val extends UserPaginationEntity
>
    implements $UserPaginationEntityCopyWith<$Res> {
  _$UserPaginationEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserPaginationEntity
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
abstract class _$$UserPaginationEntityImplCopyWith<$Res>
    implements $UserPaginationEntityCopyWith<$Res> {
  factory _$$UserPaginationEntityImplCopyWith(
    _$UserPaginationEntityImpl value,
    $Res Function(_$UserPaginationEntityImpl) then,
  ) = __$$UserPaginationEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int total, int page, int pages, int limit});
}

/// @nodoc
class __$$UserPaginationEntityImplCopyWithImpl<$Res>
    extends _$UserPaginationEntityCopyWithImpl<$Res, _$UserPaginationEntityImpl>
    implements _$$UserPaginationEntityImplCopyWith<$Res> {
  __$$UserPaginationEntityImplCopyWithImpl(
    _$UserPaginationEntityImpl _value,
    $Res Function(_$UserPaginationEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserPaginationEntity
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
      _$UserPaginationEntityImpl(
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
class _$UserPaginationEntityImpl implements _UserPaginationEntity {
  const _$UserPaginationEntityImpl({
    required this.total,
    required this.page,
    required this.pages,
    required this.limit,
  });

  factory _$UserPaginationEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserPaginationEntityImplFromJson(json);

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
    return 'UserPaginationEntity(total: $total, page: $page, pages: $pages, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserPaginationEntityImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pages, pages) || other.pages == pages) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, total, page, pages, limit);

  /// Create a copy of UserPaginationEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserPaginationEntityImplCopyWith<_$UserPaginationEntityImpl>
  get copyWith =>
      __$$UserPaginationEntityImplCopyWithImpl<_$UserPaginationEntityImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$UserPaginationEntityImplToJson(this);
  }
}

abstract class _UserPaginationEntity implements UserPaginationEntity {
  const factory _UserPaginationEntity({
    required final int total,
    required final int page,
    required final int pages,
    required final int limit,
  }) = _$UserPaginationEntityImpl;

  factory _UserPaginationEntity.fromJson(Map<String, dynamic> json) =
      _$UserPaginationEntityImpl.fromJson;

  @override
  int get total;
  @override
  int get page;
  @override
  int get pages;
  @override
  int get limit;

  /// Create a copy of UserPaginationEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserPaginationEntityImplCopyWith<_$UserPaginationEntityImpl>
  get copyWith => throw _privateConstructorUsedError;
}

CreateUserRequest _$CreateUserRequestFromJson(Map<String, dynamic> json) {
  return _CreateUserRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateUserRequest {
  String get firstname => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String? get lastname => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;

  /// Serializes this CreateUserRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateUserRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateUserRequestCopyWith<CreateUserRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateUserRequestCopyWith<$Res> {
  factory $CreateUserRequestCopyWith(
    CreateUserRequest value,
    $Res Function(CreateUserRequest) then,
  ) = _$CreateUserRequestCopyWithImpl<$Res, CreateUserRequest>;
  @useResult
  $Res call({
    String firstname,
    String email,
    String? lastname,
    String? phone,
    String? password,
    String? status,
  });
}

/// @nodoc
class _$CreateUserRequestCopyWithImpl<$Res, $Val extends CreateUserRequest>
    implements $CreateUserRequestCopyWith<$Res> {
  _$CreateUserRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateUserRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstname = null,
    Object? email = null,
    Object? lastname = freezed,
    Object? phone = freezed,
    Object? password = freezed,
    Object? status = freezed,
  }) {
    return _then(
      _value.copyWith(
            firstname: null == firstname
                ? _value.firstname
                : firstname // ignore: cast_nullable_to_non_nullable
                      as String,
            email: null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                      as String,
            lastname: freezed == lastname
                ? _value.lastname
                : lastname // ignore: cast_nullable_to_non_nullable
                      as String?,
            phone: freezed == phone
                ? _value.phone
                : phone // ignore: cast_nullable_to_non_nullable
                      as String?,
            password: freezed == password
                ? _value.password
                : password // ignore: cast_nullable_to_non_nullable
                      as String?,
            status: freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CreateUserRequestImplCopyWith<$Res>
    implements $CreateUserRequestCopyWith<$Res> {
  factory _$$CreateUserRequestImplCopyWith(
    _$CreateUserRequestImpl value,
    $Res Function(_$CreateUserRequestImpl) then,
  ) = __$$CreateUserRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String firstname,
    String email,
    String? lastname,
    String? phone,
    String? password,
    String? status,
  });
}

/// @nodoc
class __$$CreateUserRequestImplCopyWithImpl<$Res>
    extends _$CreateUserRequestCopyWithImpl<$Res, _$CreateUserRequestImpl>
    implements _$$CreateUserRequestImplCopyWith<$Res> {
  __$$CreateUserRequestImplCopyWithImpl(
    _$CreateUserRequestImpl _value,
    $Res Function(_$CreateUserRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CreateUserRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstname = null,
    Object? email = null,
    Object? lastname = freezed,
    Object? phone = freezed,
    Object? password = freezed,
    Object? status = freezed,
  }) {
    return _then(
      _$CreateUserRequestImpl(
        firstname: null == firstname
            ? _value.firstname
            : firstname // ignore: cast_nullable_to_non_nullable
                  as String,
        email: null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
        lastname: freezed == lastname
            ? _value.lastname
            : lastname // ignore: cast_nullable_to_non_nullable
                  as String?,
        phone: freezed == phone
            ? _value.phone
            : phone // ignore: cast_nullable_to_non_nullable
                  as String?,
        password: freezed == password
            ? _value.password
            : password // ignore: cast_nullable_to_non_nullable
                  as String?,
        status: freezed == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateUserRequestImpl implements _CreateUserRequest {
  const _$CreateUserRequestImpl({
    required this.firstname,
    required this.email,
    this.lastname,
    this.phone,
    this.password,
    this.status,
  });

  factory _$CreateUserRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateUserRequestImplFromJson(json);

  @override
  final String firstname;
  @override
  final String email;
  @override
  final String? lastname;
  @override
  final String? phone;
  @override
  final String? password;
  @override
  final String? status;

  @override
  String toString() {
    return 'CreateUserRequest(firstname: $firstname, email: $email, lastname: $lastname, phone: $phone, password: $password, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateUserRequestImpl &&
            (identical(other.firstname, firstname) ||
                other.firstname == firstname) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.lastname, lastname) ||
                other.lastname == lastname) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    firstname,
    email,
    lastname,
    phone,
    password,
    status,
  );

  /// Create a copy of CreateUserRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateUserRequestImplCopyWith<_$CreateUserRequestImpl> get copyWith =>
      __$$CreateUserRequestImplCopyWithImpl<_$CreateUserRequestImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateUserRequestImplToJson(this);
  }
}

abstract class _CreateUserRequest implements CreateUserRequest {
  const factory _CreateUserRequest({
    required final String firstname,
    required final String email,
    final String? lastname,
    final String? phone,
    final String? password,
    final String? status,
  }) = _$CreateUserRequestImpl;

  factory _CreateUserRequest.fromJson(Map<String, dynamic> json) =
      _$CreateUserRequestImpl.fromJson;

  @override
  String get firstname;
  @override
  String get email;
  @override
  String? get lastname;
  @override
  String? get phone;
  @override
  String? get password;
  @override
  String? get status;

  /// Create a copy of CreateUserRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateUserRequestImplCopyWith<_$CreateUserRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdateUserRequest _$UpdateUserRequestFromJson(Map<String, dynamic> json) {
  return _UpdateUserRequest.fromJson(json);
}

/// @nodoc
mixin _$UpdateUserRequest {
  int get userId => throw _privateConstructorUsedError;
  String? get firstname => throw _privateConstructorUsedError;
  String? get lastname => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;

  /// Serializes this UpdateUserRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateUserRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateUserRequestCopyWith<UpdateUserRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateUserRequestCopyWith<$Res> {
  factory $UpdateUserRequestCopyWith(
    UpdateUserRequest value,
    $Res Function(UpdateUserRequest) then,
  ) = _$UpdateUserRequestCopyWithImpl<$Res, UpdateUserRequest>;
  @useResult
  $Res call({
    int userId,
    String? firstname,
    String? lastname,
    String? email,
    String? phone,
    String? status,
  });
}

/// @nodoc
class _$UpdateUserRequestCopyWithImpl<$Res, $Val extends UpdateUserRequest>
    implements $UpdateUserRequestCopyWith<$Res> {
  _$UpdateUserRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateUserRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? firstname = freezed,
    Object? lastname = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? status = freezed,
  }) {
    return _then(
      _value.copyWith(
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as int,
            firstname: freezed == firstname
                ? _value.firstname
                : firstname // ignore: cast_nullable_to_non_nullable
                      as String?,
            lastname: freezed == lastname
                ? _value.lastname
                : lastname // ignore: cast_nullable_to_non_nullable
                      as String?,
            email: freezed == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                      as String?,
            phone: freezed == phone
                ? _value.phone
                : phone // ignore: cast_nullable_to_non_nullable
                      as String?,
            status: freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UpdateUserRequestImplCopyWith<$Res>
    implements $UpdateUserRequestCopyWith<$Res> {
  factory _$$UpdateUserRequestImplCopyWith(
    _$UpdateUserRequestImpl value,
    $Res Function(_$UpdateUserRequestImpl) then,
  ) = __$$UpdateUserRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int userId,
    String? firstname,
    String? lastname,
    String? email,
    String? phone,
    String? status,
  });
}

/// @nodoc
class __$$UpdateUserRequestImplCopyWithImpl<$Res>
    extends _$UpdateUserRequestCopyWithImpl<$Res, _$UpdateUserRequestImpl>
    implements _$$UpdateUserRequestImplCopyWith<$Res> {
  __$$UpdateUserRequestImplCopyWithImpl(
    _$UpdateUserRequestImpl _value,
    $Res Function(_$UpdateUserRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UpdateUserRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? firstname = freezed,
    Object? lastname = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? status = freezed,
  }) {
    return _then(
      _$UpdateUserRequestImpl(
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as int,
        firstname: freezed == firstname
            ? _value.firstname
            : firstname // ignore: cast_nullable_to_non_nullable
                  as String?,
        lastname: freezed == lastname
            ? _value.lastname
            : lastname // ignore: cast_nullable_to_non_nullable
                  as String?,
        email: freezed == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String?,
        phone: freezed == phone
            ? _value.phone
            : phone // ignore: cast_nullable_to_non_nullable
                  as String?,
        status: freezed == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateUserRequestImpl implements _UpdateUserRequest {
  const _$UpdateUserRequestImpl({
    required this.userId,
    this.firstname,
    this.lastname,
    this.email,
    this.phone,
    this.status,
  });

  factory _$UpdateUserRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateUserRequestImplFromJson(json);

  @override
  final int userId;
  @override
  final String? firstname;
  @override
  final String? lastname;
  @override
  final String? email;
  @override
  final String? phone;
  @override
  final String? status;

  @override
  String toString() {
    return 'UpdateUserRequest(userId: $userId, firstname: $firstname, lastname: $lastname, email: $email, phone: $phone, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserRequestImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.firstname, firstname) ||
                other.firstname == firstname) &&
            (identical(other.lastname, lastname) ||
                other.lastname == lastname) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    userId,
    firstname,
    lastname,
    email,
    phone,
    status,
  );

  /// Create a copy of UpdateUserRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUserRequestImplCopyWith<_$UpdateUserRequestImpl> get copyWith =>
      __$$UpdateUserRequestImplCopyWithImpl<_$UpdateUserRequestImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateUserRequestImplToJson(this);
  }
}

abstract class _UpdateUserRequest implements UpdateUserRequest {
  const factory _UpdateUserRequest({
    required final int userId,
    final String? firstname,
    final String? lastname,
    final String? email,
    final String? phone,
    final String? status,
  }) = _$UpdateUserRequestImpl;

  factory _UpdateUserRequest.fromJson(Map<String, dynamic> json) =
      _$UpdateUserRequestImpl.fromJson;

  @override
  int get userId;
  @override
  String? get firstname;
  @override
  String? get lastname;
  @override
  String? get email;
  @override
  String? get phone;
  @override
  String? get status;

  /// Create a copy of UpdateUserRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateUserRequestImplCopyWith<_$UpdateUserRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdateUserStatusRequest _$UpdateUserStatusRequestFromJson(
  Map<String, dynamic> json,
) {
  return _UpdateUserStatusRequest.fromJson(json);
}

/// @nodoc
mixin _$UpdateUserStatusRequest {
  int get userId => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  /// Serializes this UpdateUserStatusRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateUserStatusRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateUserStatusRequestCopyWith<UpdateUserStatusRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateUserStatusRequestCopyWith<$Res> {
  factory $UpdateUserStatusRequestCopyWith(
    UpdateUserStatusRequest value,
    $Res Function(UpdateUserStatusRequest) then,
  ) = _$UpdateUserStatusRequestCopyWithImpl<$Res, UpdateUserStatusRequest>;
  @useResult
  $Res call({int userId, String status});
}

/// @nodoc
class _$UpdateUserStatusRequestCopyWithImpl<
  $Res,
  $Val extends UpdateUserStatusRequest
>
    implements $UpdateUserStatusRequestCopyWith<$Res> {
  _$UpdateUserStatusRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateUserStatusRequest
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
abstract class _$$UpdateUserStatusRequestImplCopyWith<$Res>
    implements $UpdateUserStatusRequestCopyWith<$Res> {
  factory _$$UpdateUserStatusRequestImplCopyWith(
    _$UpdateUserStatusRequestImpl value,
    $Res Function(_$UpdateUserStatusRequestImpl) then,
  ) = __$$UpdateUserStatusRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int userId, String status});
}

/// @nodoc
class __$$UpdateUserStatusRequestImplCopyWithImpl<$Res>
    extends
        _$UpdateUserStatusRequestCopyWithImpl<
          $Res,
          _$UpdateUserStatusRequestImpl
        >
    implements _$$UpdateUserStatusRequestImplCopyWith<$Res> {
  __$$UpdateUserStatusRequestImplCopyWithImpl(
    _$UpdateUserStatusRequestImpl _value,
    $Res Function(_$UpdateUserStatusRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UpdateUserStatusRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? userId = null, Object? status = null}) {
    return _then(
      _$UpdateUserStatusRequestImpl(
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
class _$UpdateUserStatusRequestImpl implements _UpdateUserStatusRequest {
  const _$UpdateUserStatusRequestImpl({
    required this.userId,
    required this.status,
  });

  factory _$UpdateUserStatusRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateUserStatusRequestImplFromJson(json);

  @override
  final int userId;
  @override
  final String status;

  @override
  String toString() {
    return 'UpdateUserStatusRequest(userId: $userId, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserStatusRequestImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, status);

  /// Create a copy of UpdateUserStatusRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUserStatusRequestImplCopyWith<_$UpdateUserStatusRequestImpl>
  get copyWith =>
      __$$UpdateUserStatusRequestImplCopyWithImpl<
        _$UpdateUserStatusRequestImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateUserStatusRequestImplToJson(this);
  }
}

abstract class _UpdateUserStatusRequest implements UpdateUserStatusRequest {
  const factory _UpdateUserStatusRequest({
    required final int userId,
    required final String status,
  }) = _$UpdateUserStatusRequestImpl;

  factory _UpdateUserStatusRequest.fromJson(Map<String, dynamic> json) =
      _$UpdateUserStatusRequestImpl.fromJson;

  @override
  int get userId;
  @override
  String get status;

  /// Create a copy of UpdateUserStatusRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateUserStatusRequestImplCopyWith<_$UpdateUserStatusRequestImpl>
  get copyWith => throw _privateConstructorUsedError;
}

BanUserRequest _$BanUserRequestFromJson(Map<String, dynamic> json) {
  return _BanUserRequest.fromJson(json);
}

/// @nodoc
mixin _$BanUserRequest {
  String get reason => throw _privateConstructorUsedError;
  String get banType => throw _privateConstructorUsedError;

  /// Serializes this BanUserRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BanUserRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BanUserRequestCopyWith<BanUserRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BanUserRequestCopyWith<$Res> {
  factory $BanUserRequestCopyWith(
    BanUserRequest value,
    $Res Function(BanUserRequest) then,
  ) = _$BanUserRequestCopyWithImpl<$Res, BanUserRequest>;
  @useResult
  $Res call({String reason, String banType});
}

/// @nodoc
class _$BanUserRequestCopyWithImpl<$Res, $Val extends BanUserRequest>
    implements $BanUserRequestCopyWith<$Res> {
  _$BanUserRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BanUserRequest
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
abstract class _$$BanUserRequestImplCopyWith<$Res>
    implements $BanUserRequestCopyWith<$Res> {
  factory _$$BanUserRequestImplCopyWith(
    _$BanUserRequestImpl value,
    $Res Function(_$BanUserRequestImpl) then,
  ) = __$$BanUserRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String reason, String banType});
}

/// @nodoc
class __$$BanUserRequestImplCopyWithImpl<$Res>
    extends _$BanUserRequestCopyWithImpl<$Res, _$BanUserRequestImpl>
    implements _$$BanUserRequestImplCopyWith<$Res> {
  __$$BanUserRequestImplCopyWithImpl(
    _$BanUserRequestImpl _value,
    $Res Function(_$BanUserRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BanUserRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? reason = null, Object? banType = null}) {
    return _then(
      _$BanUserRequestImpl(
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
class _$BanUserRequestImpl implements _BanUserRequest {
  const _$BanUserRequestImpl({required this.reason, required this.banType});

  factory _$BanUserRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$BanUserRequestImplFromJson(json);

  @override
  final String reason;
  @override
  final String banType;

  @override
  String toString() {
    return 'BanUserRequest(reason: $reason, banType: $banType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BanUserRequestImpl &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.banType, banType) || other.banType == banType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, reason, banType);

  /// Create a copy of BanUserRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BanUserRequestImplCopyWith<_$BanUserRequestImpl> get copyWith =>
      __$$BanUserRequestImplCopyWithImpl<_$BanUserRequestImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$BanUserRequestImplToJson(this);
  }
}

abstract class _BanUserRequest implements BanUserRequest {
  const factory _BanUserRequest({
    required final String reason,
    required final String banType,
  }) = _$BanUserRequestImpl;

  factory _BanUserRequest.fromJson(Map<String, dynamic> json) =
      _$BanUserRequestImpl.fromJson;

  @override
  String get reason;
  @override
  String get banType;

  /// Create a copy of BanUserRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BanUserRequestImplCopyWith<_$BanUserRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DeactivateUserRequest _$DeactivateUserRequestFromJson(
  Map<String, dynamic> json,
) {
  return _DeactivateUserRequest.fromJson(json);
}

/// @nodoc
mixin _$DeactivateUserRequest {
  String get reason => throw _privateConstructorUsedError;

  /// Serializes this DeactivateUserRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeactivateUserRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeactivateUserRequestCopyWith<DeactivateUserRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeactivateUserRequestCopyWith<$Res> {
  factory $DeactivateUserRequestCopyWith(
    DeactivateUserRequest value,
    $Res Function(DeactivateUserRequest) then,
  ) = _$DeactivateUserRequestCopyWithImpl<$Res, DeactivateUserRequest>;
  @useResult
  $Res call({String reason});
}

/// @nodoc
class _$DeactivateUserRequestCopyWithImpl<
  $Res,
  $Val extends DeactivateUserRequest
>
    implements $DeactivateUserRequestCopyWith<$Res> {
  _$DeactivateUserRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeactivateUserRequest
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
abstract class _$$DeactivateUserRequestImplCopyWith<$Res>
    implements $DeactivateUserRequestCopyWith<$Res> {
  factory _$$DeactivateUserRequestImplCopyWith(
    _$DeactivateUserRequestImpl value,
    $Res Function(_$DeactivateUserRequestImpl) then,
  ) = __$$DeactivateUserRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String reason});
}

/// @nodoc
class __$$DeactivateUserRequestImplCopyWithImpl<$Res>
    extends
        _$DeactivateUserRequestCopyWithImpl<$Res, _$DeactivateUserRequestImpl>
    implements _$$DeactivateUserRequestImplCopyWith<$Res> {
  __$$DeactivateUserRequestImplCopyWithImpl(
    _$DeactivateUserRequestImpl _value,
    $Res Function(_$DeactivateUserRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DeactivateUserRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? reason = null}) {
    return _then(
      _$DeactivateUserRequestImpl(
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
class _$DeactivateUserRequestImpl implements _DeactivateUserRequest {
  const _$DeactivateUserRequestImpl({required this.reason});

  factory _$DeactivateUserRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeactivateUserRequestImplFromJson(json);

  @override
  final String reason;

  @override
  String toString() {
    return 'DeactivateUserRequest(reason: $reason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeactivateUserRequestImpl &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, reason);

  /// Create a copy of DeactivateUserRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeactivateUserRequestImplCopyWith<_$DeactivateUserRequestImpl>
  get copyWith =>
      __$$DeactivateUserRequestImplCopyWithImpl<_$DeactivateUserRequestImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DeactivateUserRequestImplToJson(this);
  }
}

abstract class _DeactivateUserRequest implements DeactivateUserRequest {
  const factory _DeactivateUserRequest({required final String reason}) =
      _$DeactivateUserRequestImpl;

  factory _DeactivateUserRequest.fromJson(Map<String, dynamic> json) =
      _$DeactivateUserRequestImpl.fromJson;

  @override
  String get reason;

  /// Create a copy of DeactivateUserRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeactivateUserRequestImplCopyWith<_$DeactivateUserRequestImpl>
  get copyWith => throw _privateConstructorUsedError;
}

UserSearchParams _$UserSearchParamsFromJson(Map<String, dynamic> json) {
  return _UserSearchParams.fromJson(json);
}

/// @nodoc
mixin _$UserSearchParams {
  String? get search => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;

  /// Serializes this UserSearchParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserSearchParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserSearchParamsCopyWith<UserSearchParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserSearchParamsCopyWith<$Res> {
  factory $UserSearchParamsCopyWith(
    UserSearchParams value,
    $Res Function(UserSearchParams) then,
  ) = _$UserSearchParamsCopyWithImpl<$Res, UserSearchParams>;
  @useResult
  $Res call({String? search, String? status, int? page, int? limit});
}

/// @nodoc
class _$UserSearchParamsCopyWithImpl<$Res, $Val extends UserSearchParams>
    implements $UserSearchParamsCopyWith<$Res> {
  _$UserSearchParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserSearchParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? search = freezed,
    Object? status = freezed,
    Object? page = freezed,
    Object? limit = freezed,
  }) {
    return _then(
      _value.copyWith(
            search: freezed == search
                ? _value.search
                : search // ignore: cast_nullable_to_non_nullable
                      as String?,
            status: freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String?,
            page: freezed == page
                ? _value.page
                : page // ignore: cast_nullable_to_non_nullable
                      as int?,
            limit: freezed == limit
                ? _value.limit
                : limit // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UserSearchParamsImplCopyWith<$Res>
    implements $UserSearchParamsCopyWith<$Res> {
  factory _$$UserSearchParamsImplCopyWith(
    _$UserSearchParamsImpl value,
    $Res Function(_$UserSearchParamsImpl) then,
  ) = __$$UserSearchParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? search, String? status, int? page, int? limit});
}

/// @nodoc
class __$$UserSearchParamsImplCopyWithImpl<$Res>
    extends _$UserSearchParamsCopyWithImpl<$Res, _$UserSearchParamsImpl>
    implements _$$UserSearchParamsImplCopyWith<$Res> {
  __$$UserSearchParamsImplCopyWithImpl(
    _$UserSearchParamsImpl _value,
    $Res Function(_$UserSearchParamsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserSearchParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? search = freezed,
    Object? status = freezed,
    Object? page = freezed,
    Object? limit = freezed,
  }) {
    return _then(
      _$UserSearchParamsImpl(
        search: freezed == search
            ? _value.search
            : search // ignore: cast_nullable_to_non_nullable
                  as String?,
        status: freezed == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String?,
        page: freezed == page
            ? _value.page
            : page // ignore: cast_nullable_to_non_nullable
                  as int?,
        limit: freezed == limit
            ? _value.limit
            : limit // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserSearchParamsImpl implements _UserSearchParams {
  const _$UserSearchParamsImpl({
    this.search,
    this.status,
    this.page,
    this.limit,
  });

  factory _$UserSearchParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserSearchParamsImplFromJson(json);

  @override
  final String? search;
  @override
  final String? status;
  @override
  final int? page;
  @override
  final int? limit;

  @override
  String toString() {
    return 'UserSearchParams(search: $search, status: $status, page: $page, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserSearchParamsImpl &&
            (identical(other.search, search) || other.search == search) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, search, status, page, limit);

  /// Create a copy of UserSearchParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserSearchParamsImplCopyWith<_$UserSearchParamsImpl> get copyWith =>
      __$$UserSearchParamsImplCopyWithImpl<_$UserSearchParamsImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$UserSearchParamsImplToJson(this);
  }
}

abstract class _UserSearchParams implements UserSearchParams {
  const factory _UserSearchParams({
    final String? search,
    final String? status,
    final int? page,
    final int? limit,
  }) = _$UserSearchParamsImpl;

  factory _UserSearchParams.fromJson(Map<String, dynamic> json) =
      _$UserSearchParamsImpl.fromJson;

  @override
  String? get search;
  @override
  String? get status;
  @override
  int? get page;
  @override
  int? get limit;

  /// Create a copy of UserSearchParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserSearchParamsImplCopyWith<_$UserSearchParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
