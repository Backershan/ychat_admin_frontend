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
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
    _$UserModelImpl value,
    $Res Function(_$UserModelImpl) then,
  ) = __$$UserModelImplCopyWithImpl<$Res>;
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
      _$UserModelImpl(
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
class _$UserModelImpl implements _UserModel {
  const _$UserModelImpl({
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

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

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
    return 'UserModel(id: $id, firstname: $firstname, email: $email, status: $status, lastname: $lastname, phone: $phone, avatar: $avatar, lastLogin: $lastLogin, createdAt: $createdAt, updatedAt: $updatedAt, banReason: $banReason, banType: $banType, bannedAt: $bannedAt, deactivationReason: $deactivationReason, deactivatedAt: $deactivatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
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
  }) = _$UserModelImpl;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

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
  UserPaginationModel get pagination => throw _privateConstructorUsedError;

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
  $Res call({List<UserModel> users, UserPaginationModel pagination});

  $UserPaginationModelCopyWith<$Res> get pagination;
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
  $Res call({Object? users = null, Object? pagination = null}) {
    return _then(
      _value.copyWith(
            users: null == users
                ? _value.users
                : users // ignore: cast_nullable_to_non_nullable
                      as List<UserModel>,
            pagination: null == pagination
                ? _value.pagination
                : pagination // ignore: cast_nullable_to_non_nullable
                      as UserPaginationModel,
          )
          as $Val,
    );
  }

  /// Create a copy of UserListModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserPaginationModelCopyWith<$Res> get pagination {
    return $UserPaginationModelCopyWith<$Res>(_value.pagination, (value) {
      return _then(_value.copyWith(pagination: value) as $Val);
    });
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
  $Res call({List<UserModel> users, UserPaginationModel pagination});

  @override
  $UserPaginationModelCopyWith<$Res> get pagination;
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
  $Res call({Object? users = null, Object? pagination = null}) {
    return _then(
      _$UserListModelImpl(
        users: null == users
            ? _value._users
            : users // ignore: cast_nullable_to_non_nullable
                  as List<UserModel>,
        pagination: null == pagination
            ? _value.pagination
            : pagination // ignore: cast_nullable_to_non_nullable
                  as UserPaginationModel,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserListModelImpl implements _UserListModel {
  const _$UserListModelImpl({
    required final List<UserModel> users,
    required this.pagination,
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
  final UserPaginationModel pagination;

  @override
  String toString() {
    return 'UserListModel(users: $users, pagination: $pagination)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserListModelImpl &&
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
    required final UserPaginationModel pagination,
  }) = _$UserListModelImpl;

  factory _UserListModel.fromJson(Map<String, dynamic> json) =
      _$UserListModelImpl.fromJson;

  @override
  List<UserModel> get users;
  @override
  UserPaginationModel get pagination;

  /// Create a copy of UserListModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserListModelImplCopyWith<_$UserListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserPaginationModel _$UserPaginationModelFromJson(Map<String, dynamic> json) {
  return _UserPaginationModel.fromJson(json);
}

/// @nodoc
mixin _$UserPaginationModel {
  int get total => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get pages => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;

  /// Serializes this UserPaginationModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserPaginationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserPaginationModelCopyWith<UserPaginationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserPaginationModelCopyWith<$Res> {
  factory $UserPaginationModelCopyWith(
    UserPaginationModel value,
    $Res Function(UserPaginationModel) then,
  ) = _$UserPaginationModelCopyWithImpl<$Res, UserPaginationModel>;
  @useResult
  $Res call({int total, int page, int pages, int limit});
}

/// @nodoc
class _$UserPaginationModelCopyWithImpl<$Res, $Val extends UserPaginationModel>
    implements $UserPaginationModelCopyWith<$Res> {
  _$UserPaginationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserPaginationModel
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
abstract class _$$UserPaginationModelImplCopyWith<$Res>
    implements $UserPaginationModelCopyWith<$Res> {
  factory _$$UserPaginationModelImplCopyWith(
    _$UserPaginationModelImpl value,
    $Res Function(_$UserPaginationModelImpl) then,
  ) = __$$UserPaginationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int total, int page, int pages, int limit});
}

/// @nodoc
class __$$UserPaginationModelImplCopyWithImpl<$Res>
    extends _$UserPaginationModelCopyWithImpl<$Res, _$UserPaginationModelImpl>
    implements _$$UserPaginationModelImplCopyWith<$Res> {
  __$$UserPaginationModelImplCopyWithImpl(
    _$UserPaginationModelImpl _value,
    $Res Function(_$UserPaginationModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserPaginationModel
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
      _$UserPaginationModelImpl(
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
class _$UserPaginationModelImpl implements _UserPaginationModel {
  const _$UserPaginationModelImpl({
    required this.total,
    required this.page,
    required this.pages,
    required this.limit,
  });

  factory _$UserPaginationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserPaginationModelImplFromJson(json);

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
    return 'UserPaginationModel(total: $total, page: $page, pages: $pages, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserPaginationModelImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pages, pages) || other.pages == pages) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, total, page, pages, limit);

  /// Create a copy of UserPaginationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserPaginationModelImplCopyWith<_$UserPaginationModelImpl> get copyWith =>
      __$$UserPaginationModelImplCopyWithImpl<_$UserPaginationModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$UserPaginationModelImplToJson(this);
  }
}

abstract class _UserPaginationModel implements UserPaginationModel {
  const factory _UserPaginationModel({
    required final int total,
    required final int page,
    required final int pages,
    required final int limit,
  }) = _$UserPaginationModelImpl;

  factory _UserPaginationModel.fromJson(Map<String, dynamic> json) =
      _$UserPaginationModelImpl.fromJson;

  @override
  int get total;
  @override
  int get page;
  @override
  int get pages;
  @override
  int get limit;

  /// Create a copy of UserPaginationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserPaginationModelImplCopyWith<_$UserPaginationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateUserRequestModel _$CreateUserRequestModelFromJson(
  Map<String, dynamic> json,
) {
  return _CreateUserRequestModel.fromJson(json);
}

/// @nodoc
mixin _$CreateUserRequestModel {
  String get firstname => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String? get lastname => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;

  /// Serializes this CreateUserRequestModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateUserRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateUserRequestModelCopyWith<CreateUserRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateUserRequestModelCopyWith<$Res> {
  factory $CreateUserRequestModelCopyWith(
    CreateUserRequestModel value,
    $Res Function(CreateUserRequestModel) then,
  ) = _$CreateUserRequestModelCopyWithImpl<$Res, CreateUserRequestModel>;
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
class _$CreateUserRequestModelCopyWithImpl<
  $Res,
  $Val extends CreateUserRequestModel
>
    implements $CreateUserRequestModelCopyWith<$Res> {
  _$CreateUserRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateUserRequestModel
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
abstract class _$$CreateUserRequestModelImplCopyWith<$Res>
    implements $CreateUserRequestModelCopyWith<$Res> {
  factory _$$CreateUserRequestModelImplCopyWith(
    _$CreateUserRequestModelImpl value,
    $Res Function(_$CreateUserRequestModelImpl) then,
  ) = __$$CreateUserRequestModelImplCopyWithImpl<$Res>;
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
class __$$CreateUserRequestModelImplCopyWithImpl<$Res>
    extends
        _$CreateUserRequestModelCopyWithImpl<$Res, _$CreateUserRequestModelImpl>
    implements _$$CreateUserRequestModelImplCopyWith<$Res> {
  __$$CreateUserRequestModelImplCopyWithImpl(
    _$CreateUserRequestModelImpl _value,
    $Res Function(_$CreateUserRequestModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CreateUserRequestModel
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
      _$CreateUserRequestModelImpl(
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
class _$CreateUserRequestModelImpl implements _CreateUserRequestModel {
  const _$CreateUserRequestModelImpl({
    required this.firstname,
    required this.email,
    this.lastname,
    this.phone,
    this.password,
    this.status,
  });

  factory _$CreateUserRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateUserRequestModelImplFromJson(json);

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
    return 'CreateUserRequestModel(firstname: $firstname, email: $email, lastname: $lastname, phone: $phone, password: $password, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateUserRequestModelImpl &&
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

  /// Create a copy of CreateUserRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateUserRequestModelImplCopyWith<_$CreateUserRequestModelImpl>
  get copyWith =>
      __$$CreateUserRequestModelImplCopyWithImpl<_$CreateUserRequestModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateUserRequestModelImplToJson(this);
  }
}

abstract class _CreateUserRequestModel implements CreateUserRequestModel {
  const factory _CreateUserRequestModel({
    required final String firstname,
    required final String email,
    final String? lastname,
    final String? phone,
    final String? password,
    final String? status,
  }) = _$CreateUserRequestModelImpl;

  factory _CreateUserRequestModel.fromJson(Map<String, dynamic> json) =
      _$CreateUserRequestModelImpl.fromJson;

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

  /// Create a copy of CreateUserRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateUserRequestModelImplCopyWith<_$CreateUserRequestModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}

UpdateUserRequestModel _$UpdateUserRequestModelFromJson(
  Map<String, dynamic> json,
) {
  return _UpdateUserRequestModel.fromJson(json);
}

/// @nodoc
mixin _$UpdateUserRequestModel {
  int get userId => throw _privateConstructorUsedError;
  String? get firstname => throw _privateConstructorUsedError;
  String? get lastname => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;

  /// Serializes this UpdateUserRequestModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateUserRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateUserRequestModelCopyWith<UpdateUserRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateUserRequestModelCopyWith<$Res> {
  factory $UpdateUserRequestModelCopyWith(
    UpdateUserRequestModel value,
    $Res Function(UpdateUserRequestModel) then,
  ) = _$UpdateUserRequestModelCopyWithImpl<$Res, UpdateUserRequestModel>;
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
class _$UpdateUserRequestModelCopyWithImpl<
  $Res,
  $Val extends UpdateUserRequestModel
>
    implements $UpdateUserRequestModelCopyWith<$Res> {
  _$UpdateUserRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateUserRequestModel
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
abstract class _$$UpdateUserRequestModelImplCopyWith<$Res>
    implements $UpdateUserRequestModelCopyWith<$Res> {
  factory _$$UpdateUserRequestModelImplCopyWith(
    _$UpdateUserRequestModelImpl value,
    $Res Function(_$UpdateUserRequestModelImpl) then,
  ) = __$$UpdateUserRequestModelImplCopyWithImpl<$Res>;
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
class __$$UpdateUserRequestModelImplCopyWithImpl<$Res>
    extends
        _$UpdateUserRequestModelCopyWithImpl<$Res, _$UpdateUserRequestModelImpl>
    implements _$$UpdateUserRequestModelImplCopyWith<$Res> {
  __$$UpdateUserRequestModelImplCopyWithImpl(
    _$UpdateUserRequestModelImpl _value,
    $Res Function(_$UpdateUserRequestModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UpdateUserRequestModel
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
      _$UpdateUserRequestModelImpl(
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
class _$UpdateUserRequestModelImpl implements _UpdateUserRequestModel {
  const _$UpdateUserRequestModelImpl({
    required this.userId,
    this.firstname,
    this.lastname,
    this.email,
    this.phone,
    this.status,
  });

  factory _$UpdateUserRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateUserRequestModelImplFromJson(json);

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
    return 'UpdateUserRequestModel(userId: $userId, firstname: $firstname, lastname: $lastname, email: $email, phone: $phone, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserRequestModelImpl &&
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

  /// Create a copy of UpdateUserRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUserRequestModelImplCopyWith<_$UpdateUserRequestModelImpl>
  get copyWith =>
      __$$UpdateUserRequestModelImplCopyWithImpl<_$UpdateUserRequestModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateUserRequestModelImplToJson(this);
  }
}

abstract class _UpdateUserRequestModel implements UpdateUserRequestModel {
  const factory _UpdateUserRequestModel({
    required final int userId,
    final String? firstname,
    final String? lastname,
    final String? email,
    final String? phone,
    final String? status,
  }) = _$UpdateUserRequestModelImpl;

  factory _UpdateUserRequestModel.fromJson(Map<String, dynamic> json) =
      _$UpdateUserRequestModelImpl.fromJson;

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

  /// Create a copy of UpdateUserRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateUserRequestModelImplCopyWith<_$UpdateUserRequestModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}

UpdateUserStatusRequestModel _$UpdateUserStatusRequestModelFromJson(
  Map<String, dynamic> json,
) {
  return _UpdateUserStatusRequestModel.fromJson(json);
}

/// @nodoc
mixin _$UpdateUserStatusRequestModel {
  int get userId => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

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
  $Res call({int userId, String status});
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
abstract class _$$UpdateUserStatusRequestModelImplCopyWith<$Res>
    implements $UpdateUserStatusRequestModelCopyWith<$Res> {
  factory _$$UpdateUserStatusRequestModelImplCopyWith(
    _$UpdateUserStatusRequestModelImpl value,
    $Res Function(_$UpdateUserStatusRequestModelImpl) then,
  ) = __$$UpdateUserStatusRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int userId, String status});
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
  final int userId;
  @override
  final String status;

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
    required final int userId,
    required final String status,
  }) = _$UpdateUserStatusRequestModelImpl;

  factory _UpdateUserStatusRequestModel.fromJson(Map<String, dynamic> json) =
      _$UpdateUserStatusRequestModelImpl.fromJson;

  @override
  int get userId;
  @override
  String get status;

  /// Create a copy of UpdateUserStatusRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateUserStatusRequestModelImplCopyWith<
    _$UpdateUserStatusRequestModelImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

BanUserRequestModel _$BanUserRequestModelFromJson(Map<String, dynamic> json) {
  return _BanUserRequestModel.fromJson(json);
}

/// @nodoc
mixin _$BanUserRequestModel {
  String get reason => throw _privateConstructorUsedError;
  String get banType => throw _privateConstructorUsedError;

  /// Serializes this BanUserRequestModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BanUserRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BanUserRequestModelCopyWith<BanUserRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BanUserRequestModelCopyWith<$Res> {
  factory $BanUserRequestModelCopyWith(
    BanUserRequestModel value,
    $Res Function(BanUserRequestModel) then,
  ) = _$BanUserRequestModelCopyWithImpl<$Res, BanUserRequestModel>;
  @useResult
  $Res call({String reason, String banType});
}

/// @nodoc
class _$BanUserRequestModelCopyWithImpl<$Res, $Val extends BanUserRequestModel>
    implements $BanUserRequestModelCopyWith<$Res> {
  _$BanUserRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BanUserRequestModel
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
abstract class _$$BanUserRequestModelImplCopyWith<$Res>
    implements $BanUserRequestModelCopyWith<$Res> {
  factory _$$BanUserRequestModelImplCopyWith(
    _$BanUserRequestModelImpl value,
    $Res Function(_$BanUserRequestModelImpl) then,
  ) = __$$BanUserRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String reason, String banType});
}

/// @nodoc
class __$$BanUserRequestModelImplCopyWithImpl<$Res>
    extends _$BanUserRequestModelCopyWithImpl<$Res, _$BanUserRequestModelImpl>
    implements _$$BanUserRequestModelImplCopyWith<$Res> {
  __$$BanUserRequestModelImplCopyWithImpl(
    _$BanUserRequestModelImpl _value,
    $Res Function(_$BanUserRequestModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BanUserRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? reason = null, Object? banType = null}) {
    return _then(
      _$BanUserRequestModelImpl(
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
class _$BanUserRequestModelImpl implements _BanUserRequestModel {
  const _$BanUserRequestModelImpl({
    required this.reason,
    required this.banType,
  });

  factory _$BanUserRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BanUserRequestModelImplFromJson(json);

  @override
  final String reason;
  @override
  final String banType;

  @override
  String toString() {
    return 'BanUserRequestModel(reason: $reason, banType: $banType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BanUserRequestModelImpl &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.banType, banType) || other.banType == banType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, reason, banType);

  /// Create a copy of BanUserRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BanUserRequestModelImplCopyWith<_$BanUserRequestModelImpl> get copyWith =>
      __$$BanUserRequestModelImplCopyWithImpl<_$BanUserRequestModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$BanUserRequestModelImplToJson(this);
  }
}

abstract class _BanUserRequestModel implements BanUserRequestModel {
  const factory _BanUserRequestModel({
    required final String reason,
    required final String banType,
  }) = _$BanUserRequestModelImpl;

  factory _BanUserRequestModel.fromJson(Map<String, dynamic> json) =
      _$BanUserRequestModelImpl.fromJson;

  @override
  String get reason;
  @override
  String get banType;

  /// Create a copy of BanUserRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BanUserRequestModelImplCopyWith<_$BanUserRequestModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DeactivateUserRequestModel _$DeactivateUserRequestModelFromJson(
  Map<String, dynamic> json,
) {
  return _DeactivateUserRequestModel.fromJson(json);
}

/// @nodoc
mixin _$DeactivateUserRequestModel {
  String get reason => throw _privateConstructorUsedError;

  /// Serializes this DeactivateUserRequestModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeactivateUserRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeactivateUserRequestModelCopyWith<DeactivateUserRequestModel>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeactivateUserRequestModelCopyWith<$Res> {
  factory $DeactivateUserRequestModelCopyWith(
    DeactivateUserRequestModel value,
    $Res Function(DeactivateUserRequestModel) then,
  ) =
      _$DeactivateUserRequestModelCopyWithImpl<
        $Res,
        DeactivateUserRequestModel
      >;
  @useResult
  $Res call({String reason});
}

/// @nodoc
class _$DeactivateUserRequestModelCopyWithImpl<
  $Res,
  $Val extends DeactivateUserRequestModel
>
    implements $DeactivateUserRequestModelCopyWith<$Res> {
  _$DeactivateUserRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeactivateUserRequestModel
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
abstract class _$$DeactivateUserRequestModelImplCopyWith<$Res>
    implements $DeactivateUserRequestModelCopyWith<$Res> {
  factory _$$DeactivateUserRequestModelImplCopyWith(
    _$DeactivateUserRequestModelImpl value,
    $Res Function(_$DeactivateUserRequestModelImpl) then,
  ) = __$$DeactivateUserRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String reason});
}

/// @nodoc
class __$$DeactivateUserRequestModelImplCopyWithImpl<$Res>
    extends
        _$DeactivateUserRequestModelCopyWithImpl<
          $Res,
          _$DeactivateUserRequestModelImpl
        >
    implements _$$DeactivateUserRequestModelImplCopyWith<$Res> {
  __$$DeactivateUserRequestModelImplCopyWithImpl(
    _$DeactivateUserRequestModelImpl _value,
    $Res Function(_$DeactivateUserRequestModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DeactivateUserRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? reason = null}) {
    return _then(
      _$DeactivateUserRequestModelImpl(
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
class _$DeactivateUserRequestModelImpl implements _DeactivateUserRequestModel {
  const _$DeactivateUserRequestModelImpl({required this.reason});

  factory _$DeactivateUserRequestModelImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$DeactivateUserRequestModelImplFromJson(json);

  @override
  final String reason;

  @override
  String toString() {
    return 'DeactivateUserRequestModel(reason: $reason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeactivateUserRequestModelImpl &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, reason);

  /// Create a copy of DeactivateUserRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeactivateUserRequestModelImplCopyWith<_$DeactivateUserRequestModelImpl>
  get copyWith =>
      __$$DeactivateUserRequestModelImplCopyWithImpl<
        _$DeactivateUserRequestModelImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeactivateUserRequestModelImplToJson(this);
  }
}

abstract class _DeactivateUserRequestModel
    implements DeactivateUserRequestModel {
  const factory _DeactivateUserRequestModel({required final String reason}) =
      _$DeactivateUserRequestModelImpl;

  factory _DeactivateUserRequestModel.fromJson(Map<String, dynamic> json) =
      _$DeactivateUserRequestModelImpl.fromJson;

  @override
  String get reason;

  /// Create a copy of DeactivateUserRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeactivateUserRequestModelImplCopyWith<_$DeactivateUserRequestModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}

UserSearchParamsModel _$UserSearchParamsModelFromJson(
  Map<String, dynamic> json,
) {
  return _UserSearchParamsModel.fromJson(json);
}

/// @nodoc
mixin _$UserSearchParamsModel {
  String? get search => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;

  /// Serializes this UserSearchParamsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserSearchParamsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserSearchParamsModelCopyWith<UserSearchParamsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserSearchParamsModelCopyWith<$Res> {
  factory $UserSearchParamsModelCopyWith(
    UserSearchParamsModel value,
    $Res Function(UserSearchParamsModel) then,
  ) = _$UserSearchParamsModelCopyWithImpl<$Res, UserSearchParamsModel>;
  @useResult
  $Res call({String? search, String? status, int? page, int? limit});
}

/// @nodoc
class _$UserSearchParamsModelCopyWithImpl<
  $Res,
  $Val extends UserSearchParamsModel
>
    implements $UserSearchParamsModelCopyWith<$Res> {
  _$UserSearchParamsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserSearchParamsModel
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
abstract class _$$UserSearchParamsModelImplCopyWith<$Res>
    implements $UserSearchParamsModelCopyWith<$Res> {
  factory _$$UserSearchParamsModelImplCopyWith(
    _$UserSearchParamsModelImpl value,
    $Res Function(_$UserSearchParamsModelImpl) then,
  ) = __$$UserSearchParamsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? search, String? status, int? page, int? limit});
}

/// @nodoc
class __$$UserSearchParamsModelImplCopyWithImpl<$Res>
    extends
        _$UserSearchParamsModelCopyWithImpl<$Res, _$UserSearchParamsModelImpl>
    implements _$$UserSearchParamsModelImplCopyWith<$Res> {
  __$$UserSearchParamsModelImplCopyWithImpl(
    _$UserSearchParamsModelImpl _value,
    $Res Function(_$UserSearchParamsModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserSearchParamsModel
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
      _$UserSearchParamsModelImpl(
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
class _$UserSearchParamsModelImpl implements _UserSearchParamsModel {
  const _$UserSearchParamsModelImpl({
    this.search,
    this.status,
    this.page,
    this.limit,
  });

  factory _$UserSearchParamsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserSearchParamsModelImplFromJson(json);

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
    return 'UserSearchParamsModel(search: $search, status: $status, page: $page, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserSearchParamsModelImpl &&
            (identical(other.search, search) || other.search == search) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, search, status, page, limit);

  /// Create a copy of UserSearchParamsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserSearchParamsModelImplCopyWith<_$UserSearchParamsModelImpl>
  get copyWith =>
      __$$UserSearchParamsModelImplCopyWithImpl<_$UserSearchParamsModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$UserSearchParamsModelImplToJson(this);
  }
}

abstract class _UserSearchParamsModel implements UserSearchParamsModel {
  const factory _UserSearchParamsModel({
    final String? search,
    final String? status,
    final int? page,
    final int? limit,
  }) = _$UserSearchParamsModelImpl;

  factory _UserSearchParamsModel.fromJson(Map<String, dynamic> json) =
      _$UserSearchParamsModelImpl.fromJson;

  @override
  String? get search;
  @override
  String? get status;
  @override
  int? get page;
  @override
  int? get limit;

  /// Create a copy of UserSearchParamsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserSearchParamsModelImplCopyWith<_$UserSearchParamsModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}
