// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$UserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      int page,
      int limit,
      String? search,
      UserStatus? status,
    )
    getUsers,
    required TResult Function() refreshUsers,
    required TResult Function(String userId, UserStatus status)
    updateUserStatus,
    required TResult Function(String userId) deleteUser,
    required TResult Function(String query) searchUsers,
    required TResult Function(UserStatus? status) filterUsersByStatus,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page, int limit, String? search, UserStatus? status)?
    getUsers,
    TResult? Function()? refreshUsers,
    TResult? Function(String userId, UserStatus status)? updateUserStatus,
    TResult? Function(String userId)? deleteUser,
    TResult? Function(String query)? searchUsers,
    TResult? Function(UserStatus? status)? filterUsersByStatus,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, int limit, String? search, UserStatus? status)?
    getUsers,
    TResult Function()? refreshUsers,
    TResult Function(String userId, UserStatus status)? updateUserStatus,
    TResult Function(String userId)? deleteUser,
    TResult Function(String query)? searchUsers,
    TResult Function(UserStatus? status)? filterUsersByStatus,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUsers value) getUsers,
    required TResult Function(RefreshUsers value) refreshUsers,
    required TResult Function(UpdateUserStatus value) updateUserStatus,
    required TResult Function(DeleteUser value) deleteUser,
    required TResult Function(SearchUsers value) searchUsers,
    required TResult Function(FilterUsersByStatus value) filterUsersByStatus,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUsers value)? getUsers,
    TResult? Function(RefreshUsers value)? refreshUsers,
    TResult? Function(UpdateUserStatus value)? updateUserStatus,
    TResult? Function(DeleteUser value)? deleteUser,
    TResult? Function(SearchUsers value)? searchUsers,
    TResult? Function(FilterUsersByStatus value)? filterUsersByStatus,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUsers value)? getUsers,
    TResult Function(RefreshUsers value)? refreshUsers,
    TResult Function(UpdateUserStatus value)? updateUserStatus,
    TResult Function(DeleteUser value)? deleteUser,
    TResult Function(SearchUsers value)? searchUsers,
    TResult Function(FilterUsersByStatus value)? filterUsersByStatus,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res, UserEvent>;
}

/// @nodoc
class _$UserEventCopyWithImpl<$Res, $Val extends UserEvent>
    implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetUsersImplCopyWith<$Res> {
  factory _$$GetUsersImplCopyWith(
    _$GetUsersImpl value,
    $Res Function(_$GetUsersImpl) then,
  ) = __$$GetUsersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int page, int limit, String? search, UserStatus? status});
}

/// @nodoc
class __$$GetUsersImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$GetUsersImpl>
    implements _$$GetUsersImplCopyWith<$Res> {
  __$$GetUsersImplCopyWithImpl(
    _$GetUsersImpl _value,
    $Res Function(_$GetUsersImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? limit = null,
    Object? search = freezed,
    Object? status = freezed,
  }) {
    return _then(
      _$GetUsersImpl(
        page: null == page
            ? _value.page
            : page // ignore: cast_nullable_to_non_nullable
                  as int,
        limit: null == limit
            ? _value.limit
            : limit // ignore: cast_nullable_to_non_nullable
                  as int,
        search: freezed == search
            ? _value.search
            : search // ignore: cast_nullable_to_non_nullable
                  as String?,
        status: freezed == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as UserStatus?,
      ),
    );
  }
}

/// @nodoc

class _$GetUsersImpl implements GetUsers {
  const _$GetUsersImpl({
    this.page = 1,
    this.limit = 20,
    this.search,
    this.status,
  });

  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final int limit;
  @override
  final String? search;
  @override
  final UserStatus? status;

