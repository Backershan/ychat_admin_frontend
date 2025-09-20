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
      String? search,
      String? status,
      int page,
      int limit,
    )
    getUsers,
    required TResult Function(
      String firstname,
      String email,
      String? lastname,
      String? phone,
      String? role,
    )
    createUser,
    required TResult Function(
      int userId,
      String? firstname,
      String? lastname,
      String? email,
      String? phone,
      String? role,
    )
    updateUser,
    required TResult Function(int userId) deleteUser,
    required TResult Function(int userId, String status) updateUserStatus,
    required TResult Function(int userId, String reason, String banType)
    banUser,
    required TResult Function(int userId) unbanUser,
    required TResult Function(int userId) activateUser,
    required TResult Function(int userId, String reason) deactivateUser,
    required TResult Function() clearError,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? search, String? status, int page, int limit)?
    getUsers,
    TResult? Function(
      String firstname,
      String email,
      String? lastname,
      String? phone,
      String? role,
    )?
    createUser,
    TResult? Function(
      int userId,
      String? firstname,
      String? lastname,
      String? email,
      String? phone,
      String? role,
    )?
    updateUser,
    TResult? Function(int userId)? deleteUser,
    TResult? Function(int userId, String status)? updateUserStatus,
    TResult? Function(int userId, String reason, String banType)? banUser,
    TResult? Function(int userId)? unbanUser,
    TResult? Function(int userId)? activateUser,
    TResult? Function(int userId, String reason)? deactivateUser,
    TResult? Function()? clearError,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? search, String? status, int page, int limit)?
    getUsers,
    TResult Function(
      String firstname,
      String email,
      String? lastname,
      String? phone,
      String? role,
    )?
    createUser,
    TResult Function(
      int userId,
      String? firstname,
      String? lastname,
      String? email,
      String? phone,
      String? role,
    )?
    updateUser,
    TResult Function(int userId)? deleteUser,
    TResult Function(int userId, String status)? updateUserStatus,
    TResult Function(int userId, String reason, String banType)? banUser,
    TResult Function(int userId)? unbanUser,
    TResult Function(int userId)? activateUser,
    TResult Function(int userId, String reason)? deactivateUser,
    TResult Function()? clearError,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUsersEvent value) getUsers,
    required TResult Function(CreateUserEvent value) createUser,
    required TResult Function(UpdateUserEvent value) updateUser,
    required TResult Function(DeleteUserEvent value) deleteUser,
    required TResult Function(UpdateUserStatusEvent value) updateUserStatus,
    required TResult Function(BanUserEvent value) banUser,
    required TResult Function(UnbanUserEvent value) unbanUser,
    required TResult Function(ActivateUserEvent value) activateUser,
    required TResult Function(DeactivateUserEvent value) deactivateUser,
    required TResult Function(ClearUserErrorEvent value) clearError,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUsersEvent value)? getUsers,
    TResult? Function(CreateUserEvent value)? createUser,
    TResult? Function(UpdateUserEvent value)? updateUser,
    TResult? Function(DeleteUserEvent value)? deleteUser,
    TResult? Function(UpdateUserStatusEvent value)? updateUserStatus,
    TResult? Function(BanUserEvent value)? banUser,
    TResult? Function(UnbanUserEvent value)? unbanUser,
    TResult? Function(ActivateUserEvent value)? activateUser,
    TResult? Function(DeactivateUserEvent value)? deactivateUser,
    TResult? Function(ClearUserErrorEvent value)? clearError,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUsersEvent value)? getUsers,
    TResult Function(CreateUserEvent value)? createUser,
    TResult Function(UpdateUserEvent value)? updateUser,
    TResult Function(DeleteUserEvent value)? deleteUser,
    TResult Function(UpdateUserStatusEvent value)? updateUserStatus,
    TResult Function(BanUserEvent value)? banUser,
    TResult Function(UnbanUserEvent value)? unbanUser,
    TResult Function(ActivateUserEvent value)? activateUser,
    TResult Function(DeactivateUserEvent value)? deactivateUser,
    TResult Function(ClearUserErrorEvent value)? clearError,
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
abstract class _$$GetUsersEventImplCopyWith<$Res> {
  factory _$$GetUsersEventImplCopyWith(
    _$GetUsersEventImpl value,
    $Res Function(_$GetUsersEventImpl) then,
  ) = __$$GetUsersEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? search, String? status, int page, int limit});
}

/// @nodoc
class __$$GetUsersEventImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$GetUsersEventImpl>
    implements _$$GetUsersEventImplCopyWith<$Res> {
  __$$GetUsersEventImplCopyWithImpl(
    _$GetUsersEventImpl _value,
    $Res Function(_$GetUsersEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? search = freezed,
    Object? status = freezed,
    Object? page = null,
    Object? limit = null,
  }) {
    return _then(
      _$GetUsersEventImpl(
        search: freezed == search
            ? _value.search
            : search // ignore: cast_nullable_to_non_nullable
                  as String?,
        status: freezed == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String?,
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

class _$GetUsersEventImpl implements GetUsersEvent {
  const _$GetUsersEventImpl({
    this.search,
    this.status,
    this.page = 1,
    this.limit = 20,
  });

  @override
  final String? search;
  @override
  final String? status;
  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final int limit;

  @override
  String toString() {
    return 'UserEvent.getUsers(search: $search, status: $status, page: $page, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUsersEventImpl &&
            (identical(other.search, search) || other.search == search) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, search, status, page, limit);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUsersEventImplCopyWith<_$GetUsersEventImpl> get copyWith =>
      __$$GetUsersEventImplCopyWithImpl<_$GetUsersEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      String? search,
      String? status,
      int page,
      int limit,
    )
    getUsers,
    required TResult Function(
      String firstname,
      String email,
      String? lastname,
      String? phone,
      String? role,
    )
    createUser,
    required TResult Function(
      int userId,
      String? firstname,
      String? lastname,
      String? email,
      String? phone,
      String? role,
    )
    updateUser,
    required TResult Function(int userId) deleteUser,
    required TResult Function(int userId, String status) updateUserStatus,
    required TResult Function(int userId, String reason, String banType)
    banUser,
    required TResult Function(int userId) unbanUser,
    required TResult Function(int userId) activateUser,
    required TResult Function(int userId, String reason) deactivateUser,
    required TResult Function() clearError,
  }) {
    return getUsers(search, status, page, limit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? search, String? status, int page, int limit)?
    getUsers,
    TResult? Function(
      String firstname,
      String email,
      String? lastname,
      String? phone,
      String? role,
    )?
    createUser,
    TResult? Function(
      int userId,
      String? firstname,
      String? lastname,
      String? email,
      String? phone,
      String? role,
    )?
    updateUser,
    TResult? Function(int userId)? deleteUser,
    TResult? Function(int userId, String status)? updateUserStatus,
    TResult? Function(int userId, String reason, String banType)? banUser,
    TResult? Function(int userId)? unbanUser,
    TResult? Function(int userId)? activateUser,
    TResult? Function(int userId, String reason)? deactivateUser,
    TResult? Function()? clearError,
  }) {
    return getUsers?.call(search, status, page, limit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? search, String? status, int page, int limit)?
    getUsers,
    TResult Function(
      String firstname,
      String email,
      String? lastname,
      String? phone,
      String? role,
    )?
    createUser,
    TResult Function(
      int userId,
      String? firstname,
      String? lastname,
      String? email,
      String? phone,
      String? role,
    )?
    updateUser,
    TResult Function(int userId)? deleteUser,
    TResult Function(int userId, String status)? updateUserStatus,
    TResult Function(int userId, String reason, String banType)? banUser,
    TResult Function(int userId)? unbanUser,
    TResult Function(int userId)? activateUser,
    TResult Function(int userId, String reason)? deactivateUser,
    TResult Function()? clearError,
    required TResult orElse(),
  }) {
    if (getUsers != null) {
      return getUsers(search, status, page, limit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUsersEvent value) getUsers,
    required TResult Function(CreateUserEvent value) createUser,
    required TResult Function(UpdateUserEvent value) updateUser,
    required TResult Function(DeleteUserEvent value) deleteUser,
    required TResult Function(UpdateUserStatusEvent value) updateUserStatus,
    required TResult Function(BanUserEvent value) banUser,
    required TResult Function(UnbanUserEvent value) unbanUser,
    required TResult Function(ActivateUserEvent value) activateUser,
    required TResult Function(DeactivateUserEvent value) deactivateUser,
    required TResult Function(ClearUserErrorEvent value) clearError,
  }) {
    return getUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUsersEvent value)? getUsers,
    TResult? Function(CreateUserEvent value)? createUser,
    TResult? Function(UpdateUserEvent value)? updateUser,
    TResult? Function(DeleteUserEvent value)? deleteUser,
    TResult? Function(UpdateUserStatusEvent value)? updateUserStatus,
    TResult? Function(BanUserEvent value)? banUser,
    TResult? Function(UnbanUserEvent value)? unbanUser,
    TResult? Function(ActivateUserEvent value)? activateUser,
    TResult? Function(DeactivateUserEvent value)? deactivateUser,
    TResult? Function(ClearUserErrorEvent value)? clearError,
  }) {
    return getUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUsersEvent value)? getUsers,
    TResult Function(CreateUserEvent value)? createUser,
    TResult Function(UpdateUserEvent value)? updateUser,
    TResult Function(DeleteUserEvent value)? deleteUser,
    TResult Function(UpdateUserStatusEvent value)? updateUserStatus,
    TResult Function(BanUserEvent value)? banUser,
    TResult Function(UnbanUserEvent value)? unbanUser,
    TResult Function(ActivateUserEvent value)? activateUser,
    TResult Function(DeactivateUserEvent value)? deactivateUser,
    TResult Function(ClearUserErrorEvent value)? clearError,
    required TResult orElse(),
  }) {
    if (getUsers != null) {
      return getUsers(this);
    }
    return orElse();
  }
}

