// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$UserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      UserListResponse userListResponse,
      List<UserEntity> users,
      int currentPage,
      int totalPages,
      int totalUsers,
      String? searchQuery,
      String? statusFilter,
    )
    loaded,
    required TResult Function(String message) error,
    required TResult Function(String message, UserEntity? updatedUser)
    actionSuccess,
    required TResult Function() actionLoading,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
      UserListResponse userListResponse,
      List<UserEntity> users,
      int currentPage,
      int totalPages,
      int totalUsers,
      String? searchQuery,
      String? statusFilter,
    )?
    loaded,
    TResult? Function(String message)? error,
    TResult? Function(String message, UserEntity? updatedUser)? actionSuccess,
    TResult? Function()? actionLoading,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
      UserListResponse userListResponse,
      List<UserEntity> users,
      int currentPage,
      int totalPages,
      int totalUsers,
      String? searchQuery,
      String? statusFilter,
    )?
    loaded,
    TResult Function(String message)? error,
    TResult Function(String message, UserEntity? updatedUser)? actionSuccess,
    TResult Function()? actionLoading,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserInitial value) initial,
    required TResult Function(UserLoading value) loading,
    required TResult Function(UserLoaded value) loaded,
    required TResult Function(UserError value) error,
    required TResult Function(UserActionSuccess value) actionSuccess,
    required TResult Function(UserActionLoading value) actionLoading,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserInitial value)? initial,
    TResult? Function(UserLoading value)? loading,
    TResult? Function(UserLoaded value)? loaded,
    TResult? Function(UserError value)? error,
    TResult? Function(UserActionSuccess value)? actionSuccess,
    TResult? Function(UserActionLoading value)? actionLoading,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserInitial value)? initial,
    TResult Function(UserLoading value)? loading,
    TResult Function(UserLoaded value)? loaded,
    TResult Function(UserError value)? error,
    TResult Function(UserActionSuccess value)? actionSuccess,
    TResult Function(UserActionLoading value)? actionLoading,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res, UserState>;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res, $Val extends UserState>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UserInitialImplCopyWith<$Res> {
  factory _$$UserInitialImplCopyWith(
    _$UserInitialImpl value,
    $Res Function(_$UserInitialImpl) then,
  ) = __$$UserInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserInitialImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserInitialImpl>
    implements _$$UserInitialImplCopyWith<$Res> {
  __$$UserInitialImplCopyWithImpl(
    _$UserInitialImpl _value,
    $Res Function(_$UserInitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UserInitialImpl implements UserInitial {
  const _$UserInitialImpl();

  @override
  String toString() {
    return 'UserState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      UserListResponse userListResponse,
      List<UserEntity> users,
      int currentPage,
      int totalPages,
      int totalUsers,
      String? searchQuery,
      String? statusFilter,
    )
    loaded,
    required TResult Function(String message) error,
    required TResult Function(String message, UserEntity? updatedUser)
    actionSuccess,
    required TResult Function() actionLoading,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
      UserListResponse userListResponse,
      List<UserEntity> users,
      int currentPage,
      int totalPages,
      int totalUsers,
      String? searchQuery,
      String? statusFilter,
    )?
    loaded,
    TResult? Function(String message)? error,
    TResult? Function(String message, UserEntity? updatedUser)? actionSuccess,
    TResult? Function()? actionLoading,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
      UserListResponse userListResponse,
      List<UserEntity> users,
      int currentPage,
      int totalPages,
      int totalUsers,
      String? searchQuery,
      String? statusFilter,
    )?
    loaded,
    TResult Function(String message)? error,
    TResult Function(String message, UserEntity? updatedUser)? actionSuccess,
    TResult Function()? actionLoading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserInitial value) initial,
    required TResult Function(UserLoading value) loading,
    required TResult Function(UserLoaded value) loaded,
    required TResult Function(UserError value) error,
    required TResult Function(UserActionSuccess value) actionSuccess,
    required TResult Function(UserActionLoading value) actionLoading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserInitial value)? initial,
    TResult? Function(UserLoading value)? loading,
    TResult? Function(UserLoaded value)? loaded,
    TResult? Function(UserError value)? error,
    TResult? Function(UserActionSuccess value)? actionSuccess,
    TResult? Function(UserActionLoading value)? actionLoading,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserInitial value)? initial,
    TResult Function(UserLoading value)? loading,
    TResult Function(UserLoaded value)? loaded,
    TResult Function(UserError value)? error,
    TResult Function(UserActionSuccess value)? actionSuccess,
    TResult Function(UserActionLoading value)? actionLoading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class UserInitial implements UserState {
  const factory UserInitial() = _$UserInitialImpl;
}