  @override
  String toString() {
    return 'UserEvent.getUsers(page: $page, limit: $limit, search: $search, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUsersImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.search, search) || other.search == search) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page, limit, search, status);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUsersImplCopyWith<_$GetUsersImpl> get copyWith =>
      __$$GetUsersImplCopyWithImpl<_$GetUsersImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      int page,
      int limit,
      String? search,
      UserStatus? status,
    )
    getUsers,
    required TResult Function() refreshUsers,
    required TResult Function(String userId, UserStatus status)
    updateUserStatus,
    required TResult Function(String userId) deleteUser,
    required TResult Function(String query) searchUsers,
    required TResult Function(UserStatus? status) filterUsersByStatus,
  }) {
    return getUsers(page, limit, search, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page, int limit, String? search, UserStatus? status)?
    getUsers,
    TResult? Function()? refreshUsers,
    TResult? Function(String userId, UserStatus status)? updateUserStatus,
    TResult? Function(String userId)? deleteUser,
    TResult? Function(String query)? searchUsers,
    TResult? Function(UserStatus? status)? filterUsersByStatus,
  }) {
    return getUsers?.call(page, limit, search, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, int limit, String? search, UserStatus? status)?
    getUsers,
    TResult Function()? refreshUsers,
    TResult Function(String userId, UserStatus status)? updateUserStatus,
    TResult Function(String userId)? deleteUser,
    TResult Function(String query)? searchUsers,
    TResult Function(UserStatus? status)? filterUsersByStatus,
    required TResult orElse(),
  }) {
    if (getUsers != null) {
      return getUsers(page, limit, search, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUsers value) getUsers,
    required TResult Function(RefreshUsers value) refreshUsers,
    required TResult Function(UpdateUserStatus value) updateUserStatus,
    required TResult Function(DeleteUser value) deleteUser,
    required TResult Function(SearchUsers value) searchUsers,
    required TResult Function(FilterUsersByStatus value) filterUsersByStatus,
  }) {
    return getUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUsers value)? getUsers,
    TResult? Function(RefreshUsers value)? refreshUsers,
    TResult? Function(UpdateUserStatus value)? updateUserStatus,
    TResult? Function(DeleteUser value)? deleteUser,
    TResult? Function(SearchUsers value)? searchUsers,
    TResult? Function(FilterUsersByStatus value)? filterUsersByStatus,
  }) {
    return getUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUsers value)? getUsers,
    TResult Function(RefreshUsers value)? refreshUsers,
    TResult Function(UpdateUserStatus value)? updateUserStatus,
    TResult Function(DeleteUser value)? deleteUser,
    TResult Function(SearchUsers value)? searchUsers,
    TResult Function(FilterUsersByStatus value)? filterUsersByStatus,
    required TResult orElse(),
  }) {
    if (getUsers != null) {
      return getUsers(this);
    }
    return orElse();
  }
}

abstract class GetUsers implements UserEvent {
  const factory GetUsers({
    final int page,
    final int limit,
    final String? search,
    final UserStatus? status,
  }) = _$GetUsersImpl;

  int get page;
  int get limit;
  String? get search;
  UserStatus? get status;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetUsersImplCopyWith<_$GetUsersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RefreshUsersImplCopyWith<$Res> {
  factory _$$RefreshUsersImplCopyWith(
    _$RefreshUsersImpl value,
    $Res Function(_$RefreshUsersImpl) then,
  ) = __$$RefreshUsersImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshUsersImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$RefreshUsersImpl>
    implements _$$RefreshUsersImplCopyWith<$Res> {
  __$$RefreshUsersImplCopyWithImpl(
    _$RefreshUsersImpl _value,
    $Res Function(_$RefreshUsersImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RefreshUsersImpl implements RefreshUsers {
  const _$RefreshUsersImpl();

  @override
  String toString() {
    return 'UserEvent.refreshUsers()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RefreshUsersImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      int page,
      int limit,
      String? search,
      UserStatus? status,
    )
    getUsers,
    required TResult Function() refreshUsers,
    required TResult Function(String userId, UserStatus status)
    updateUserStatus,
    required TResult Function(String userId) deleteUser,
    required TResult Function(String query) searchUsers,
    required TResult Function(UserStatus? status) filterUsersByStatus,
  }) {
    return refreshUsers();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page, int limit, String? search, UserStatus? status)?
    getUsers,
    TResult? Function()? refreshUsers,
    TResult? Function(String userId, UserStatus status)? updateUserStatus,
    TResult? Function(String userId)? deleteUser,
    TResult? Function(String query)? searchUsers,
    TResult? Function(UserStatus? status)? filterUsersByStatus,
  }) {
    return refreshUsers?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, int limit, String? search, UserStatus? status)?
    getUsers,
    TResult Function()? refreshUsers,
    TResult Function(String userId, UserStatus status)? updateUserStatus,
    TResult Function(String userId)? deleteUser,
    TResult Function(String query)? searchUsers,
    TResult Function(UserStatus? status)? filterUsersByStatus,
    required TResult orElse(),
  }) {
    if (refreshUsers != null) {
      return refreshUsers();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUsers value) getUsers,
    required TResult Function(RefreshUsers value) refreshUsers,
    required TResult Function(UpdateUserStatus value) updateUserStatus,
    required TResult Function(DeleteUser value) deleteUser,
    required TResult Function(SearchUsers value) searchUsers,
    required TResult Function(FilterUsersByStatus value) filterUsersByStatus,
  }) {
    return refreshUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUsers value)? getUsers,
    TResult? Function(RefreshUsers value)? refreshUsers,
    TResult? Function(UpdateUserStatus value)? updateUserStatus,
    TResult? Function(DeleteUser value)? deleteUser,
    TResult? Function(SearchUsers value)? searchUsers,
    TResult? Function(FilterUsersByStatus value)? filterUsersByStatus,
  }) {
    return refreshUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUsers value)? getUsers,
    TResult Function(RefreshUsers value)? refreshUsers,
    TResult Function(UpdateUserStatus value)? updateUserStatus,
    TResult Function(DeleteUser value)? deleteUser,
    TResult Function(SearchUsers value)? searchUsers,
    TResult Function(FilterUsersByStatus value)? filterUsersByStatus,
    required TResult orElse(),
  }) {
    if (refreshUsers != null) {
      return refreshUsers(this);
    }
    return orElse();
  }
}