abstract class GetUsersEvent implements UserEvent {
  const factory GetUsersEvent({
    final String? search,
    final String? status,
    final int page,
    final int limit,
  }) = _$GetUsersEventImpl;

  String? get search;
  String? get status;
  int get page;
  int get limit;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetUsersEventImplCopyWith<_$GetUsersEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateUserEventImplCopyWith<$Res> {
  factory _$$CreateUserEventImplCopyWith(
    _$CreateUserEventImpl value,
    $Res Function(_$CreateUserEventImpl) then,
  ) = __$$CreateUserEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    String firstname,
    String email,
    String? lastname,
    String? phone,
    String? role,
  });
}

/// @nodoc
class __$$CreateUserEventImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$CreateUserEventImpl>
    implements _$$CreateUserEventImplCopyWith<$Res> {
  __$$CreateUserEventImplCopyWithImpl(
    _$CreateUserEventImpl _value,
    $Res Function(_$CreateUserEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstname = null,
    Object? email = null,
    Object? lastname = freezed,
    Object? phone = freezed,
    Object? role = freezed,
  }) {
    return _then(
      _$CreateUserEventImpl(
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
        role: freezed == role
            ? _value.role
            : role // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$CreateUserEventImpl implements CreateUserEvent {
  const _$CreateUserEventImpl({
    required this.firstname,
    required this.email,
    this.lastname,
    this.phone,
    this.role,
  });

  @override
  final String firstname;
  @override
  final String email;
  @override
  final String? lastname;
  @override
  final String? phone;
  @override
  final String? role;

  @override
  String toString() {
    return 'UserEvent.createUser(firstname: $firstname, email: $email, lastname: $lastname, phone: $phone, role: $role)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateUserEventImpl &&
            (identical(other.firstname, firstname) ||
                other.firstname == firstname) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.lastname, lastname) ||
                other.lastname == lastname) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.role, role) || other.role == role));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, firstname, email, lastname, phone, role);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateUserEventImplCopyWith<_$CreateUserEventImpl> get copyWith =>
      __$$CreateUserEventImplCopyWithImpl<_$CreateUserEventImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      String? search,
      String? status,
      int page,
      int limit,
    )
    getUsers,
    required TResult Function(
      String firstname,
      String email,
      String? lastname,
      String? phone,
      String? role,
    )
    createUser,
    required TResult Function(
      int userId,
      String? firstname,
      String? lastname,
      String? email,
      String? phone,
      String? role,
    )
    updateUser,
    required TResult Function(int userId) deleteUser,
    required TResult Function(int userId, String status) updateUserStatus,
    required TResult Function(int userId, String reason, String banType)
    banUser,
    required TResult Function(int userId) unbanUser,
    required TResult Function(int userId) activateUser,
    required TResult Function(int userId, String reason) deactivateUser,
    required TResult Function() clearError,
  }) {
    return createUser(firstname, email, lastname, phone, role);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? search, String? status, int page, int limit)?
    getUsers,
    TResult? Function(
      String firstname,
      String email,
      String? lastname,
      String? phone,
      String? role,
    )?
    createUser,
    TResult? Function(
      int userId,
      String? firstname,
      String? lastname,
      String? email,
      String? phone,
      String? role,
    )?
    updateUser,
    TResult? Function(int userId)? deleteUser,
    TResult? Function(int userId, String status)? updateUserStatus,
    TResult? Function(int userId, String reason, String banType)? banUser,
    TResult? Function(int userId)? unbanUser,
    TResult? Function(int userId)? activateUser,
    TResult? Function(int userId, String reason)? deactivateUser,
    TResult? Function()? clearError,
  }) {
    return createUser?.call(firstname, email, lastname, phone, role);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? search, String? status, int page, int limit)?
    getUsers,
    TResult Function(
      String firstname,
      String email,
      String? lastname,
      String? phone,
      String? role,
    )?
    createUser,
    TResult Function(
      int userId,
      String? firstname,
      String? lastname,
      String? email,
      String? phone,
      String? role,
    )?
    updateUser,
    TResult Function(int userId)? deleteUser,
    TResult Function(int userId, String status)? updateUserStatus,
    TResult Function(int userId, String reason, String banType)? banUser,
    TResult Function(int userId)? unbanUser,
    TResult Function(int userId)? activateUser,
    TResult Function(int userId, String reason)? deactivateUser,
    TResult Function()? clearError,
    required TResult orElse(),
  }) {
    if (createUser != null) {
      return createUser(firstname, email, lastname, phone, role);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUsersEvent value) getUsers,
    required TResult Function(CreateUserEvent value) createUser,
    required TResult Function(UpdateUserEvent value) updateUser,
    required TResult Function(DeleteUserEvent value) deleteUser,
    required TResult Function(UpdateUserStatusEvent value) updateUserStatus,
    required TResult Function(BanUserEvent value) banUser,
    required TResult Function(UnbanUserEvent value) unbanUser,
    required TResult Function(ActivateUserEvent value) activateUser,
    required TResult Function(DeactivateUserEvent value) deactivateUser,
    required TResult Function(ClearUserErrorEvent value) clearError,
  }) {
    return createUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUsersEvent value)? getUsers,
    TResult? Function(CreateUserEvent value)? createUser,
    TResult? Function(UpdateUserEvent value)? updateUser,
    TResult? Function(DeleteUserEvent value)? deleteUser,
    TResult? Function(UpdateUserStatusEvent value)? updateUserStatus,
    TResult? Function(BanUserEvent value)? banUser,
    TResult? Function(UnbanUserEvent value)? unbanUser,
    TResult? Function(ActivateUserEvent value)? activateUser,
    TResult? Function(DeactivateUserEvent value)? deactivateUser,
    TResult? Function(ClearUserErrorEvent value)? clearError,
  }) {
    return createUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUsersEvent value)? getUsers,
    TResult Function(CreateUserEvent value)? createUser,
    TResult Function(UpdateUserEvent value)? updateUser,
    TResult Function(DeleteUserEvent value)? deleteUser,
    TResult Function(UpdateUserStatusEvent value)? updateUserStatus,
    TResult Function(BanUserEvent value)? banUser,
    TResult Function(UnbanUserEvent value)? unbanUser,
    TResult Function(ActivateUserEvent value)? activateUser,
    TResult Function(DeactivateUserEvent value)? deactivateUser,
    TResult Function(ClearUserErrorEvent value)? clearError,
    required TResult orElse(),
  }) {
    if (createUser != null) {
      return createUser(this);
    }
    return orElse();
  }
}

