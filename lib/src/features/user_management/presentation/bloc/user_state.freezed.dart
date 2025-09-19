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
    required TResult Function(UserListEntity users, bool isRefreshing) loaded,
    required TResult Function(Failure failure) error,
    required TResult Function(UserEntity user) statusUpdated,
    required TResult Function(String userId) userDeleted,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserListEntity users, bool isRefreshing)? loaded,
    TResult? Function(Failure failure)? error,
    TResult? Function(UserEntity user)? statusUpdated,
    TResult? Function(String userId)? userDeleted,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserListEntity users, bool isRefreshing)? loaded,
    TResult Function(Failure failure)? error,
    TResult Function(UserEntity user)? statusUpdated,
    TResult Function(String userId)? userDeleted,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserInitial value) initial,
    required TResult Function(UserLoading value) loading,
    required TResult Function(UserLoaded value) loaded,
    required TResult Function(UserError value) error,
    required TResult Function(UserStatusUpdated value) statusUpdated,
    required TResult Function(UserDeleted value) userDeleted,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserInitial value)? initial,
    TResult? Function(UserLoading value)? loading,
    TResult? Function(UserLoaded value)? loaded,
    TResult? Function(UserError value)? error,
    TResult? Function(UserStatusUpdated value)? statusUpdated,
    TResult? Function(UserDeleted value)? userDeleted,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserInitial value)? initial,
    TResult Function(UserLoading value)? loading,
    TResult Function(UserLoaded value)? loaded,
    TResult Function(UserError value)? error,
    TResult Function(UserStatusUpdated value)? statusUpdated,
    TResult Function(UserDeleted value)? userDeleted,
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
    required TResult Function(UserListEntity users, bool isRefreshing) loaded,
    required TResult Function(Failure failure) error,
    required TResult Function(UserEntity user) statusUpdated,
    required TResult Function(String userId) userDeleted,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserListEntity users, bool isRefreshing)? loaded,
    TResult? Function(Failure failure)? error,
    TResult? Function(UserEntity user)? statusUpdated,
    TResult? Function(String userId)? userDeleted,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserListEntity users, bool isRefreshing)? loaded,
    TResult Function(Failure failure)? error,
    TResult Function(UserEntity user)? statusUpdated,
    TResult Function(String userId)? userDeleted,
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
    required TResult Function(UserStatusUpdated value) statusUpdated,
    required TResult Function(UserDeleted value) userDeleted,
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
    TResult? Function(UserStatusUpdated value)? statusUpdated,
    TResult? Function(UserDeleted value)? userDeleted,
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
    TResult Function(UserStatusUpdated value)? statusUpdated,
    TResult Function(UserDeleted value)? userDeleted,
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
    required TResult Function(UserListEntity users, bool isRefreshing) loaded,
    required TResult Function(Failure failure) error,
    required TResult Function(UserEntity user) statusUpdated,
    required TResult Function(String userId) userDeleted,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserListEntity users, bool isRefreshing)? loaded,
    TResult? Function(Failure failure)? error,
    TResult? Function(UserEntity user)? statusUpdated,
    TResult? Function(String userId)? userDeleted,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserListEntity users, bool isRefreshing)? loaded,
    TResult Function(Failure failure)? error,
    TResult Function(UserEntity user)? statusUpdated,
    TResult Function(String userId)? userDeleted,
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
    required TResult Function(UserStatusUpdated value) statusUpdated,
    required TResult Function(UserDeleted value) userDeleted,
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
    TResult? Function(UserStatusUpdated value)? statusUpdated,
    TResult? Function(UserDeleted value)? userDeleted,
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
    TResult Function(UserStatusUpdated value)? statusUpdated,
    TResult Function(UserDeleted value)? userDeleted,
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
  $Res call({UserListEntity users, bool isRefreshing});

  $UserListEntityCopyWith<$Res> get users;
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
  $Res call({Object? users = null, Object? isRefreshing = null}) {
    return _then(
      _$UserLoadedImpl(
        users: null == users
            ? _value.users
            : users // ignore: cast_nullable_to_non_nullable
                  as UserListEntity,
        isRefreshing: null == isRefreshing
            ? _value.isRefreshing
            : isRefreshing // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserListEntityCopyWith<$Res> get users {
    return $UserListEntityCopyWith<$Res>(_value.users, (value) {
      return _then(_value.copyWith(users: value));
    });
  }
}

/// @nodoc

class _$UserLoadedImpl implements UserLoaded {
  const _$UserLoadedImpl({required this.users, this.isRefreshing = false});

  @override
  final UserListEntity users;
  @override
  @JsonKey()
  final bool isRefreshing;

  @override
  String toString() {
    return 'UserState.loaded(users: $users, isRefreshing: $isRefreshing)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLoadedImpl &&
            (identical(other.users, users) || other.users == users) &&
            (identical(other.isRefreshing, isRefreshing) ||
                other.isRefreshing == isRefreshing));
  }

  @override
  int get hashCode => Object.hash(runtimeType, users, isRefreshing);

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
    required TResult Function(UserListEntity users, bool isRefreshing) loaded,
    required TResult Function(Failure failure) error,
    required TResult Function(UserEntity user) statusUpdated,
    required TResult Function(String userId) userDeleted,
  }) {
    return loaded(users, isRefreshing);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserListEntity users, bool isRefreshing)? loaded,
    TResult? Function(Failure failure)? error,
    TResult? Function(UserEntity user)? statusUpdated,
    TResult? Function(String userId)? userDeleted,
  }) {
    return loaded?.call(users, isRefreshing);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserListEntity users, bool isRefreshing)? loaded,
    TResult Function(Failure failure)? error,
    TResult Function(UserEntity user)? statusUpdated,
    TResult Function(String userId)? userDeleted,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(users, isRefreshing);
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
    required TResult Function(UserStatusUpdated value) statusUpdated,
    required TResult Function(UserDeleted value) userDeleted,
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
    TResult? Function(UserStatusUpdated value)? statusUpdated,
    TResult? Function(UserDeleted value)? userDeleted,
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
    TResult Function(UserStatusUpdated value)? statusUpdated,
    TResult Function(UserDeleted value)? userDeleted,
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
    required final UserListEntity users,
    final bool isRefreshing,
  }) = _$UserLoadedImpl;

  UserListEntity get users;
  bool get isRefreshing;

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
  $Res call({Failure failure});
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
  $Res call({Object? failure = null}) {
    return _then(
      _$UserErrorImpl(
        failure: null == failure
            ? _value.failure
            : failure // ignore: cast_nullable_to_non_nullable
                  as Failure,
      ),
    );
  }
}