abstract class RefreshUsers implements UserEvent {
  const factory RefreshUsers() = _$RefreshUsersImpl;
}

/// @nodoc
abstract class _$$UpdateUserStatusImplCopyWith<$Res> {
  factory _$$UpdateUserStatusImplCopyWith(
    _$UpdateUserStatusImpl value,
    $Res Function(_$UpdateUserStatusImpl) then,
  ) = __$$UpdateUserStatusImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId, UserStatus status});
}

/// @nodoc
class __$$UpdateUserStatusImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$UpdateUserStatusImpl>
    implements _$$UpdateUserStatusImplCopyWith<$Res> {
  __$$UpdateUserStatusImplCopyWithImpl(
    _$UpdateUserStatusImpl _value,
    $Res Function(_$UpdateUserStatusImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? userId = null, Object? status = null}) {
    return _then(
      _$UpdateUserStatusImpl(
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

class _$UpdateUserStatusImpl implements UpdateUserStatus {
  const _$UpdateUserStatusImpl({required this.userId, required this.status});

  @override
  final String userId;
  @override
  final UserStatus status;

  @override
  String toString() {
    return 'UserEvent.updateUserStatus(userId: $userId, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserStatusImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, status);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUserStatusImplCopyWith<_$UpdateUserStatusImpl> get copyWith =>
      __$$UpdateUserStatusImplCopyWithImpl<_$UpdateUserStatusImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      int page,
      int limit,
      String? search,
      UserStatus? status,
    )
    getUsers,
    required TResult Function() refreshUsers,
    required TResult Function(String userId, UserStatus status)
    updateUserStatus,
    required TResult Function(String userId) deleteUser,
    required TResult Function(String query) searchUsers,
    required TResult Function(UserStatus? status) filterUsersByStatus,
  }) {
    return updateUserStatus(userId, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page, int limit, String? search, UserStatus? status)?
    getUsers,
    TResult? Function()? refreshUsers,
    TResult? Function(String userId, UserStatus status)? updateUserStatus,
    TResult? Function(String userId)? deleteUser,
    TResult? Function(String query)? searchUsers,
    TResult? Function(UserStatus? status)? filterUsersByStatus,
  }) {
    return updateUserStatus?.call(userId, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, int limit, String? search, UserStatus? status)?
    getUsers,
    TResult Function()? refreshUsers,
    TResult Function(String userId, UserStatus status)? updateUserStatus,
    TResult Function(String userId)? deleteUser,
    TResult Function(String query)? searchUsers,
    TResult Function(UserStatus? status)? filterUsersByStatus,
    required TResult orElse(),
  }) {
    if (updateUserStatus != null) {
      return updateUserStatus(userId, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUsers value) getUsers,
    required TResult Function(RefreshUsers value) refreshUsers,
    required TResult Function(UpdateUserStatus value) updateUserStatus,
    required TResult Function(DeleteUser value) deleteUser,
    required TResult Function(SearchUsers value) searchUsers,
    required TResult Function(FilterUsersByStatus value) filterUsersByStatus,
  }) {
    return updateUserStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUsers value)? getUsers,
    TResult? Function(RefreshUsers value)? refreshUsers,
    TResult? Function(UpdateUserStatus value)? updateUserStatus,
    TResult? Function(DeleteUser value)? deleteUser,
    TResult? Function(SearchUsers value)? searchUsers,
    TResult? Function(FilterUsersByStatus value)? filterUsersByStatus,
  }) {
    return updateUserStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUsers value)? getUsers,
    TResult Function(RefreshUsers value)? refreshUsers,
    TResult Function(UpdateUserStatus value)? updateUserStatus,
    TResult Function(DeleteUser value)? deleteUser,
    TResult Function(SearchUsers value)? searchUsers,
    TResult Function(FilterUsersByStatus value)? filterUsersByStatus,
    required TResult orElse(),
  }) {
    if (updateUserStatus != null) {
      return updateUserStatus(this);
    }
    return orElse();
  }
}