abstract class CreateUserEvent implements UserEvent {
  const factory CreateUserEvent({
    required final String firstname,
    required final String email,
    final String? lastname,
    final String? phone,
    final String? role,
  }) = _$CreateUserEventImpl;

  String get firstname;
  String get email;
  String? get lastname;
  String? get phone;
  String? get role;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateUserEventImplCopyWith<_$CreateUserEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateUserEventImplCopyWith<$Res> {
  factory _$$UpdateUserEventImplCopyWith(
    _$UpdateUserEventImpl value,
    $Res Function(_$UpdateUserEventImpl) then,
  ) = __$$UpdateUserEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    int userId,
    String? firstname,
    String? lastname,
    String? email,
    String? phone,
    String? role,
  });
}

/// @nodoc
class __$$UpdateUserEventImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$UpdateUserEventImpl>
    implements _$$UpdateUserEventImplCopyWith<$Res> {
  __$$UpdateUserEventImplCopyWithImpl(
    _$UpdateUserEventImpl _value,
    $Res Function(_$UpdateUserEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? firstname = freezed,
    Object? lastname = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? role = freezed,
  }) {
    return _then(
      _$UpdateUserEventImpl(
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
        role: freezed == role
            ? _value.role
            : role // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$UpdateUserEventImpl implements UpdateUserEvent {
  const _$UpdateUserEventImpl({
    required this.userId,
    this.firstname,
    this.lastname,
    this.email,
    this.phone,
    this.role,
  });

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
  final String? role;

  @override
  String toString() {
    return 'UserEvent.updateUser(userId: $userId, firstname: $firstname, lastname: $lastname, email: $email, phone: $phone, role: $role)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserEventImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.firstname, firstname) ||
                other.firstname == firstname) &&
            (identical(other.lastname, lastname) ||
                other.lastname == lastname) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.role, role) || other.role == role));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, userId, firstname, lastname, email, phone, role);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUserEventImplCopyWith<_$UpdateUserEventImpl> get copyWith =>
      __$$UpdateUserEventImplCopyWithImpl<_$UpdateUserEventImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      String? search,
      String? status,
      int page,
      int limit,
    )
    getUsers,
    required TResult Function(
      String firstname,
      String email,
      String? lastname,
      String? phone,
      String? role,
    )
    createUser,
    required TResult Function(
      int userId,
      String? firstname,
      String? lastname,
      String? email,
      String? phone,
      String? role,
    )
    updateUser,
    required TResult Function(int userId) deleteUser,
    required TResult Function(int userId, String status) updateUserStatus,
    required TResult Function(int userId, String reason, String banType)
    banUser,
    required TResult Function(int userId) unbanUser,
    required TResult Function(int userId) activateUser,
    required TResult Function(int userId, String reason) deactivateUser,
    required TResult Function() clearError,
  }) {
    return updateUser(userId, firstname, lastname, email, phone, role);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? search, String? status, int page, int limit)?
    getUsers,
    TResult? Function(
      String firstname,
      String email,
      String? lastname,
      String? phone,
      String? role,
    )?
    createUser,
    TResult? Function(
      int userId,
      String? firstname,
      String? lastname,
      String? email,
      String? phone,
      String? role,
    )?
    updateUser,
    TResult? Function(int userId)? deleteUser,
    TResult? Function(int userId, String status)? updateUserStatus,
    TResult? Function(int userId, String reason, String banType)? banUser,
    TResult? Function(int userId)? unbanUser,
    TResult? Function(int userId)? activateUser,
    TResult? Function(int userId, String reason)? deactivateUser,
    TResult? Function()? clearError,
  }) {
    return updateUser?.call(userId, firstname, lastname, email, phone, role);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? search, String? status, int page, int limit)?
    getUsers,
    TResult Function(
      String firstname,
      String email,
      String? lastname,
      String? phone,
      String? role,
    )?
    createUser,
    TResult Function(
      int userId,
      String? firstname,
      String? lastname,
      String? email,
      String? phone,
      String? role,
    )?
    updateUser,
    TResult Function(int userId)? deleteUser,
    TResult Function(int userId, String status)? updateUserStatus,
    TResult Function(int userId, String reason, String banType)? banUser,
    TResult Function(int userId)? unbanUser,
    TResult Function(int userId)? activateUser,
    TResult Function(int userId, String reason)? deactivateUser,
    TResult Function()? clearError,
    required TResult orElse(),
  }) {
    if (updateUser != null) {
      return updateUser(userId, firstname, lastname, email, phone, role);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUsersEvent value) getUsers,
    required TResult Function(CreateUserEvent value) createUser,
    required TResult Function(UpdateUserEvent value) updateUser,
    required TResult Function(DeleteUserEvent value) deleteUser,
    required TResult Function(UpdateUserStatusEvent value) updateUserStatus,
    required TResult Function(BanUserEvent value) banUser,
    required TResult Function(UnbanUserEvent value) unbanUser,
    required TResult Function(ActivateUserEvent value) activateUser,
    required TResult Function(DeactivateUserEvent value) deactivateUser,
    required TResult Function(ClearUserErrorEvent value) clearError,
  }) {
    return updateUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUsersEvent value)? getUsers,
    TResult? Function(CreateUserEvent value)? createUser,
    TResult? Function(UpdateUserEvent value)? updateUser,
    TResult? Function(DeleteUserEvent value)? deleteUser,
    TResult? Function(UpdateUserStatusEvent value)? updateUserStatus,
    TResult? Function(BanUserEvent value)? banUser,
    TResult? Function(UnbanUserEvent value)? unbanUser,
    TResult? Function(ActivateUserEvent value)? activateUser,
    TResult? Function(DeactivateUserEvent value)? deactivateUser,
    TResult? Function(ClearUserErrorEvent value)? clearError,
  }) {
    return updateUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUsersEvent value)? getUsers,
    TResult Function(CreateUserEvent value)? createUser,
    TResult Function(UpdateUserEvent value)? updateUser,
    TResult Function(DeleteUserEvent value)? deleteUser,
    TResult Function(UpdateUserStatusEvent value)? updateUserStatus,
    TResult Function(BanUserEvent value)? banUser,
    TResult Function(UnbanUserEvent value)? unbanUser,
    TResult Function(ActivateUserEvent value)? activateUser,
    TResult Function(DeactivateUserEvent value)? deactivateUser,
    TResult Function(ClearUserErrorEvent value)? clearError,
    required TResult orElse(),
  }) {
    if (updateUser != null) {
      return updateUser(this);
    }
    return orElse();
  }
}

abstract class UpdateUserEvent implements UserEvent {
  const factory UpdateUserEvent({
    required final int userId,
    final String? firstname,
    final String? lastname,
    final String? email,
    final String? phone,
    final String? role,
  }) = _$UpdateUserEventImpl;

  int get userId;
  String? get firstname;
  String? get lastname;
  String? get email;
  String? get phone;
  String? get role;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateUserEventImplCopyWith<_$UpdateUserEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteUserEventImplCopyWith<$Res> {
  factory _$$DeleteUserEventImplCopyWith(
    _$DeleteUserEventImpl value,
    $Res Function(_$DeleteUserEventImpl) then,
  ) = __$$DeleteUserEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int userId});
}