/// @nodoc
abstract class _$$UserLoadingImplCopyWith<$Res> {
  factory _$$UserLoadingImplCopyWith(
    _$UserLoadingImpl value,
    $Res Function(_$UserLoadingImpl) then,
  ) = __$$UserLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserLoadingImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserLoadingImpl>
    implements _$$UserLoadingImplCopyWith<$Res> {
  __$$UserLoadingImplCopyWithImpl(
    _$UserLoadingImpl _value,
    $Res Function(_$UserLoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UserLoadingImpl implements UserLoading {
  const _$UserLoadingImpl();

  @override
  String toString() {
    return 'UserState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      UserListResponse userListResponse,
      List<UserEntity> users,
      int currentPage,
      int totalPages,
      int totalUsers,
      String? searchQuery,
      String? statusFilter,
    )
    loaded,
    required TResult Function(String message) error,
    required TResult Function(String message, UserEntity? updatedUser)
    actionSuccess,
    required TResult Function() actionLoading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
      UserListResponse userListResponse,
      List<UserEntity> users,
      int currentPage,
      int totalPages,
      int totalUsers,
      String? searchQuery,
      String? statusFilter,
    )?
    loaded,
    TResult? Function(String message)? error,
    TResult? Function(String message, UserEntity? updatedUser)? actionSuccess,
    TResult? Function()? actionLoading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
      UserListResponse userListResponse,
      List<UserEntity> users,
      int currentPage,
      int totalPages,
      int totalUsers,
      String? searchQuery,
      String? statusFilter,
    )?
    loaded,
    TResult Function(String message)? error,
    TResult Function(String message, UserEntity? updatedUser)? actionSuccess,
    TResult Function()? actionLoading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserInitial value) initial,
    required TResult Function(UserLoading value) loading,
    required TResult Function(UserLoaded value) loaded,
    required TResult Function(UserError value) error,
    required TResult Function(UserActionSuccess value) actionSuccess,
    required TResult Function(UserActionLoading value) actionLoading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserInitial value)? initial,
    TResult? Function(UserLoading value)? loading,
    TResult? Function(UserLoaded value)? loaded,
    TResult? Function(UserError value)? error,
    TResult? Function(UserActionSuccess value)? actionSuccess,
    TResult? Function(UserActionLoading value)? actionLoading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserInitial value)? initial,
    TResult Function(UserLoading value)? loading,
    TResult Function(UserLoaded value)? loaded,
    TResult Function(UserError value)? error,
    TResult Function(UserActionSuccess value)? actionSuccess,
    TResult Function(UserActionLoading value)? actionLoading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class UserLoading implements UserState {
  const factory UserLoading() = _$UserLoadingImpl;
}

/// @nodoc
abstract class _$$UserLoadedImplCopyWith<$Res> {
  factory _$$UserLoadedImplCopyWith(
    _$UserLoadedImpl value,
    $Res Function(_$UserLoadedImpl) then,
  ) = __$$UserLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    UserListResponse userListResponse,
    List<UserEntity> users,
    int currentPage,
    int totalPages,
    int totalUsers,
    String? searchQuery,
    String? statusFilter,
  });

  $UserListResponseCopyWith<$Res> get userListResponse;
}