/// @nodoc

class _$UserErrorImpl implements UserError {
  const _$UserErrorImpl({required this.failure});

  @override
  final Failure failure;

  @override
  String toString() {
    return 'UserState.error(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserErrorImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

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
    required TResult Function(UserListEntity users, bool isRefreshing) loaded,
    required TResult Function(Failure failure) error,
    required TResult Function(UserEntity user) statusUpdated,
    required TResult Function(String userId) userDeleted,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserListEntity users, bool isRefreshing)? loaded,
    TResult? Function(Failure failure)? error,
    TResult? Function(UserEntity user)? statusUpdated,
    TResult? Function(String userId)? userDeleted,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserListEntity users, bool isRefreshing)? loaded,
    TResult Function(Failure failure)? error,
    TResult Function(UserEntity user)? statusUpdated,
    TResult Function(String userId)? userDeleted,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(failure);
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
    required TResult Function(UserStatusUpdated value) statusUpdated,
    required TResult Function(UserDeleted value) userDeleted,
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
    TResult? Function(UserStatusUpdated value)? statusUpdated,
    TResult? Function(UserDeleted value)? userDeleted,
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
    TResult Function(UserStatusUpdated value)? statusUpdated,
    TResult Function(UserDeleted value)? userDeleted,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UserError implements UserState {
  const factory UserError({required final Failure failure}) = _$UserErrorImpl;

  Failure get failure;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserErrorImplCopyWith<_$UserErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserStatusUpdatedImplCopyWith<$Res> {
  factory _$$UserStatusUpdatedImplCopyWith(
    _$UserStatusUpdatedImpl value,
    $Res Function(_$UserStatusUpdatedImpl) then,
  ) = __$$UserStatusUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserEntity user});

  $UserEntityCopyWith<$Res> get user;
}