/// @nodoc
class __$$DeleteUserEventImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$DeleteUserEventImpl>
    implements _$$DeleteUserEventImplCopyWith<$Res> {
  __$$DeleteUserEventImplCopyWithImpl(
    _$DeleteUserEventImpl _value,
    $Res Function(_$DeleteUserEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? userId = null}) {
    return _then(
      _$DeleteUserEventImpl(
        null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$DeleteUserEventImpl implements DeleteUserEvent {
  const _$DeleteUserEventImpl(this.userId);

  @override
  final int userId;

  @override
  String toString() {
    return 'UserEvent.deleteUser(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteUserEventImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteUserEventImplCopyWith<_$DeleteUserEventImpl> get copyWith =>
      __$$DeleteUserEventImplCopyWithImpl<_$DeleteUserEventImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      String? search,
      String? status,
      int page,
      int limit,
    )
    getUsers,
    required TResult Function(
      String firstname,
      String email,
      String? lastname,
      String? phone,
      String? role,
    )
    createUser,
    required TResult Function(
      int userId,
      String? firstname,
      String? lastname,
      String? email,
      String? phone,
      String? role,
    )
    updateUser,
    required TResult Function(int userId) deleteUser,
    required TResult Function(int userId, String status) updateUserStatus,
    required TResult Function(int userId, String reason, String banType)
    banUser,
    required TResult Function(int userId) unbanUser,
    required TResult Function(int userId) activateUser,
    required TResult Function(int userId, String reason) deactivateUser,
    required TResult Function() clearError,
  }) {
    return deleteUser(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? search, String? status, int page, int limit)?
    getUsers,
    TResult? Function(
      String firstname,
      String email,
      String? lastname,
      String? phone,
      String? role,
    )?
    createUser,
    TResult? Function(
      int userId,
      String? firstname,
      String? lastname,
      String? email,
      String? phone,
      String? role,
    )?
    updateUser,
    TResult? Function(int userId)? deleteUser,
    TResult? Function(int userId, String status)? updateUserStatus,
    TResult? Function(int userId, String reason, String banType)? banUser,
    TResult? Function(int userId)? unbanUser,
    TResult? Function(int userId)? activateUser,
    TResult? Function(int userId, String reason)? deactivateUser,
    TResult? Function()? clearError,
  }) {
    return deleteUser?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? search, String? status, int page, int limit)?
    getUsers,
    TResult Function(
      String firstname,
      String email,
      String? lastname,
      String? phone,
      String? role,
    )?
    createUser,
    TResult Function(
      int userId,
      String? firstname,
      String? lastname,
      String? email,
      String? phone,
      String? role,
    )?
    updateUser,
    TResult Function(int userId)? deleteUser,
    TResult Function(int userId, String status)? updateUserStatus,
    TResult Function(int userId, String reason, String banType)? banUser,
    TResult Function(int userId)? unbanUser,
    TResult Function(int userId)? activateUser,
    TResult Function(int userId, String reason)? deactivateUser,
    TResult Function()? clearError,
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
    required TResult Function(GetUsersEvent value) getUsers,
    required TResult Function(CreateUserEvent value) createUser,
    required TResult Function(UpdateUserEvent value) updateUser,
    required TResult Function(DeleteUserEvent value) deleteUser,
    required TResult Function(UpdateUserStatusEvent value) updateUserStatus,
    required TResult Function(BanUserEvent value) banUser,
    required TResult Function(UnbanUserEvent value) unbanUser,
    required TResult Function(ActivateUserEvent value) activateUser,
    required TResult Function(DeactivateUserEvent value) deactivateUser,
    required TResult Function(ClearUserErrorEvent value) clearError,
  }) {
    return deleteUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUsersEvent value)? getUsers,
    TResult? Function(CreateUserEvent value)? createUser,
    TResult? Function(UpdateUserEvent value)? updateUser,
    TResult? Function(DeleteUserEvent value)? deleteUser,
    TResult? Function(UpdateUserStatusEvent value)? updateUserStatus,
    TResult? Function(BanUserEvent value)? banUser,
    TResult? Function(UnbanUserEvent value)? unbanUser,
    TResult? Function(ActivateUserEvent value)? activateUser,
    TResult? Function(DeactivateUserEvent value)? deactivateUser,
    TResult? Function(ClearUserErrorEvent value)? clearError,
  }) {
    return deleteUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUsersEvent value)? getUsers,
    TResult Function(CreateUserEvent value)? createUser,
    TResult Function(UpdateUserEvent value)? updateUser,
    TResult Function(DeleteUserEvent value)? deleteUser,
    TResult Function(UpdateUserStatusEvent value)? updateUserStatus,
    TResult Function(BanUserEvent value)? banUser,
    TResult Function(UnbanUserEvent value)? unbanUser,
    TResult Function(ActivateUserEvent value)? activateUser,
    TResult Function(DeactivateUserEvent value)? deactivateUser,
    TResult Function(ClearUserErrorEvent value)? clearError,
    required TResult orElse(),
  }) {
    if (deleteUser != null) {
      return deleteUser(this);
    }
    return orElse();
  }
}

abstract class DeleteUserEvent implements UserEvent {
  const factory DeleteUserEvent(final int userId) = _$DeleteUserEventImpl;

  int get userId;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteUserEventImplCopyWith<_$DeleteUserEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateUserStatusEventImplCopyWith<$Res> {
  factory _$$UpdateUserStatusEventImplCopyWith(
    _$UpdateUserStatusEventImpl value,
    $Res Function(_$UpdateUserStatusEventImpl) then,
  ) = __$$UpdateUserStatusEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int userId, String status});
}