abstract class UpdateUserStatus implements UserEvent {
  const factory UpdateUserStatus({
    required final String userId,
    required final UserStatus status,
  }) = _$UpdateUserStatusImpl;

  String get userId;
  UserStatus get status;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateUserStatusImplCopyWith<_$UpdateUserStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteUserImplCopyWith<$Res> {
  factory _$$DeleteUserImplCopyWith(
    _$DeleteUserImpl value,
    $Res Function(_$DeleteUserImpl) then,
  ) = __$$DeleteUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$DeleteUserImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$DeleteUserImpl>
    implements _$$DeleteUserImplCopyWith<$Res> {
  __$$DeleteUserImplCopyWithImpl(
    _$DeleteUserImpl _value,
    $Res Function(_$DeleteUserImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? userId = null}) {
    return _then(
      _$DeleteUserImpl(
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$DeleteUserImpl implements DeleteUser {
  const _$DeleteUserImpl({required this.userId});

  @override
  final String userId;

  @override
  String toString() {
    return 'UserEvent.deleteUser(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteUserImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteUserImplCopyWith<_$DeleteUserImpl> get copyWith =>
      __$$DeleteUserImplCopyWithImpl<_$DeleteUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      int page,
      int limit,
      String? search,
      UserStatus? status,
    )
    getUsers,
    required TResult Function() refreshUsers,
    required TResult Function(String userId, UserStatus status)
    updateUserStatus,
    required TResult Function(String userId) deleteUser,
    required TResult Function(String query) searchUsers,
    required TResult Function(UserStatus? status) filterUsersByStatus,
  }) {
    return deleteUser(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page, int limit, String? search, UserStatus? status)?
    getUsers,
    TResult? Function()? refreshUsers,
    TResult? Function(String userId, UserStatus status)? updateUserStatus,
    TResult? Function(String userId)? deleteUser,
    TResult? Function(String query)? searchUsers,
    TResult? Function(UserStatus? status)? filterUsersByStatus,
  }) {
    return deleteUser?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, int limit, String? search, UserStatus? status)?
    getUsers,
    TResult Function()? refreshUsers,
    TResult Function(String userId, UserStatus status)? updateUserStatus,
    TResult Function(String userId)? deleteUser,
    TResult Function(String query)? searchUsers,
    TResult Function(UserStatus? status)? filterUsersByStatus,
    required TResult orElse(),
  }) {
    if (deleteUser != null) {
      return deleteUser(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUsers value) getUsers,
    required TResult Function(RefreshUsers value) refreshUsers,
    required TResult Function(UpdateUserStatus value) updateUserStatus,
    required TResult Function(DeleteUser value) deleteUser,
    required TResult Function(SearchUsers value) searchUsers,
    required TResult Function(FilterUsersByStatus value) filterUsersByStatus,
  }) {
    return deleteUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUsers value)? getUsers,
    TResult? Function(RefreshUsers value)? refreshUsers,
    TResult? Function(UpdateUserStatus value)? updateUserStatus,
    TResult? Function(DeleteUser value)? deleteUser,
    TResult? Function(SearchUsers value)? searchUsers,
    TResult? Function(FilterUsersByStatus value)? filterUsersByStatus,
  }) {
    return deleteUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUsers value)? getUsers,
    TResult Function(RefreshUsers value)? refreshUsers,
    TResult Function(UpdateUserStatus value)? updateUserStatus,
    TResult Function(DeleteUser value)? deleteUser,
    TResult Function(SearchUsers value)? searchUsers,
    TResult Function(FilterUsersByStatus value)? filterUsersByStatus,
    required TResult orElse(),
  }) {
    if (deleteUser != null) {
      return deleteUser(this);
    }
    return orElse();
  }
}