/// @nodoc
class __$$UserLoadedImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserLoadedImpl>
    implements _$$UserLoadedImplCopyWith<$Res> {
  __$$UserLoadedImplCopyWithImpl(
    _$UserLoadedImpl _value,
    $Res Function(_$UserLoadedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userListResponse = null,
    Object? users = null,
    Object? currentPage = null,
    Object? totalPages = null,
    Object? totalUsers = null,
    Object? searchQuery = freezed,
    Object? statusFilter = freezed,
  }) {
    return _then(
      _$UserLoadedImpl(
        userListResponse: null == userListResponse
            ? _value.userListResponse
            : userListResponse // ignore: cast_nullable_to_non_nullable
                  as UserListResponse,
        users: null == users
            ? _value._users
            : users // ignore: cast_nullable_to_non_nullable
                  as List<UserEntity>,
        currentPage: null == currentPage
            ? _value.currentPage
            : currentPage // ignore: cast_nullable_to_non_nullable
                  as int,
        totalPages: null == totalPages
            ? _value.totalPages
            : totalPages // ignore: cast_nullable_to_non_nullable
                  as int,
        totalUsers: null == totalUsers
            ? _value.totalUsers
            : totalUsers // ignore: cast_nullable_to_non_nullable
                  as int,
        searchQuery: freezed == searchQuery
            ? _value.searchQuery
            : searchQuery // ignore: cast_nullable_to_non_nullable
                  as String?,
        statusFilter: freezed == statusFilter
            ? _value.statusFilter
            : statusFilter // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserListResponseCopyWith<$Res> get userListResponse {
    return $UserListResponseCopyWith<$Res>(_value.userListResponse, (value) {
      return _then(_value.copyWith(userListResponse: value));
    });
  }
}

/// @nodoc

class _$UserLoadedImpl implements UserLoaded {
  const _$UserLoadedImpl({
    required this.userListResponse,
    required final List<UserEntity> users,
    required this.currentPage,
    required this.totalPages,
    required this.totalUsers,
    this.searchQuery,
    this.statusFilter,
  }) : _users = users;

  @override
  final UserListResponse userListResponse;
  final List<UserEntity> _users;
  @override
  List<UserEntity> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  final int currentPage;
  @override
  final int totalPages;
  @override
  final int totalUsers;
  @override
  final String? searchQuery;
  @override
  final String? statusFilter;

  @override
  String toString() {
    return 'UserState.loaded(userListResponse: $userListResponse, users: $users, currentPage: $currentPage, totalPages: $totalPages, totalUsers: $totalUsers, searchQuery: $searchQuery, statusFilter: $statusFilter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLoadedImpl &&
            (identical(other.userListResponse, userListResponse) ||
                other.userListResponse == userListResponse) &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.totalUsers, totalUsers) ||
                other.totalUsers == totalUsers) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery) &&
            (identical(other.statusFilter, statusFilter) ||
                other.statusFilter == statusFilter));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    userListResponse,
    const DeepCollectionEquality().hash(_users),
    currentPage,
    totalPages,
    totalUsers,
    searchQuery,
    statusFilter,
  );

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLoadedImplCopyWith<_$UserLoadedImpl> get copyWith =>
      __$$UserLoadedImplCopyWithImpl<_$UserLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      UserListResponse userListResponse,
      List<UserEntity> users,
      int currentPage,
      int totalPages,
      int totalUsers,
      String? searchQuery,
      String? statusFilter,
    )
    loaded,
    required TResult Function(String message) error,
    required TResult Function(String message, UserEntity? updatedUser)
    actionSuccess,
    required TResult Function() actionLoading,
  }) {
    return loaded(
      userListResponse,
      users,
      currentPage,
      totalPages,
      totalUsers,
      searchQuery,
      statusFilter,
    );
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
      UserListResponse userListResponse,
      List<UserEntity> users,
      int currentPage,
      int totalPages,
      int totalUsers,
      String? searchQuery,
      String? statusFilter,
    )?
    loaded,
    TResult? Function(String message)? error,
    TResult? Function(String message, UserEntity? updatedUser)? actionSuccess,
    TResult? Function()? actionLoading,
  }) {
    return loaded?.call(
      userListResponse,
      users,
      currentPage,
      totalPages,
      totalUsers,
      searchQuery,
      statusFilter,
    );
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
      UserListResponse userListResponse,
      List<UserEntity> users,
      int currentPage,
      int totalPages,
      int totalUsers,
      String? searchQuery,
      String? statusFilter,
    )?
    loaded,
    TResult Function(String message)? error,
    TResult Function(String message, UserEntity? updatedUser)? actionSuccess,
    TResult Function()? actionLoading,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(
        userListResponse,
        users,
        currentPage,
        totalPages,
        totalUsers,
        searchQuery,
        statusFilter,
      );
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserInitial value) initial,
    required TResult Function(UserLoading value) loading,
    required TResult Function(UserLoaded value) loaded,
    required TResult Function(UserError value) error,
    required TResult Function(UserActionSuccess value) actionSuccess,
    required TResult Function(UserActionLoading value) actionLoading,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserInitial value)? initial,
    TResult? Function(UserLoading value)? loading,
    TResult? Function(UserLoaded value)? loaded,
    TResult? Function(UserError value)? error,
    TResult? Function(UserActionSuccess value)? actionSuccess,
    TResult? Function(UserActionLoading value)? actionLoading,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserInitial value)? initial,
    TResult Function(UserLoading value)? loading,
    TResult Function(UserLoaded value)? loaded,
    TResult Function(UserError value)? error,
    TResult Function(UserActionSuccess value)? actionSuccess,
    TResult Function(UserActionLoading value)? actionLoading,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class UserLoaded implements UserState {
  const factory UserLoaded({
    required final UserListResponse userListResponse,
    required final List<UserEntity> users,
    required final int currentPage,
    required final int totalPages,
    required final int totalUsers,
    final String? searchQuery,
    final String? statusFilter,
  }) = _$UserLoadedImpl;

  UserListResponse get userListResponse;
  List<UserEntity> get users;
  int get currentPage;
  int get totalPages;
  int get totalUsers;
  String? get searchQuery;
  String? get statusFilter;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserLoadedImplCopyWith<_$UserLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserErrorImplCopyWith<$Res> {
  factory _$$UserErrorImplCopyWith(
    _$UserErrorImpl value,
    $Res Function(_$UserErrorImpl) then,
  ) = __$$UserErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$UserErrorImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserErrorImpl>
    implements _$$UserErrorImplCopyWith<$Res> {
  __$$UserErrorImplCopyWithImpl(
    _$UserErrorImpl _value,
    $Res Function(_$UserErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$UserErrorImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$UserErrorImpl implements UserError {
  const _$UserErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'UserState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserErrorImplCopyWith<_$UserErrorImpl> get copyWith =>
      __$$UserErrorImplCopyWithImpl<_$UserErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      UserListResponse userListResponse,
      List<UserEntity> users,
      int currentPage,
      int totalPages,
      int totalUsers,
      String? searchQuery,
      String? statusFilter,
    )
    loaded,
    required TResult Function(String message) error,
    required TResult Function(String message, UserEntity? updatedUser)
    actionSuccess,
    required TResult Function() actionLoading,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
      UserListResponse userListResponse,
      List<UserEntity> users,
      int currentPage,
      int totalPages,
      int totalUsers,
      String? searchQuery,
      String? statusFilter,
    )?
    loaded,
    TResult? Function(String message)? error,
    TResult? Function(String message, UserEntity? updatedUser)? actionSuccess,
    TResult? Function()? actionLoading,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
      UserListResponse userListResponse,
      List<UserEntity> users,
      int currentPage,
      int totalPages,
      int totalUsers,
      String? searchQuery,
      String? statusFilter,
    )?
    loaded,
    TResult Function(String message)? error,
    TResult Function(String message, UserEntity? updatedUser)? actionSuccess,
    TResult Function()? actionLoading,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserInitial value) initial,
    required TResult Function(UserLoading value) loading,
    required TResult Function(UserLoaded value) loaded,
    required TResult Function(UserError value) error,
    required TResult Function(UserActionSuccess value) actionSuccess,
    required TResult Function(UserActionLoading value) actionLoading,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserInitial value)? initial,
    TResult? Function(UserLoading value)? loading,
    TResult? Function(UserLoaded value)? loaded,
    TResult? Function(UserError value)? error,
    TResult? Function(UserActionSuccess value)? actionSuccess,
    TResult? Function(UserActionLoading value)? actionLoading,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserInitial value)? initial,
    TResult Function(UserLoading value)? loading,
    TResult Function(UserLoaded value)? loaded,
    TResult Function(UserError value)? error,
    TResult Function(UserActionSuccess value)? actionSuccess,
    TResult Function(UserActionLoading value)? actionLoading,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UserError implements UserState {
  const factory UserError({required final String message}) = _$UserErrorImpl;

  String get message;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserErrorImplCopyWith<_$UserErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserActionSuccessImplCopyWith<$Res> {
  factory _$$UserActionSuccessImplCopyWith(
    _$UserActionSuccessImpl value,
    $Res Function(_$UserActionSuccessImpl) then,
  ) = __$$UserActionSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, UserEntity? updatedUser});

  $UserEntityCopyWith<$Res>? get updatedUser;
}