/// @nodoc
class __$$UpdateUserStatusEventImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$UpdateUserStatusEventImpl>
    implements _$$UpdateUserStatusEventImplCopyWith<$Res> {
  __$$UpdateUserStatusEventImplCopyWithImpl(
    _$UpdateUserStatusEventImpl _value,
    $Res Function(_$UpdateUserStatusEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? userId = null, Object? status = null}) {
    return _then(
      _$UpdateUserStatusEventImpl(
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

class _$UpdateUserStatusEventImpl implements UpdateUserStatusEvent {
  const _$UpdateUserStatusEventImpl({
    required this.userId,
    required this.status,
  });

  @override
  final int userId;
  @override
  final String status;

  @override
  String toString() {
    return 'UserEvent.updateUserStatus(userId: $userId, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserStatusEventImpl &&
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
  _$$UpdateUserStatusEventImplCopyWith<_$UpdateUserStatusEventImpl>
  get copyWith =>
      __$$UpdateUserStatusEventImplCopyWithImpl<_$UpdateUserStatusEventImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      String? search,
      String? status,
      int page,
      int limit,
    )
    getUsers,
    required TResult Function(
      String firstname,
      String email,
      String? lastname,
      String? phone,
      String? role,
    )
    createUser,
    required TResult Function(
      int userId,
      String? firstname,
      String? lastname,
      String? email,
      String? phone,
      String? role,
    )
    updateUser,
    required TResult Function(int userId) deleteUser,
    required TResult Function(int userId, String status) updateUserStatus,
    required TResult Function(int userId, String reason, String banType)
    banUser,
    required TResult Function(int userId) unbanUser,
    required TResult Function(int userId) activateUser,
    required TResult Function(int userId, String reason) deactivateUser,
    required TResult Function() clearError,
  }) {
    return updateUserStatus(userId, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? search, String? status, int page, int limit)?
    getUsers,
    TResult? Function(
      String firstname,
      String email,
      String? lastname,
      String? phone,
      String? role,
    )?
    createUser,
    TResult? Function(
      int userId,
      String? firstname,
      String? lastname,
      String? email,
      String? phone,
      String? role,
    )?
    updateUser,
    TResult? Function(int userId)? deleteUser,
    TResult? Function(int userId, String status)? updateUserStatus,
    TResult? Function(int userId, String reason, String banType)? banUser,
    TResult? Function(int userId)? unbanUser,
    TResult? Function(int userId)? activateUser,
    TResult? Function(int userId, String reason)? deactivateUser,
    TResult? Function()? clearError,
  }) {
    return updateUserStatus?.call(userId, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? search, String? status, int page, int limit)?
    getUsers,
    TResult Function(
      String firstname,
      String email,
      String? lastname,
      String? phone,
      String? role,
    )?
    createUser,
    TResult Function(
      int userId,
      String? firstname,
      String? lastname,
      String? email,
      String? phone,
      String? role,
    )?
    updateUser,
    TResult Function(int userId)? deleteUser,
    TResult Function(int userId, String status)? updateUserStatus,
    TResult Function(int userId, String reason, String banType)? banUser,
    TResult Function(int userId)? unbanUser,
    TResult Function(int userId)? activateUser,
    TResult Function(int userId, String reason)? deactivateUser,
    TResult Function()? clearError,
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
    required TResult Function(GetUsersEvent value) getUsers,
    required TResult Function(CreateUserEvent value) createUser,
    required TResult Function(UpdateUserEvent value) updateUser,
    required TResult Function(DeleteUserEvent value) deleteUser,
    required TResult Function(UpdateUserStatusEvent value) updateUserStatus,
    required TResult Function(BanUserEvent value) banUser,
    required TResult Function(UnbanUserEvent value) unbanUser,
    required TResult Function(ActivateUserEvent value) activateUser,
    required TResult Function(DeactivateUserEvent value) deactivateUser,
    required TResult Function(ClearUserErrorEvent value) clearError,
  }) {
    return updateUserStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUsersEvent value)? getUsers,
    TResult? Function(CreateUserEvent value)? createUser,
    TResult? Function(UpdateUserEvent value)? updateUser,
    TResult? Function(DeleteUserEvent value)? deleteUser,
    TResult? Function(UpdateUserStatusEvent value)? updateUserStatus,
    TResult? Function(BanUserEvent value)? banUser,
    TResult? Function(UnbanUserEvent value)? unbanUser,
    TResult? Function(ActivateUserEvent value)? activateUser,
    TResult? Function(DeactivateUserEvent value)? deactivateUser,
    TResult? Function(ClearUserErrorEvent value)? clearError,
  }) {
    return updateUserStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUsersEvent value)? getUsers,
    TResult Function(CreateUserEvent value)? createUser,
    TResult Function(UpdateUserEvent value)? updateUser,
    TResult Function(DeleteUserEvent value)? deleteUser,
    TResult Function(UpdateUserStatusEvent value)? updateUserStatus,
    TResult Function(BanUserEvent value)? banUser,
    TResult Function(UnbanUserEvent value)? unbanUser,
    TResult Function(ActivateUserEvent value)? activateUser,
    TResult Function(DeactivateUserEvent value)? deactivateUser,
    TResult Function(ClearUserErrorEvent value)? clearError,
    required TResult orElse(),
  }) {
    if (updateUserStatus != null) {
      return updateUserStatus(this);
    }
    return orElse();
  }
}

abstract class UpdateUserStatusEvent implements UserEvent {
  const factory UpdateUserStatusEvent({
    required final int userId,
    required final String status,
  }) = _$UpdateUserStatusEventImpl;

  int get userId;
  String get status;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateUserStatusEventImplCopyWith<_$UpdateUserStatusEventImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BanUserEventImplCopyWith<$Res> {
  factory _$$BanUserEventImplCopyWith(
    _$BanUserEventImpl value,
    $Res Function(_$BanUserEventImpl) then,
  ) = __$$BanUserEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int userId, String reason, String banType});
}

/// @nodoc
class __$$BanUserEventImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$BanUserEventImpl>
    implements _$$BanUserEventImplCopyWith<$Res> {
  __$$BanUserEventImplCopyWithImpl(
    _$BanUserEventImpl _value,
    $Res Function(_$BanUserEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? reason = null,
    Object? banType = null,
  }) {
    return _then(
      _$BanUserEventImpl(
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as int,
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

class _$BanUserEventImpl implements BanUserEvent {
  const _$BanUserEventImpl({
    required this.userId,
    required this.reason,
    required this.banType,
  });

  @override
  final int userId;
  @override
  final String reason;
  @override
  final String banType;

  @override
  String toString() {
    return 'UserEvent.banUser(userId: $userId, reason: $reason, banType: $banType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BanUserEventImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.banType, banType) || other.banType == banType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, reason, banType);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BanUserEventImplCopyWith<_$BanUserEventImpl> get copyWith =>
      __$$BanUserEventImplCopyWithImpl<_$BanUserEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      String? search,
      String? status,
      int page,
      int limit,
    )
    getUsers,
    required TResult Function(
      String firstname,
      String email,
      String? lastname,
      String? phone,
      String? role,
    )
    createUser,
    required TResult Function(
      int userId,
      String? firstname,
      String? lastname,
      String? email,
      String? phone,
      String? role,
    )
    updateUser,
    required TResult Function(int userId) deleteUser,
    required TResult Function(int userId, String status) updateUserStatus,
    required TResult Function(int userId, String reason, String banType)
    banUser,
    required TResult Function(int userId) unbanUser,
    required TResult Function(int userId) activateUser,
    required TResult Function(int userId, String reason) deactivateUser,
    required TResult Function() clearError,
  }) {
    return banUser(userId, reason, banType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? search, String? status, int page, int limit)?
    getUsers,
    TResult? Function(
      String firstname,
      String email,
      String? lastname,
      String? phone,
      String? role,
    )?
    createUser,
    TResult? Function(
      int userId,
      String? firstname,
      String? lastname,
      String? email,
      String? phone,
      String? role,
    )?
    updateUser,
    TResult? Function(int userId)? deleteUser,
    TResult? Function(int userId, String status)? updateUserStatus,
    TResult? Function(int userId, String reason, String banType)? banUser,
    TResult? Function(int userId)? unbanUser,
    TResult? Function(int userId)? activateUser,
    TResult? Function(int userId, String reason)? deactivateUser,
    TResult? Function()? clearError,
  }) {
    return banUser?.call(userId, reason, banType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? search, String? status, int page, int limit)?
    getUsers,
    TResult Function(
      String firstname,
      String email,
      String? lastname,
      String? phone,
      String? role,
    )?
    createUser,
    TResult Function(
      int userId,
      String? firstname,
      String? lastname,
      String? email,
      String? phone,
      String? role,
    )?
    updateUser,
    TResult Function(int userId)? deleteUser,
    TResult Function(int userId, String status)? updateUserStatus,
    TResult Function(int userId, String reason, String banType)? banUser,
    TResult Function(int userId)? unbanUser,
    TResult Function(int userId)? activateUser,
    TResult Function(int userId, String reason)? deactivateUser,
    TResult Function()? clearError,
    required TResult orElse(),
  }) {
    if (banUser != null) {
      return banUser(userId, reason, banType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUsersEvent value) getUsers,
    required TResult Function(CreateUserEvent value) createUser,
    required TResult Function(UpdateUserEvent value) updateUser,
    required TResult Function(DeleteUserEvent value) deleteUser,
    required TResult Function(UpdateUserStatusEvent value) updateUserStatus,
    required TResult Function(BanUserEvent value) banUser,
    required TResult Function(UnbanUserEvent value) unbanUser,
    required TResult Function(ActivateUserEvent value) activateUser,
    required TResult Function(DeactivateUserEvent value) deactivateUser,
    required TResult Function(ClearUserErrorEvent value) clearError,
  }) {
    return banUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUsersEvent value)? getUsers,
    TResult? Function(CreateUserEvent value)? createUser,
    TResult? Function(UpdateUserEvent value)? updateUser,
    TResult? Function(DeleteUserEvent value)? deleteUser,
    TResult? Function(UpdateUserStatusEvent value)? updateUserStatus,
    TResult? Function(BanUserEvent value)? banUser,
    TResult? Function(UnbanUserEvent value)? unbanUser,
    TResult? Function(ActivateUserEvent value)? activateUser,
    TResult? Function(DeactivateUserEvent value)? deactivateUser,
    TResult? Function(ClearUserErrorEvent value)? clearError,
  }) {
    return banUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUsersEvent value)? getUsers,
    TResult Function(CreateUserEvent value)? createUser,
    TResult Function(UpdateUserEvent value)? updateUser,
    TResult Function(DeleteUserEvent value)? deleteUser,
    TResult Function(UpdateUserStatusEvent value)? updateUserStatus,
    TResult Function(BanUserEvent value)? banUser,
    TResult Function(UnbanUserEvent value)? unbanUser,
    TResult Function(ActivateUserEvent value)? activateUser,
    TResult Function(DeactivateUserEvent value)? deactivateUser,
    TResult Function(ClearUserErrorEvent value)? clearError,
    required TResult orElse(),
  }) {
    if (banUser != null) {
      return banUser(this);
    }
    return orElse();
  }
}