abstract class DeleteUser implements UserEvent {
  const factory DeleteUser({required final String userId}) = _$DeleteUserImpl;

  String get userId;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteUserImplCopyWith<_$DeleteUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchUsersImplCopyWith<$Res> {
  factory _$$SearchUsersImplCopyWith(
    _$SearchUsersImpl value,
    $Res Function(_$SearchUsersImpl) then,
  ) = __$$SearchUsersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SearchUsersImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$SearchUsersImpl>
    implements _$$SearchUsersImplCopyWith<$Res> {
  __$$SearchUsersImplCopyWithImpl(
    _$SearchUsersImpl _value,
    $Res Function(_$SearchUsersImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? query = null}) {
    return _then(
      _$SearchUsersImpl(
        query: null == query
            ? _value.query
            : query // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$SearchUsersImpl implements SearchUsers {
  const _$SearchUsersImpl({required this.query});

  @override
  final String query;

  @override
  String toString() {
    return 'UserEvent.searchUsers(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchUsersImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchUsersImplCopyWith<_$SearchUsersImpl> get copyWith =>
      __$$SearchUsersImplCopyWithImpl<_$SearchUsersImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      int page,
      int limit,
      String? search,
      UserStatus? status,
    )
    getUsers,
    required TResult Function() refreshUsers,
    required TResult Function(String userId, UserStatus status)
    updateUserStatus,
    required TResult Function(String userId) deleteUser,
    required TResult Function(String query) searchUsers,
    required TResult Function(UserStatus? status) filterUsersByStatus,
  }) {
    return searchUsers(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page, int limit, String? search, UserStatus? status)?
    getUsers,
    TResult? Function()? refreshUsers,
    TResult? Function(String userId, UserStatus status)? updateUserStatus,
    TResult? Function(String userId)? deleteUser,
    TResult? Function(String query)? searchUsers,
    TResult? Function(UserStatus? status)? filterUsersByStatus,
  }) {
    return searchUsers?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, int limit, String? search, UserStatus? status)?
    getUsers,
    TResult Function()? refreshUsers,
    TResult Function(String userId, UserStatus status)? updateUserStatus,
    TResult Function(String userId)? deleteUser,
    TResult Function(String query)? searchUsers,
    TResult Function(UserStatus? status)? filterUsersByStatus,
    required TResult orElse(),
  }) {
    if (searchUsers != null) {
      return searchUsers(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUsers value) getUsers,
    required TResult Function(RefreshUsers value) refreshUsers,
    required TResult Function(UpdateUserStatus value) updateUserStatus,
    required TResult Function(DeleteUser value) deleteUser,
    required TResult Function(SearchUsers value) searchUsers,
    required TResult Function(FilterUsersByStatus value) filterUsersByStatus,
  }) {
    return searchUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUsers value)? getUsers,
    TResult? Function(RefreshUsers value)? refreshUsers,
    TResult? Function(UpdateUserStatus value)? updateUserStatus,
    TResult? Function(DeleteUser value)? deleteUser,
    TResult? Function(SearchUsers value)? searchUsers,
    TResult? Function(FilterUsersByStatus value)? filterUsersByStatus,
  }) {
    return searchUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUsers value)? getUsers,
    TResult Function(RefreshUsers value)? refreshUsers,
    TResult Function(UpdateUserStatus value)? updateUserStatus,
    TResult Function(DeleteUser value)? deleteUser,
    TResult Function(SearchUsers value)? searchUsers,
    TResult Function(FilterUsersByStatus value)? filterUsersByStatus,
    required TResult orElse(),
  }) {
    if (searchUsers != null) {
      return searchUsers(this);
    }
    return orElse();
  }
}

abstract class SearchUsers implements UserEvent {
  const factory SearchUsers({required final String query}) = _$SearchUsersImpl;