/// @nodoc
class __$$UserActionSuccessImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserActionSuccessImpl>
    implements _$$UserActionSuccessImplCopyWith<$Res> {
  __$$UserActionSuccessImplCopyWithImpl(
    _$UserActionSuccessImpl _value,
    $Res Function(_$UserActionSuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null, Object? updatedUser = freezed}) {
    return _then(
      _$UserActionSuccessImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
        updatedUser: freezed == updatedUser
            ? _value.updatedUser
            : updatedUser // ignore: cast_nullable_to_non_nullable
                  as UserEntity?,
      ),
    );
  }

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserEntityCopyWith<$Res>? get updatedUser {
    if (_value.updatedUser == null) {
      return null;
    }

    return $UserEntityCopyWith<$Res>(_value.updatedUser!, (value) {
      return _then(_value.copyWith(updatedUser: value));
    });
  }
}

/// @nodoc

class _$UserActionSuccessImpl implements UserActionSuccess {
  const _$UserActionSuccessImpl({required this.message, this.updatedUser});

  @override
  final String message;
  @override
  final UserEntity? updatedUser;

  @override
  String toString() {
    return 'UserState.actionSuccess(message: $message, updatedUser: $updatedUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserActionSuccessImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.updatedUser, updatedUser) ||
                other.updatedUser == updatedUser));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, updatedUser);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserActionSuccessImplCopyWith<_$UserActionSuccessImpl> get copyWith =>
      __$$UserActionSuccessImplCopyWithImpl<_$UserActionSuccessImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      UserListResponse userListResponse,
      List<UserEntity> users,
      int currentPage,
      int totalPages,
      int totalUsers,
      String? searchQuery,
      String? statusFilter,
    )
    loaded,
    required TResult Function(String message) error,
    required TResult Function(String message, UserEntity? updatedUser)
    actionSuccess,
    required TResult Function() actionLoading,
  }) {
    return actionSuccess(message, updatedUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
      UserListResponse userListResponse,
      List<UserEntity> users,
      int currentPage,
      int totalPages,
      int totalUsers,
      String? searchQuery,
      String? statusFilter,
    )?
    loaded,
    TResult? Function(String message)? error,
    TResult? Function(String message, UserEntity? updatedUser)? actionSuccess,
    TResult? Function()? actionLoading,
  }) {
    return actionSuccess?.call(message, updatedUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
      UserListResponse userListResponse,
      List<UserEntity> users,
      int currentPage,
      int totalPages,
      int totalUsers,
      String? searchQuery,
      String? statusFilter,
    )?
    loaded,
    TResult Function(String message)? error,
    TResult Function(String message, UserEntity? updatedUser)? actionSuccess,
    TResult Function()? actionLoading,
    required TResult orElse(),
  }) {
    if (actionSuccess != null) {
      return actionSuccess(message, updatedUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserInitial value) initial,
    required TResult Function(UserLoading value) loading,
    required TResult Function(UserLoaded value) loaded,
    required TResult Function(UserError value) error,
    required TResult Function(UserActionSuccess value) actionSuccess,
    required TResult Function(UserActionLoading value) actionLoading,
  }) {
    return actionSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserInitial value)? initial,
    TResult? Function(UserLoading value)? loading,
    TResult? Function(UserLoaded value)? loaded,
    TResult? Function(UserError value)? error,
    TResult? Function(UserActionSuccess value)? actionSuccess,
    TResult? Function(UserActionLoading value)? actionLoading,
  }) {
    return actionSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserInitial value)? initial,
    TResult Function(UserLoading value)? loading,
    TResult Function(UserLoaded value)? loaded,
    TResult Function(UserError value)? error,
    TResult Function(UserActionSuccess value)? actionSuccess,
    TResult Function(UserActionLoading value)? actionLoading,
    required TResult orElse(),
  }) {
    if (actionSuccess != null) {
      return actionSuccess(this);
    }
    return orElse();
  }
}