abstract class BanUserEvent implements UserEvent {
  const factory BanUserEvent({
    required final int userId,
    required final String reason,
    required final String banType,
  }) = _$BanUserEventImpl;

  int get userId;
  String get reason;
  String get banType;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BanUserEventImplCopyWith<_$BanUserEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnbanUserEventImplCopyWith<$Res> {
  factory _$$UnbanUserEventImplCopyWith(
    _$UnbanUserEventImpl value,
    $Res Function(_$UnbanUserEventImpl) then,
  ) = __$$UnbanUserEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int userId});
}

/// @nodoc
class __$$UnbanUserEventImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$UnbanUserEventImpl>
    implements _$$UnbanUserEventImplCopyWith<$Res> {
  __$$UnbanUserEventImplCopyWithImpl(
    _$UnbanUserEventImpl _value,
    $Res Function(_$UnbanUserEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? userId = null}) {
    return _then(
      _$UnbanUserEventImpl(
        null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$UnbanUserEventImpl implements UnbanUserEvent {
  const _$UnbanUserEventImpl(this.userId);

  @override
  final int userId;

  @override
  String toString() {
    return 'UserEvent.unbanUser(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnbanUserEventImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnbanUserEventImplCopyWith<_$UnbanUserEventImpl> get copyWith =>
      __$$UnbanUserEventImplCopyWithImpl<_$UnbanUserEventImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      String? search,
      String? status,
      int page,
      int limit,
    )
    getUsers,
    required TResult Function(
      String firstname,
      String email,
      String? lastname,
      String? phone,
      String? role,
    )
    createUser,
    required TResult Function(
      int userId,
      String? firstname,
      String? lastname,
      String? email,
      String? phone,
      String? role,
    )
    updateUser,
    required TResult Function(int userId) deleteUser,
    required TResult Function(int userId, String status) updateUserStatus,
    required TResult Function(int userId, String reason, String banType)
    banUser,
    required TResult Function(int userId) unbanUser,
    required TResult Function(int userId) activateUser,
    required TResult Function(int userId, String reason) deactivateUser,
    required TResult Function() clearError,
  }) {
    return unbanUser(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? search, String? status, int page, int limit)?
    getUsers,
    TResult? Function(
      String firstname,
      String email,
      String? lastname,
      String? phone,
      String? role,
    )?
    createUser,
    TResult? Function(
      int userId,
      String? firstname,
      String? lastname,
      String? email,
      String? phone,
      String? role,
    )?
    updateUser,
    TResult? Function(int userId)? deleteUser,
    TResult? Function(int userId, String status)? updateUserStatus,
    TResult? Function(int userId, String reason, String banType)? banUser,
    TResult? Function(int userId)? unbanUser,
    TResult? Function(int userId)? activateUser,
    TResult? Function(int userId, String reason)? deactivateUser,
    TResult? Function()? clearError,
  }) {
    return unbanUser?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? search, String? status, int page, int limit)?
    getUsers,
    TResult Function(
      String firstname,
      String email,
      String? lastname,
      String? phone,
      String? role,
    )?
    createUser,
    TResult Function(
      int userId,
      String? firstname,
      String? lastname,
      String? email,
      String? phone,
      String? role,
    )?
    updateUser,
    TResult Function(int userId)? deleteUser,
    TResult Function(int userId, String status)? updateUserStatus,
    TResult Function(int userId, String reason, String banType)? banUser,
    TResult Function(int userId)? unbanUser,
    TResult Function(int userId)? activateUser,
    TResult Function(int userId, String reason)? deactivateUser,
    TResult Function()? clearError,
    required TResult orElse(),
  }) {
    if (unbanUser != null) {
      return unbanUser(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUsersEvent value) getUsers,
    required TResult Function(CreateUserEvent value) createUser,
    required TResult Function(UpdateUserEvent value) updateUser,
    required TResult Function(DeleteUserEvent value) deleteUser,
    required TResult Function(UpdateUserStatusEvent value) updateUserStatus,
    required TResult Function(BanUserEvent value) banUser,
    required TResult Function(UnbanUserEvent value) unbanUser,
    required TResult Function(ActivateUserEvent value) activateUser,
    required TResult Function(DeactivateUserEvent value) deactivateUser,
    required TResult Function(ClearUserErrorEvent value) clearError,
  }) {
    return unbanUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUsersEvent value)? getUsers,
    TResult? Function(CreateUserEvent value)? createUser,
    TResult? Function(UpdateUserEvent value)? updateUser,
    TResult? Function(DeleteUserEvent value)? deleteUser,
    TResult? Function(UpdateUserStatusEvent value)? updateUserStatus,
    TResult? Function(BanUserEvent value)? banUser,
    TResult? Function(UnbanUserEvent value)? unbanUser,
    TResult? Function(ActivateUserEvent value)? activateUser,
    TResult? Function(DeactivateUserEvent value)? deactivateUser,
    TResult? Function(ClearUserErrorEvent value)? clearError,
  }) {
    return unbanUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUsersEvent value)? getUsers,
    TResult Function(CreateUserEvent value)? createUser,
    TResult Function(UpdateUserEvent value)? updateUser,
    TResult Function(DeleteUserEvent value)? deleteUser,
    TResult Function(UpdateUserStatusEvent value)? updateUserStatus,
    TResult Function(BanUserEvent value)? banUser,
    TResult Function(UnbanUserEvent value)? unbanUser,
    TResult Function(ActivateUserEvent value)? activateUser,
    TResult Function(DeactivateUserEvent value)? deactivateUser,
    TResult Function(ClearUserErrorEvent value)? clearError,
    required TResult orElse(),
  }) {
    if (unbanUser != null) {
      return unbanUser(this);
    }
    return orElse();
  }
}

abstract class UnbanUserEvent implements UserEvent {
  const factory UnbanUserEvent(final int userId) = _$UnbanUserEventImpl;

  int get userId;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnbanUserEventImplCopyWith<_$UnbanUserEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ActivateUserEventImplCopyWith<$Res> {
  factory _$$ActivateUserEventImplCopyWith(
    _$ActivateUserEventImpl value,
    $Res Function(_$ActivateUserEventImpl) then,
  ) = __$$ActivateUserEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int userId});
}