  String get query;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchUsersImplCopyWith<_$SearchUsersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FilterUsersByStatusImplCopyWith<$Res> {
  factory _$$FilterUsersByStatusImplCopyWith(
    _$FilterUsersByStatusImpl value,
    $Res Function(_$FilterUsersByStatusImpl) then,
  ) = __$$FilterUsersByStatusImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserStatus? status});
}

/// @nodoc
class __$$FilterUsersByStatusImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$FilterUsersByStatusImpl>
    implements _$$FilterUsersByStatusImplCopyWith<$Res> {
  __$$FilterUsersByStatusImplCopyWithImpl(
    _$FilterUsersByStatusImpl _value,
    $Res Function(_$FilterUsersByStatusImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? status = freezed}) {
    return _then(
      _$FilterUsersByStatusImpl(
        status: freezed == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as UserStatus?,
      ),
    );
  }
}

/// @nodoc

class _$FilterUsersByStatusImpl implements FilterUsersByStatus {
  const _$FilterUsersByStatusImpl({this.status});

  @override
  final UserStatus? status;

  @override
  String toString() {
    return 'UserEvent.filterUsersByStatus(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterUsersByStatusImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterUsersByStatusImplCopyWith<_$FilterUsersByStatusImpl> get copyWith =>
      __$$FilterUsersByStatusImplCopyWithImpl<_$FilterUsersByStatusImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      int page,
      int limit,
      String? search,
      UserStatus? status,
    )
    getUsers,
    required TResult Function() refreshUsers,
    required TResult Function(String userId, UserStatus status)
    updateUserStatus,
    required TResult Function(String userId) deleteUser,
    required TResult Function(String query) searchUsers,
    required TResult Function(UserStatus? status) filterUsersByStatus,
  }) {
    return filterUsersByStatus(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page, int limit, String? search, UserStatus? status)?
    getUsers,
    TResult? Function()? refreshUsers,
    TResult? Function(String userId, UserStatus status)? updateUserStatus,
    TResult? Function(String userId)? deleteUser,
    TResult? Function(String query)? searchUsers,
    TResult? Function(UserStatus? status)? filterUsersByStatus,
  }) {
    return filterUsersByStatus?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, int limit, String? search, UserStatus? status)?
    getUsers,
    TResult Function()? refreshUsers,
    TResult Function(String userId, UserStatus status)? updateUserStatus,
    TResult Function(String userId)? deleteUser,
    TResult Function(String query)? searchUsers,
    TResult Function(UserStatus? status)? filterUsersByStatus,
    required TResult orElse(),
  }) {
    if (filterUsersByStatus != null) {
      return filterUsersByStatus(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUsers value) getUsers,
    required TResult Function(RefreshUsers value) refreshUsers,
    required TResult Function(UpdateUserStatus value) updateUserStatus,
    required TResult Function(DeleteUser value) deleteUser,
    required TResult Function(SearchUsers value) searchUsers,
    required TResult Function(FilterUsersByStatus value) filterUsersByStatus,
  }) {
    return filterUsersByStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUsers value)? getUsers,
    TResult? Function(RefreshUsers value)? refreshUsers,
    TResult? Function(UpdateUserStatus value)? updateUserStatus,
    TResult? Function(DeleteUser value)? deleteUser,
    TResult? Function(SearchUsers value)? searchUsers,
    TResult? Function(FilterUsersByStatus value)? filterUsersByStatus,
  }) {
    return filterUsersByStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUsers value)? getUsers,
    TResult Function(RefreshUsers value)? refreshUsers,
    TResult Function(UpdateUserStatus value)? updateUserStatus,
    TResult Function(DeleteUser value)? deleteUser,
    TResult Function(SearchUsers value)? searchUsers,
    TResult Function(FilterUsersByStatus value)? filterUsersByStatus,
    required TResult orElse(),
  }) {
    if (filterUsersByStatus != null) {
      return filterUsersByStatus(this);
    }
    return orElse();
  }
}

abstract class FilterUsersByStatus implements UserEvent {
  const factory FilterUsersByStatus({final UserStatus? status}) =
      _$FilterUsersByStatusImpl;

  UserStatus? get status;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FilterUsersByStatusImplCopyWith<_$FilterUsersByStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