abstract class UserActionSuccess implements UserState {
  const factory UserActionSuccess({
    required final String message,
    final UserEntity? updatedUser,
  }) = _$UserActionSuccessImpl;

  String get message;
  UserEntity? get updatedUser;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserActionSuccessImplCopyWith<_$UserActionSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserActionLoadingImplCopyWith<$Res> {
  factory _$$UserActionLoadingImplCopyWith(
    _$UserActionLoadingImpl value,
    $Res Function(_$UserActionLoadingImpl) then,
  ) = __$$UserActionLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserActionLoadingImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserActionLoadingImpl>
    implements _$$UserActionLoadingImplCopyWith<$Res> {
  __$$UserActionLoadingImplCopyWithImpl(
    _$UserActionLoadingImpl _value,
    $Res Function(_$UserActionLoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UserActionLoadingImpl implements UserActionLoading {
  const _$UserActionLoadingImpl();

  @override
  String toString() {
    return 'UserState.actionLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserActionLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      UserListResponse userListResponse,
      List<UserEntity> users,
      int currentPage,
      int totalPages,
      int totalUsers,
      String? searchQuery,
      String? statusFilter,
    )
    loaded,
    required TResult Function(String message) error,
    required TResult Function(String message, UserEntity? updatedUser)
    actionSuccess,
    required TResult Function() actionLoading,
  }) {
    return actionLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
      UserListResponse userListResponse,
      List<UserEntity> users,
      int currentPage,
      int totalPages,
      int totalUsers,
      String? searchQuery,
      String? statusFilter,
    )?
    loaded,
    TResult? Function(String message)? error,
    TResult? Function(String message, UserEntity? updatedUser)? actionSuccess,
    TResult? Function()? actionLoading,
  }) {
    return actionLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
      UserListResponse userListResponse,
      List<UserEntity> users,
      int currentPage,
      int totalPages,
      int totalUsers,
      String? searchQuery,
      String? statusFilter,
    )?
    loaded,
    TResult Function(String message)? error,
    TResult Function(String message, UserEntity? updatedUser)? actionSuccess,
    TResult Function()? actionLoading,
    required TResult orElse(),
  }) {
    if (actionLoading != null) {
      return actionLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserInitial value) initial,
    required TResult Function(UserLoading value) loading,
    required TResult Function(UserLoaded value) loaded,
    required TResult Function(UserError value) error,
    required TResult Function(UserActionSuccess value) actionSuccess,
    required TResult Function(UserActionLoading value) actionLoading,
  }) {
    return actionLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserInitial value)? initial,
    TResult? Function(UserLoading value)? loading,
    TResult? Function(UserLoaded value)? loaded,
    TResult? Function(UserError value)? error,
    TResult? Function(UserActionSuccess value)? actionSuccess,
    TResult? Function(UserActionLoading value)? actionLoading,
  }) {
    return actionLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserInitial value)? initial,
    TResult Function(UserLoading value)? loading,
    TResult Function(UserLoaded value)? loaded,
    TResult Function(UserError value)? error,
    TResult Function(UserActionSuccess value)? actionSuccess,
    TResult Function(UserActionLoading value)? actionLoading,
    required TResult orElse(),
  }) {
    if (actionLoading != null) {
      return actionLoading(this);
    }
    return orElse();
  }
}

abstract class UserActionLoading implements UserState {
  const factory UserActionLoading() = _$UserActionLoadingImpl;
}