/// @nodoc
class __$$ActivateUserEventImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$ActivateUserEventImpl>
    implements _$$ActivateUserEventImplCopyWith<$Res> {
  __$$ActivateUserEventImplCopyWithImpl(
    _$ActivateUserEventImpl _value,
    $Res Function(_$ActivateUserEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? userId = null}) {
    return _then(
      _$ActivateUserEventImpl(
        null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$ActivateUserEventImpl implements ActivateUserEvent {
  const _$ActivateUserEventImpl(this.userId);

  @override
  final int userId;

  @override
  String toString() {
    return 'UserEvent.activateUser(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivateUserEventImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ActivateUserEventImplCopyWith<_$ActivateUserEventImpl> get copyWith =>
      __$$ActivateUserEventImplCopyWithImpl<_$ActivateUserEventImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      String? search,
      String? status,
      int page,
      int limit,
    )
    getUsers,
    required TResult Function(
      String firstname,
      String email,
      String? lastname,
      String? phone,
      String? role,
    )
    createUser,
    required TResult Function(
      int userId,
      String? firstname,
      String? lastname,
      String? email,
      String? phone,
      String? role,
    )
    updateUser,
    required TResult Function(int userId) deleteUser,
    required TResult Function(int userId, String status) updateUserStatus,
    required TResult Function(int userId, String reason, String banType)
    banUser,
    required TResult Function(int userId) unbanUser,
    required TResult Function(int userId) activateUser,
    required TResult Function(int userId, String reason) deactivateUser,
    required TResult Function() clearError,
  }) {
    return activateUser(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? search, String? status, int page, int limit)?
    getUsers,
    TResult? Function(
      String firstname,
      String email,
      String? lastname,
      String? phone,
      String? role,
    )?
    createUser,
    TResult? Function(
      int userId,
      String? firstname,
      String? lastname,
      String? email,
      String? phone,
      String? role,
    )?
    updateUser,
    TResult? Function(int userId)? deleteUser,
    TResult? Function(int userId, String status)? updateUserStatus,
    TResult? Function(int userId, String reason, String banType)? banUser,
    TResult? Function(int userId)? unbanUser,
    TResult? Function(int userId)? activateUser,
    TResult? Function(int userId, String reason)? deactivateUser,
    TResult? Function()? clearError,
  }) {
    return activateUser?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? search, String? status, int page, int limit)?
    getUsers,
    TResult Function(
      String firstname,
      String email,
      String? lastname,
      String? phone,
      String? role,
    )?
    createUser,
    TResult Function(
      int userId,
      String? firstname,
      String? lastname,
      String? email,
      String? phone,
      String? role,
    )?
    updateUser,
    TResult Function(int userId)? deleteUser,
    TResult Function(int userId, String status)? updateUserStatus,
    TResult Function(int userId, String reason, String banType)? banUser,
    TResult Function(int userId)? unbanUser,
    TResult Function(int userId)? activateUser,
    TResult Function(int userId, String reason)? deactivateUser,
    TResult Function()? clearError,
    required TResult orElse(),
  }) {
    if (activateUser != null) {
      return activateUser(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUsersEvent value) getUsers,
    required TResult Function(CreateUserEvent value) createUser,
    required TResult Function(UpdateUserEvent value) updateUser,
    required TResult Function(DeleteUserEvent value) deleteUser,
    required TResult Function(UpdateUserStatusEvent value) updateUserStatus,
    required TResult Function(BanUserEvent value) banUser,
    required TResult Function(UnbanUserEvent value) unbanUser,
    required TResult Function(ActivateUserEvent value) activateUser,
    required TResult Function(DeactivateUserEvent value) deactivateUser,
    required TResult Function(ClearUserErrorEvent value) clearError,
  }) {
    return activateUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUsersEvent value)? getUsers,
    TResult? Function(CreateUserEvent value)? createUser,
    TResult? Function(UpdateUserEvent value)? updateUser,
    TResult? Function(DeleteUserEvent value)? deleteUser,
    TResult? Function(UpdateUserStatusEvent value)? updateUserStatus,
    TResult? Function(BanUserEvent value)? banUser,
    TResult? Function(UnbanUserEvent value)? unbanUser,
    TResult? Function(ActivateUserEvent value)? activateUser,
    TResult? Function(DeactivateUserEvent value)? deactivateUser,
    TResult? Function(ClearUserErrorEvent value)? clearError,
  }) {
    return activateUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUsersEvent value)? getUsers,
    TResult Function(CreateUserEvent value)? createUser,
    TResult Function(UpdateUserEvent value)? updateUser,
    TResult Function(DeleteUserEvent value)? deleteUser,
    TResult Function(UpdateUserStatusEvent value)? updateUserStatus,
    TResult Function(BanUserEvent value)? banUser,
    TResult Function(UnbanUserEvent value)? unbanUser,
    TResult Function(ActivateUserEvent value)? activateUser,
    TResult Function(DeactivateUserEvent value)? deactivateUser,
    TResult Function(ClearUserErrorEvent value)? clearError,
    required TResult orElse(),
  }) {
    if (activateUser != null) {
      return activateUser(this);
    }
    return orElse();
  }
}

abstract class ActivateUserEvent implements UserEvent {
  const factory ActivateUserEvent(final int userId) = _$ActivateUserEventImpl;

  int get userId;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ActivateUserEventImplCopyWith<_$ActivateUserEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeactivateUserEventImplCopyWith<$Res> {
  factory _$$DeactivateUserEventImplCopyWith(
    _$DeactivateUserEventImpl value,
    $Res Function(_$DeactivateUserEventImpl) then,
  ) = __$$DeactivateUserEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int userId, String reason});
}

/// @nodoc
class __$$DeactivateUserEventImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$DeactivateUserEventImpl>
    implements _$$DeactivateUserEventImplCopyWith<$Res> {
  __$$DeactivateUserEventImplCopyWithImpl(
    _$DeactivateUserEventImpl _value,
    $Res Function(_$DeactivateUserEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? userId = null, Object? reason = null}) {
    return _then(
      _$DeactivateUserEventImpl(
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as int,
        reason: null == reason
            ? _value.reason
            : reason // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$DeactivateUserEventImpl implements DeactivateUserEvent {
  const _$DeactivateUserEventImpl({required this.userId, required this.reason});

  @override
  final int userId;
  @override
  final String reason;

  @override
  String toString() {
    return 'UserEvent.deactivateUser(userId: $userId, reason: $reason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeactivateUserEventImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, reason);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeactivateUserEventImplCopyWith<_$DeactivateUserEventImpl> get copyWith =>
      __$$DeactivateUserEventImplCopyWithImpl<_$DeactivateUserEventImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      String? search,
      String? status,
      int page,
      int limit,
    )
    getUsers,
    required TResult Function(
      String firstname,
      String email,
      String? lastname,
      String? phone,
      String? role,
    )
    createUser,
    required TResult Function(
      int userId,
      String? firstname,
      String? lastname,
      String? email,
      String? phone,
      String? role,
    )
    updateUser,
    required TResult Function(int userId) deleteUser,
    required TResult Function(int userId, String status) updateUserStatus,
    required TResult Function(int userId, String reason, String banType)
    banUser,
    required TResult Function(int userId) unbanUser,
    required TResult Function(int userId) activateUser,
    required TResult Function(int userId, String reason) deactivateUser,
    required TResult Function() clearError,
  }) {
    return deactivateUser(userId, reason);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? search, String? status, int page, int limit)?
    getUsers,
    TResult? Function(
      String firstname,
      String email,
      String? lastname,
      String? phone,
      String? role,
    )?
    createUser,
    TResult? Function(
      int userId,
      String? firstname,
      String? lastname,
      String? email,
      String? phone,
      String? role,
    )?
    updateUser,
    TResult? Function(int userId)? deleteUser,
    TResult? Function(int userId, String status)? updateUserStatus,
    TResult? Function(int userId, String reason, String banType)? banUser,
    TResult? Function(int userId)? unbanUser,
    TResult? Function(int userId)? activateUser,
    TResult? Function(int userId, String reason)? deactivateUser,
    TResult? Function()? clearError,
  }) {
    return deactivateUser?.call(userId, reason);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? search, String? status, int page, int limit)?
    getUsers,
    TResult Function(
      String firstname,
      String email,
      String? lastname,
      String? phone,
      String? role,
    )?
    createUser,
    TResult Function(
      int userId,
      String? firstname,
      String? lastname,
      String? email,
      String? phone,
      String? role,
    )?
    updateUser,
    TResult Function(int userId)? deleteUser,
    TResult Function(int userId, String status)? updateUserStatus,
    TResult Function(int userId, String reason, String banType)? banUser,
    TResult Function(int userId)? unbanUser,
    TResult Function(int userId)? activateUser,
    TResult Function(int userId, String reason)? deactivateUser,
    TResult Function()? clearError,
    required TResult orElse(),
  }) {
    if (deactivateUser != null) {
      return deactivateUser(userId, reason);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUsersEvent value) getUsers,
    required TResult Function(CreateUserEvent value) createUser,
    required TResult Function(UpdateUserEvent value) updateUser,
    required TResult Function(DeleteUserEvent value) deleteUser,
    required TResult Function(UpdateUserStatusEvent value) updateUserStatus,
    required TResult Function(BanUserEvent value) banUser,
    required TResult Function(UnbanUserEvent value) unbanUser,
    required TResult Function(ActivateUserEvent value) activateUser,
    required TResult Function(DeactivateUserEvent value) deactivateUser,
    required TResult Function(ClearUserErrorEvent value) clearError,
  }) {
    return deactivateUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUsersEvent value)? getUsers,
    TResult? Function(CreateUserEvent value)? createUser,
    TResult? Function(UpdateUserEvent value)? updateUser,
    TResult? Function(DeleteUserEvent value)? deleteUser,
    TResult? Function(UpdateUserStatusEvent value)? updateUserStatus,
    TResult? Function(BanUserEvent value)? banUser,
    TResult? Function(UnbanUserEvent value)? unbanUser,
    TResult? Function(ActivateUserEvent value)? activateUser,
    TResult? Function(DeactivateUserEvent value)? deactivateUser,
    TResult? Function(ClearUserErrorEvent value)? clearError,
  }) {
    return deactivateUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUsersEvent value)? getUsers,
    TResult Function(CreateUserEvent value)? createUser,
    TResult Function(UpdateUserEvent value)? updateUser,
    TResult Function(DeleteUserEvent value)? deleteUser,
    TResult Function(UpdateUserStatusEvent value)? updateUserStatus,
    TResult Function(BanUserEvent value)? banUser,
    TResult Function(UnbanUserEvent value)? unbanUser,
    TResult Function(ActivateUserEvent value)? activateUser,
    TResult Function(DeactivateUserEvent value)? deactivateUser,
    TResult Function(ClearUserErrorEvent value)? clearError,
    required TResult orElse(),
  }) {
    if (deactivateUser != null) {
      return deactivateUser(this);
    }
    return orElse();
  }
}