/// @nodoc
class __$$UserStatusUpdatedImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserStatusUpdatedImpl>
    implements _$$UserStatusUpdatedImplCopyWith<$Res> {
  __$$UserStatusUpdatedImplCopyWithImpl(
    _$UserStatusUpdatedImpl _value,
    $Res Function(_$UserStatusUpdatedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? user = null}) {
    return _then(
      _$UserStatusUpdatedImpl(
        user: null == user
            ? _value.user
            : user // ignore: cast_nullable_to_non_nullable
                  as UserEntity,
      ),
    );
  }

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserEntityCopyWith<$Res> get user {
    return $UserEntityCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$UserStatusUpdatedImpl implements UserStatusUpdated {
  const _$UserStatusUpdatedImpl({required this.user});

  @override
  final UserEntity user;

  @override
  String toString() {
    return 'UserState.statusUpdated(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserStatusUpdatedImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserStatusUpdatedImplCopyWith<_$UserStatusUpdatedImpl> get copyWith =>
      __$$UserStatusUpdatedImplCopyWithImpl<_$UserStatusUpdatedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserListEntity users, bool isRefreshing) loaded,
    required TResult Function(Failure failure) error,
    required TResult Function(UserEntity user) statusUpdated,
    required TResult Function(String userId) userDeleted,
  }) {
    return statusUpdated(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserListEntity users, bool isRefreshing)? loaded,
    TResult? Function(Failure failure)? error,
    TResult? Function(UserEntity user)? statusUpdated,
    TResult? Function(String userId)? userDeleted,
  }) {
    return statusUpdated?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserListEntity users, bool isRefreshing)? loaded,
    TResult Function(Failure failure)? error,
    TResult Function(UserEntity user)? statusUpdated,
    TResult Function(String userId)? userDeleted,
    required TResult orElse(),
  }) {
    if (statusUpdated != null) {
      return statusUpdated(user);
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
    required TResult Function(UserStatusUpdated value) statusUpdated,
    required TResult Function(UserDeleted value) userDeleted,
  }) {
    return statusUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserInitial value)? initial,
    TResult? Function(UserLoading value)? loading,
    TResult? Function(UserLoaded value)? loaded,
    TResult? Function(UserError value)? error,
    TResult? Function(UserStatusUpdated value)? statusUpdated,
    TResult? Function(UserDeleted value)? userDeleted,
  }) {
    return statusUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserInitial value)? initial,
    TResult Function(UserLoading value)? loading,
    TResult Function(UserLoaded value)? loaded,
    TResult Function(UserError value)? error,
    TResult Function(UserStatusUpdated value)? statusUpdated,
    TResult Function(UserDeleted value)? userDeleted,
    required TResult orElse(),
  }) {
    if (statusUpdated != null) {
      return statusUpdated(this);
    }
    return orElse();
  }
}

abstract class UserStatusUpdated implements UserState {
  const factory UserStatusUpdated({required final UserEntity user}) =
      _$UserStatusUpdatedImpl;

  UserEntity get user;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserStatusUpdatedImplCopyWith<_$UserStatusUpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserDeletedImplCopyWith<$Res> {
  factory _$$UserDeletedImplCopyWith(
    _$UserDeletedImpl value,
    $Res Function(_$UserDeletedImpl) then,
  ) = __$$UserDeletedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$UserDeletedImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserDeletedImpl>
    implements _$$UserDeletedImplCopyWith<$Res> {
  __$$UserDeletedImplCopyWithImpl(
    _$UserDeletedImpl _value,
    $Res Function(_$UserDeletedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? userId = null}) {
    return _then(
      _$UserDeletedImpl(
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$UserDeletedImpl implements UserDeleted {
  const _$UserDeletedImpl({required this.userId});

  @override
  final String userId;

  @override
  String toString() {
    return 'UserState.userDeleted(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDeletedImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDeletedImplCopyWith<_$UserDeletedImpl> get copyWith =>
      __$$UserDeletedImplCopyWithImpl<_$UserDeletedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserListEntity users, bool isRefreshing) loaded,
    required TResult Function(Failure failure) error,
    required TResult Function(UserEntity user) statusUpdated,
    required TResult Function(String userId) userDeleted,
  }) {
    return userDeleted(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserListEntity users, bool isRefreshing)? loaded,
    TResult? Function(Failure failure)? error,
    TResult? Function(UserEntity user)? statusUpdated,
    TResult? Function(String userId)? userDeleted,
  }) {
    return userDeleted?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserListEntity users, bool isRefreshing)? loaded,
    TResult Function(Failure failure)? error,
    TResult Function(UserEntity user)? statusUpdated,
    TResult Function(String userId)? userDeleted,
    required TResult orElse(),
  }) {
    if (userDeleted != null) {
      return userDeleted(userId);
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
    required TResult Function(UserStatusUpdated value) statusUpdated,
    required TResult Function(UserDeleted value) userDeleted,
  }) {
    return userDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserInitial value)? initial,
    TResult? Function(UserLoading value)? loading,
    TResult? Function(UserLoaded value)? loaded,
    TResult? Function(UserError value)? error,
    TResult? Function(UserStatusUpdated value)? statusUpdated,
    TResult? Function(UserDeleted value)? userDeleted,
  }) {
    return userDeleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserInitial value)? initial,
    TResult Function(UserLoading value)? loading,
    TResult Function(UserLoaded value)? loaded,
    TResult Function(UserError value)? error,
    TResult Function(UserStatusUpdated value)? statusUpdated,
    TResult Function(UserDeleted value)? userDeleted,
    required TResult orElse(),
  }) {
    if (userDeleted != null) {
      return userDeleted(this);
    }
    return orElse();
  }
}

abstract class UserDeleted implements UserState {
  const factory UserDeleted({required final String userId}) = _$UserDeletedImpl;

  String get userId;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserDeletedImplCopyWith<_$UserDeletedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