abstract class DeactivateUserEvent implements UserEvent {
  const factory DeactivateUserEvent({
    required final int userId,
    required final String reason,
  }) = _$DeactivateUserEventImpl;

  int get userId;
  String get reason;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeactivateUserEventImplCopyWith<_$DeactivateUserEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearUserErrorEventImplCopyWith<$Res> {
  factory _$$ClearUserErrorEventImplCopyWith(
    _$ClearUserErrorEventImpl value,
    $Res Function(_$ClearUserErrorEventImpl) then,
  ) = __$$ClearUserErrorEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearUserErrorEventImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$ClearUserErrorEventImpl>
    implements _$$ClearUserErrorEventImplCopyWith<$Res> {
  __$$ClearUserErrorEventImplCopyWithImpl(
    _$ClearUserErrorEventImpl _value,
    $Res Function(_$ClearUserErrorEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearUserErrorEventImpl implements ClearUserErrorEvent {
  const _$ClearUserErrorEventImpl();

  @override
  String toString() {
    return 'UserEvent.clearError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearUserErrorEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      String? search,
      String? status,
      int page,
      int limit,
    )
    getUsers,
    required TResult Function(
      String firstname,
      String email,
      String? lastname,
      String? phone,
      String? role,
    )
    createUser,
    required TResult Function(
      int userId,
      String? firstname,
      String? lastname,
      String? email,
      String? phone,
      String? role,
    )
    updateUser,
    required TResult Function(int userId) deleteUser,
    required TResult Function(int userId, String status) updateUserStatus,
    required TResult Function(int userId, String reason, String banType)
    banUser,
    required TResult Function(int userId) unbanUser,
    required TResult Function(int userId) activateUser,
    required TResult Function(int userId, String reason) deactivateUser,
    required TResult Function() clearError,
  }) {
    return clearError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? search, String? status, int page, int limit)?
    getUsers,
    TResult? Function(
      String firstname,
      String email,
      String? lastname,
      String? phone,
      String? role,
    )?
    createUser,
    TResult? Function(
      int userId,
      String? firstname,
      String? lastname,
      String? email,
      String? phone,
      String? role,
    )?
    updateUser,
    TResult? Function(int userId)? deleteUser,
    TResult? Function(int userId, String status)? updateUserStatus,
    TResult? Function(int userId, String reason, String banType)? banUser,
    TResult? Function(int userId)? unbanUser,
    TResult? Function(int userId)? activateUser,
    TResult? Function(int userId, String reason)? deactivateUser,
    TResult? Function()? clearError,
  }) {
    return clearError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? search, String? status, int page, int limit)?
    getUsers,
    TResult Function(
      String firstname,
      String email,
      String? lastname,
      String? phone,
      String? role,
    )?
    createUser,
    TResult Function(
      int userId,
      String? firstname,
      String? lastname,
      String? email,
      String? phone,
      String? role,
    )?
    updateUser,
    TResult Function(int userId)? deleteUser,
    TResult Function(int userId, String status)? updateUserStatus,
    TResult Function(int userId, String reason, String banType)? banUser,
    TResult Function(int userId)? unbanUser,
    TResult Function(int userId)? activateUser,
    TResult Function(int userId, String reason)? deactivateUser,
    TResult Function()? clearError,
    required TResult orElse(),
  }) {
    if (clearError != null) {
      return clearError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUsersEvent value) getUsers,
    required TResult Function(CreateUserEvent value) createUser,
    required TResult Function(UpdateUserEvent value) updateUser,
    required TResult Function(DeleteUserEvent value) deleteUser,
    required TResult Function(UpdateUserStatusEvent value) updateUserStatus,
    required TResult Function(BanUserEvent value) banUser,
    required TResult Function(UnbanUserEvent value) unbanUser,
    required TResult Function(ActivateUserEvent value) activateUser,
    required TResult Function(DeactivateUserEvent value) deactivateUser,
    required TResult Function(ClearUserErrorEvent value) clearError,
  }) {
    return clearError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUsersEvent value)? getUsers,
    TResult? Function(CreateUserEvent value)? createUser,
    TResult? Function(UpdateUserEvent value)? updateUser,
    TResult? Function(DeleteUserEvent value)? deleteUser,
    TResult? Function(UpdateUserStatusEvent value)? updateUserStatus,
    TResult? Function(BanUserEvent value)? banUser,
    TResult? Function(UnbanUserEvent value)? unbanUser,
    TResult? Function(ActivateUserEvent value)? activateUser,
    TResult? Function(DeactivateUserEvent value)? deactivateUser,
    TResult? Function(ClearUserErrorEvent value)? clearError,
  }) {
    return clearError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUsersEvent value)? getUsers,
    TResult Function(CreateUserEvent value)? createUser,
    TResult Function(UpdateUserEvent value)? updateUser,
    TResult Function(DeleteUserEvent value)? deleteUser,
    TResult Function(UpdateUserStatusEvent value)? updateUserStatus,
    TResult Function(BanUserEvent value)? banUser,
    TResult Function(UnbanUserEvent value)? unbanUser,
    TResult Function(ActivateUserEvent value)? activateUser,
    TResult Function(DeactivateUserEvent value)? deactivateUser,
    TResult Function(ClearUserErrorEvent value)? clearError,
    required TResult orElse(),
  }) {
    if (clearError != null) {
      return clearError(this);
    }
    return orElse();
  }
}

abstract class ClearUserErrorEvent implements UserEvent {
  const factory ClearUserErrorEvent() = _$ClearUserErrorEventImpl;
}
