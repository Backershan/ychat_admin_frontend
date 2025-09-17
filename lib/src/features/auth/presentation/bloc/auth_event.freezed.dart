// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) login,
    required TResult Function(
      String email,
      String password,
      String confirmPassword,
      String firstname,
      String lastname,
      bool role,
    )
    register,
    required TResult Function(
      String? firstName,
      String? lastName,
      String email,
      String password,
    )
    registerSuperAdmin,
    required TResult Function() logout,
    required TResult Function() checkAuthStatus,
    required TResult Function() refreshToken,
    required TResult Function(String currentPassword, String newPassword)
    changePassword,
    required TResult Function(
      String? firstName,
      String? lastName,
      String? phoneNumber,
      String? department,
      String? position,
    )
    updateProfile,
    required TResult Function() clearError,
    required TResult Function() initializeAuth,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? login,
    TResult? Function(
      String email,
      String password,
      String confirmPassword,
      String firstname,
      String lastname,
      bool role,
    )?
    register,
    TResult? Function(
      String? firstName,
      String? lastName,
      String email,
      String password,
    )?
    registerSuperAdmin,
    TResult? Function()? logout,
    TResult? Function()? checkAuthStatus,
    TResult? Function()? refreshToken,
    TResult? Function(String currentPassword, String newPassword)?
    changePassword,
    TResult? Function(
      String? firstName,
      String? lastName,
      String? phoneNumber,
      String? department,
      String? position,
    )?
    updateProfile,
    TResult? Function()? clearError,
    TResult? Function()? initializeAuth,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? login,
    TResult Function(
      String email,
      String password,
      String confirmPassword,
      String firstname,
      String lastname,
      bool role,
    )?
    register,
    TResult Function(
      String? firstName,
      String? lastName,
      String email,
      String password,
    )?
    registerSuperAdmin,
    TResult Function()? logout,
    TResult Function()? checkAuthStatus,
    TResult Function()? refreshToken,
    TResult Function(String currentPassword, String newPassword)?
    changePassword,
    TResult Function(
      String? firstName,
      String? lastName,
      String? phoneNumber,
      String? department,
      String? position,
    )?
    updateProfile,
    TResult Function()? clearError,
    TResult Function()? initializeAuth,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginEvent value) login,
    required TResult Function(RegisterEvent value) register,
    required TResult Function(RegisterSuperAdminEvent value) registerSuperAdmin,
    required TResult Function(LogoutEvent value) logout,
    required TResult Function(CheckAuthStatusEvent value) checkAuthStatus,
    required TResult Function(RefreshTokenEvent value) refreshToken,
    required TResult Function(ChangePasswordEvent value) changePassword,
    required TResult Function(UpdateProfileEvent value) updateProfile,
    required TResult Function(ClearErrorEvent value) clearError,
    required TResult Function(InitializeAuthEvent value) initializeAuth,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginEvent value)? login,
    TResult? Function(RegisterEvent value)? register,
    TResult? Function(RegisterSuperAdminEvent value)? registerSuperAdmin,
    TResult? Function(LogoutEvent value)? logout,
    TResult? Function(CheckAuthStatusEvent value)? checkAuthStatus,
    TResult? Function(RefreshTokenEvent value)? refreshToken,
    TResult? Function(ChangePasswordEvent value)? changePassword,
    TResult? Function(UpdateProfileEvent value)? updateProfile,
    TResult? Function(ClearErrorEvent value)? clearError,
    TResult? Function(InitializeAuthEvent value)? initializeAuth,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginEvent value)? login,
    TResult Function(RegisterEvent value)? register,
    TResult Function(RegisterSuperAdminEvent value)? registerSuperAdmin,
    TResult Function(LogoutEvent value)? logout,
    TResult Function(CheckAuthStatusEvent value)? checkAuthStatus,
    TResult Function(RefreshTokenEvent value)? refreshToken,
    TResult Function(ChangePasswordEvent value)? changePassword,
    TResult Function(UpdateProfileEvent value)? updateProfile,
    TResult Function(ClearErrorEvent value)? clearError,
    TResult Function(InitializeAuthEvent value)? initializeAuth,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoginEventImplCopyWith<$Res> {
  factory _$$LoginEventImplCopyWith(
    _$LoginEventImpl value,
    $Res Function(_$LoginEventImpl) then,
  ) = __$$LoginEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$LoginEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoginEventImpl>
    implements _$$LoginEventImplCopyWith<$Res> {
  __$$LoginEventImplCopyWithImpl(
    _$LoginEventImpl _value,
    $Res Function(_$LoginEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? email = null, Object? password = null}) {
    return _then(
      _$LoginEventImpl(
        email: null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
        password: null == password
            ? _value.password
            : password // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$LoginEventImpl implements LoginEvent {
  const _$LoginEventImpl({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.login(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginEventImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginEventImplCopyWith<_$LoginEventImpl> get copyWith =>
      __$$LoginEventImplCopyWithImpl<_$LoginEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) login,
    required TResult Function(
      String email,
      String password,
      String confirmPassword,
      String firstname,
      String lastname,
      bool role,
    )
    register,
    required TResult Function(
      String? firstName,
      String? lastName,
      String email,
      String password,
    )
    registerSuperAdmin,
    required TResult Function() logout,
    required TResult Function() checkAuthStatus,
    required TResult Function() refreshToken,
    required TResult Function(String currentPassword, String newPassword)
    changePassword,
    required TResult Function(
      String? firstName,
      String? lastName,
      String? phoneNumber,
      String? department,
      String? position,
    )
    updateProfile,
    required TResult Function() clearError,
    required TResult Function() initializeAuth,
  }) {
    return login(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? login,
    TResult? Function(
      String email,
      String password,
      String confirmPassword,
      String firstname,
      String lastname,
      bool role,
    )?
    register,
    TResult? Function(
      String? firstName,
      String? lastName,
      String email,
      String password,
    )?
    registerSuperAdmin,
    TResult? Function()? logout,
    TResult? Function()? checkAuthStatus,
    TResult? Function()? refreshToken,
    TResult? Function(String currentPassword, String newPassword)?
    changePassword,
    TResult? Function(
      String? firstName,
      String? lastName,
      String? phoneNumber,
      String? department,
      String? position,
    )?
    updateProfile,
    TResult? Function()? clearError,
    TResult? Function()? initializeAuth,
  }) {
    return login?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? login,
    TResult Function(
      String email,
      String password,
      String confirmPassword,
      String firstname,
      String lastname,
      bool role,
    )?
    register,
    TResult Function(
      String? firstName,
      String? lastName,
      String email,
      String password,
    )?
    registerSuperAdmin,
    TResult Function()? logout,
    TResult Function()? checkAuthStatus,
    TResult Function()? refreshToken,
    TResult Function(String currentPassword, String newPassword)?
    changePassword,
    TResult Function(
      String? firstName,
      String? lastName,
      String? phoneNumber,
      String? department,
      String? position,
    )?
    updateProfile,
    TResult Function()? clearError,
    TResult Function()? initializeAuth,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginEvent value) login,
    required TResult Function(RegisterEvent value) register,
    required TResult Function(RegisterSuperAdminEvent value) registerSuperAdmin,
    required TResult Function(LogoutEvent value) logout,
    required TResult Function(CheckAuthStatusEvent value) checkAuthStatus,
    required TResult Function(RefreshTokenEvent value) refreshToken,
    required TResult Function(ChangePasswordEvent value) changePassword,
    required TResult Function(UpdateProfileEvent value) updateProfile,
    required TResult Function(ClearErrorEvent value) clearError,
    required TResult Function(InitializeAuthEvent value) initializeAuth,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginEvent value)? login,
    TResult? Function(RegisterEvent value)? register,
    TResult? Function(RegisterSuperAdminEvent value)? registerSuperAdmin,
    TResult? Function(LogoutEvent value)? logout,
    TResult? Function(CheckAuthStatusEvent value)? checkAuthStatus,
    TResult? Function(RefreshTokenEvent value)? refreshToken,
    TResult? Function(ChangePasswordEvent value)? changePassword,
    TResult? Function(UpdateProfileEvent value)? updateProfile,
    TResult? Function(ClearErrorEvent value)? clearError,
    TResult? Function(InitializeAuthEvent value)? initializeAuth,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginEvent value)? login,
    TResult Function(RegisterEvent value)? register,
    TResult Function(RegisterSuperAdminEvent value)? registerSuperAdmin,
    TResult Function(LogoutEvent value)? logout,
    TResult Function(CheckAuthStatusEvent value)? checkAuthStatus,
    TResult Function(RefreshTokenEvent value)? refreshToken,
    TResult Function(ChangePasswordEvent value)? changePassword,
    TResult Function(UpdateProfileEvent value)? updateProfile,
    TResult Function(ClearErrorEvent value)? clearError,
    TResult Function(InitializeAuthEvent value)? initializeAuth,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class LoginEvent implements AuthEvent {
  const factory LoginEvent({
    required final String email,
    required final String password,
  }) = _$LoginEventImpl;

  String get email;
  String get password;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginEventImplCopyWith<_$LoginEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterEventImplCopyWith<$Res> {
  factory _$$RegisterEventImplCopyWith(
    _$RegisterEventImpl value,
    $Res Function(_$RegisterEventImpl) then,
  ) = __$$RegisterEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    String email,
    String password,
    String confirmPassword,
    String firstname,
    String lastname,
    bool role,
  });
}

/// @nodoc
class __$$RegisterEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$RegisterEventImpl>
    implements _$$RegisterEventImplCopyWith<$Res> {
  __$$RegisterEventImplCopyWithImpl(
    _$RegisterEventImpl _value,
    $Res Function(_$RegisterEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? confirmPassword = null,
    Object? firstname = null,
    Object? lastname = null,
    Object? role = null,
  }) {
    return _then(
      _$RegisterEventImpl(
        email: null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
        password: null == password
            ? _value.password
            : password // ignore: cast_nullable_to_non_nullable
                  as String,
        confirmPassword: null == confirmPassword
            ? _value.confirmPassword
            : confirmPassword // ignore: cast_nullable_to_non_nullable
                  as String,
        firstname: null == firstname
            ? _value.firstname
            : firstname // ignore: cast_nullable_to_non_nullable
                  as String,
        lastname: null == lastname
            ? _value.lastname
            : lastname // ignore: cast_nullable_to_non_nullable
                  as String,
        role: null == role
            ? _value.role
            : role // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$RegisterEventImpl implements RegisterEvent {
  const _$RegisterEventImpl({
    required this.email,
    required this.password,
    required this.confirmPassword,
    required this.firstname,
    required this.lastname,
    this.role = false,
  });

  @override
  final String email;
  @override
  final String password;
  @override
  final String confirmPassword;
  @override
  final String firstname;
  @override
  final String lastname;
  @override
  @JsonKey()
  final bool role;

  @override
  String toString() {
    return 'AuthEvent.register(email: $email, password: $password, confirmPassword: $confirmPassword, firstname: $firstname, lastname: $lastname, role: $role)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterEventImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(other.firstname, firstname) ||
                other.firstname == firstname) &&
            (identical(other.lastname, lastname) ||
                other.lastname == lastname) &&
            (identical(other.role, role) || other.role == role));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    email,
    password,
    confirmPassword,
    firstname,
    lastname,
    role,
  );

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterEventImplCopyWith<_$RegisterEventImpl> get copyWith =>
      __$$RegisterEventImplCopyWithImpl<_$RegisterEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) login,
    required TResult Function(
      String email,
      String password,
      String confirmPassword,
      String firstname,
      String lastname,
      bool role,
    )
    register,
    required TResult Function(
      String? firstName,
      String? lastName,
      String email,
      String password,
    )
    registerSuperAdmin,
    required TResult Function() logout,
    required TResult Function() checkAuthStatus,
    required TResult Function() refreshToken,
    required TResult Function(String currentPassword, String newPassword)
    changePassword,
    required TResult Function(
      String? firstName,
      String? lastName,
      String? phoneNumber,
      String? department,
      String? position,
    )
    updateProfile,
    required TResult Function() clearError,
    required TResult Function() initializeAuth,
  }) {
    return register(
      email,
      password,
      confirmPassword,
      firstname,
      lastname,
      role,
    );
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? login,
    TResult? Function(
      String email,
      String password,
      String confirmPassword,
      String firstname,
      String lastname,
      bool role,
    )?
    register,
    TResult? Function(
      String? firstName,
      String? lastName,
      String email,
      String password,
    )?
    registerSuperAdmin,
    TResult? Function()? logout,
    TResult? Function()? checkAuthStatus,
    TResult? Function()? refreshToken,
    TResult? Function(String currentPassword, String newPassword)?
    changePassword,
    TResult? Function(
      String? firstName,
      String? lastName,
      String? phoneNumber,
      String? department,
      String? position,
    )?
    updateProfile,
    TResult? Function()? clearError,
    TResult? Function()? initializeAuth,
  }) {
    return register?.call(
      email,
      password,
      confirmPassword,
      firstname,
      lastname,
      role,
    );
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? login,
    TResult Function(
      String email,
      String password,
      String confirmPassword,
      String firstname,
      String lastname,
      bool role,
    )?
    register,
    TResult Function(
      String? firstName,
      String? lastName,
      String email,
      String password,
    )?
    registerSuperAdmin,
    TResult Function()? logout,
    TResult Function()? checkAuthStatus,
    TResult Function()? refreshToken,
    TResult Function(String currentPassword, String newPassword)?
    changePassword,
    TResult Function(
      String? firstName,
      String? lastName,
      String? phoneNumber,
      String? department,
      String? position,
    )?
    updateProfile,
    TResult Function()? clearError,
    TResult Function()? initializeAuth,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(
        email,
        password,
        confirmPassword,
        firstname,
        lastname,
        role,
      );
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginEvent value) login,
    required TResult Function(RegisterEvent value) register,
    required TResult Function(RegisterSuperAdminEvent value) registerSuperAdmin,
    required TResult Function(LogoutEvent value) logout,
    required TResult Function(CheckAuthStatusEvent value) checkAuthStatus,
    required TResult Function(RefreshTokenEvent value) refreshToken,
    required TResult Function(ChangePasswordEvent value) changePassword,
    required TResult Function(UpdateProfileEvent value) updateProfile,
    required TResult Function(ClearErrorEvent value) clearError,
    required TResult Function(InitializeAuthEvent value) initializeAuth,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginEvent value)? login,
    TResult? Function(RegisterEvent value)? register,
    TResult? Function(RegisterSuperAdminEvent value)? registerSuperAdmin,
    TResult? Function(LogoutEvent value)? logout,
    TResult? Function(CheckAuthStatusEvent value)? checkAuthStatus,
    TResult? Function(RefreshTokenEvent value)? refreshToken,
    TResult? Function(ChangePasswordEvent value)? changePassword,
    TResult? Function(UpdateProfileEvent value)? updateProfile,
    TResult? Function(ClearErrorEvent value)? clearError,
    TResult? Function(InitializeAuthEvent value)? initializeAuth,
  }) {
    return register?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginEvent value)? login,
    TResult Function(RegisterEvent value)? register,
    TResult Function(RegisterSuperAdminEvent value)? registerSuperAdmin,
    TResult Function(LogoutEvent value)? logout,
    TResult Function(CheckAuthStatusEvent value)? checkAuthStatus,
    TResult Function(RefreshTokenEvent value)? refreshToken,
    TResult Function(ChangePasswordEvent value)? changePassword,
    TResult Function(UpdateProfileEvent value)? updateProfile,
    TResult Function(ClearErrorEvent value)? clearError,
    TResult Function(InitializeAuthEvent value)? initializeAuth,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class RegisterEvent implements AuthEvent {
  const factory RegisterEvent({
    required final String email,
    required final String password,
    required final String confirmPassword,
    required final String firstname,
    required final String lastname,
    final bool role,
  }) = _$RegisterEventImpl;

  String get email;
  String get password;
  String get confirmPassword;
  String get firstname;
  String get lastname;
  bool get role;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterEventImplCopyWith<_$RegisterEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterSuperAdminEventImplCopyWith<$Res> {
  factory _$$RegisterSuperAdminEventImplCopyWith(
    _$RegisterSuperAdminEventImpl value,
    $Res Function(_$RegisterSuperAdminEventImpl) then,
  ) = __$$RegisterSuperAdminEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    String? firstName,
    String? lastName,
    String email,
    String password,
  });
}

/// @nodoc
class __$$RegisterSuperAdminEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$RegisterSuperAdminEventImpl>
    implements _$$RegisterSuperAdminEventImplCopyWith<$Res> {
  __$$RegisterSuperAdminEventImplCopyWithImpl(
    _$RegisterSuperAdminEventImpl _value,
    $Res Function(_$RegisterSuperAdminEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = null,
    Object? password = null,
  }) {
    return _then(
      _$RegisterSuperAdminEventImpl(
        firstName: freezed == firstName
            ? _value.firstName
            : firstName // ignore: cast_nullable_to_non_nullable
                  as String?,
        lastName: freezed == lastName
            ? _value.lastName
            : lastName // ignore: cast_nullable_to_non_nullable
                  as String?,
        email: null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
        password: null == password
            ? _value.password
            : password // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$RegisterSuperAdminEventImpl implements RegisterSuperAdminEvent {
  const _$RegisterSuperAdminEventImpl({
    this.firstName,
    this.lastName,
    required this.email,
    required this.password,
  });

  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.registerSuperAdmin(firstName: $firstName, lastName: $lastName, email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterSuperAdminEventImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, firstName, lastName, email, password);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterSuperAdminEventImplCopyWith<_$RegisterSuperAdminEventImpl>
  get copyWith =>
      __$$RegisterSuperAdminEventImplCopyWithImpl<
        _$RegisterSuperAdminEventImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) login,
    required TResult Function(
      String email,
      String password,
      String confirmPassword,
      String firstname,
      String lastname,
      bool role,
    )
    register,
    required TResult Function(
      String? firstName,
      String? lastName,
      String email,
      String password,
    )
    registerSuperAdmin,
    required TResult Function() logout,
    required TResult Function() checkAuthStatus,
    required TResult Function() refreshToken,
    required TResult Function(String currentPassword, String newPassword)
    changePassword,
    required TResult Function(
      String? firstName,
      String? lastName,
      String? phoneNumber,
      String? department,
      String? position,
    )
    updateProfile,
    required TResult Function() clearError,
    required TResult Function() initializeAuth,
  }) {
    return registerSuperAdmin(firstName, lastName, email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? login,
    TResult? Function(
      String email,
      String password,
      String confirmPassword,
      String firstname,
      String lastname,
      bool role,
    )?
    register,
    TResult? Function(
      String? firstName,
      String? lastName,
      String email,
      String password,
    )?
    registerSuperAdmin,
    TResult? Function()? logout,
    TResult? Function()? checkAuthStatus,
    TResult? Function()? refreshToken,
    TResult? Function(String currentPassword, String newPassword)?
    changePassword,
    TResult? Function(
      String? firstName,
      String? lastName,
      String? phoneNumber,
      String? department,
      String? position,
    )?
    updateProfile,
    TResult? Function()? clearError,
    TResult? Function()? initializeAuth,
  }) {
    return registerSuperAdmin?.call(firstName, lastName, email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? login,
    TResult Function(
      String email,
      String password,
      String confirmPassword,
      String firstname,
      String lastname,
      bool role,
    )?
    register,
    TResult Function(
      String? firstName,
      String? lastName,
      String email,
      String password,
    )?
    registerSuperAdmin,
    TResult Function()? logout,
    TResult Function()? checkAuthStatus,
    TResult Function()? refreshToken,
    TResult Function(String currentPassword, String newPassword)?
    changePassword,
    TResult Function(
      String? firstName,
      String? lastName,
      String? phoneNumber,
      String? department,
      String? position,
    )?
    updateProfile,
    TResult Function()? clearError,
    TResult Function()? initializeAuth,
    required TResult orElse(),
  }) {
    if (registerSuperAdmin != null) {
      return registerSuperAdmin(firstName, lastName, email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginEvent value) login,
    required TResult Function(RegisterEvent value) register,
    required TResult Function(RegisterSuperAdminEvent value) registerSuperAdmin,
    required TResult Function(LogoutEvent value) logout,
    required TResult Function(CheckAuthStatusEvent value) checkAuthStatus,
    required TResult Function(RefreshTokenEvent value) refreshToken,
    required TResult Function(ChangePasswordEvent value) changePassword,
    required TResult Function(UpdateProfileEvent value) updateProfile,
    required TResult Function(ClearErrorEvent value) clearError,
    required TResult Function(InitializeAuthEvent value) initializeAuth,
  }) {
    return registerSuperAdmin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginEvent value)? login,
    TResult? Function(RegisterEvent value)? register,
    TResult? Function(RegisterSuperAdminEvent value)? registerSuperAdmin,
    TResult? Function(LogoutEvent value)? logout,
    TResult? Function(CheckAuthStatusEvent value)? checkAuthStatus,
    TResult? Function(RefreshTokenEvent value)? refreshToken,
    TResult? Function(ChangePasswordEvent value)? changePassword,
    TResult? Function(UpdateProfileEvent value)? updateProfile,
    TResult? Function(ClearErrorEvent value)? clearError,
    TResult? Function(InitializeAuthEvent value)? initializeAuth,
  }) {
    return registerSuperAdmin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginEvent value)? login,
    TResult Function(RegisterEvent value)? register,
    TResult Function(RegisterSuperAdminEvent value)? registerSuperAdmin,
    TResult Function(LogoutEvent value)? logout,
    TResult Function(CheckAuthStatusEvent value)? checkAuthStatus,
    TResult Function(RefreshTokenEvent value)? refreshToken,
    TResult Function(ChangePasswordEvent value)? changePassword,
    TResult Function(UpdateProfileEvent value)? updateProfile,
    TResult Function(ClearErrorEvent value)? clearError,
    TResult Function(InitializeAuthEvent value)? initializeAuth,
    required TResult orElse(),
  }) {
    if (registerSuperAdmin != null) {
      return registerSuperAdmin(this);
    }
    return orElse();
  }
}

abstract class RegisterSuperAdminEvent implements AuthEvent {
  const factory RegisterSuperAdminEvent({
    final String? firstName,
    final String? lastName,
    required final String email,
    required final String password,
  }) = _$RegisterSuperAdminEventImpl;

  String? get firstName;
  String? get lastName;
  String get email;
  String get password;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterSuperAdminEventImplCopyWith<_$RegisterSuperAdminEventImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogoutEventImplCopyWith<$Res> {
  factory _$$LogoutEventImplCopyWith(
    _$LogoutEventImpl value,
    $Res Function(_$LogoutEventImpl) then,
  ) = __$$LogoutEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LogoutEventImpl>
    implements _$$LogoutEventImplCopyWith<$Res> {
  __$$LogoutEventImplCopyWithImpl(
    _$LogoutEventImpl _value,
    $Res Function(_$LogoutEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LogoutEventImpl implements LogoutEvent {
  const _$LogoutEventImpl();

  @override
  String toString() {
    return 'AuthEvent.logout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) login,
    required TResult Function(
      String email,
      String password,
      String confirmPassword,
      String firstname,
      String lastname,
      bool role,
    )
    register,
    required TResult Function(
      String? firstName,
      String? lastName,
      String email,
      String password,
    )
    registerSuperAdmin,
    required TResult Function() logout,
    required TResult Function() checkAuthStatus,
    required TResult Function() refreshToken,
    required TResult Function(String currentPassword, String newPassword)
    changePassword,
    required TResult Function(
      String? firstName,
      String? lastName,
      String? phoneNumber,
      String? department,
      String? position,
    )
    updateProfile,
    required TResult Function() clearError,
    required TResult Function() initializeAuth,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? login,
    TResult? Function(
      String email,
      String password,
      String confirmPassword,
      String firstname,
      String lastname,
      bool role,
    )?
    register,
    TResult? Function(
      String? firstName,
      String? lastName,
      String email,
      String password,
    )?
    registerSuperAdmin,
    TResult? Function()? logout,
    TResult? Function()? checkAuthStatus,
    TResult? Function()? refreshToken,
    TResult? Function(String currentPassword, String newPassword)?
    changePassword,
    TResult? Function(
      String? firstName,
      String? lastName,
      String? phoneNumber,
      String? department,
      String? position,
    )?
    updateProfile,
    TResult? Function()? clearError,
    TResult? Function()? initializeAuth,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? login,
    TResult Function(
      String email,
      String password,
      String confirmPassword,
      String firstname,
      String lastname,
      bool role,
    )?
    register,
    TResult Function(
      String? firstName,
      String? lastName,
      String email,
      String password,
    )?
    registerSuperAdmin,
    TResult Function()? logout,
    TResult Function()? checkAuthStatus,
    TResult Function()? refreshToken,
    TResult Function(String currentPassword, String newPassword)?
    changePassword,
    TResult Function(
      String? firstName,
      String? lastName,
      String? phoneNumber,
      String? department,
      String? position,
    )?
    updateProfile,
    TResult Function()? clearError,
    TResult Function()? initializeAuth,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginEvent value) login,
    required TResult Function(RegisterEvent value) register,
    required TResult Function(RegisterSuperAdminEvent value) registerSuperAdmin,
    required TResult Function(LogoutEvent value) logout,
    required TResult Function(CheckAuthStatusEvent value) checkAuthStatus,
    required TResult Function(RefreshTokenEvent value) refreshToken,
    required TResult Function(ChangePasswordEvent value) changePassword,
    required TResult Function(UpdateProfileEvent value) updateProfile,
    required TResult Function(ClearErrorEvent value) clearError,
    required TResult Function(InitializeAuthEvent value) initializeAuth,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginEvent value)? login,
    TResult? Function(RegisterEvent value)? register,
    TResult? Function(RegisterSuperAdminEvent value)? registerSuperAdmin,
    TResult? Function(LogoutEvent value)? logout,
    TResult? Function(CheckAuthStatusEvent value)? checkAuthStatus,
    TResult? Function(RefreshTokenEvent value)? refreshToken,
    TResult? Function(ChangePasswordEvent value)? changePassword,
    TResult? Function(UpdateProfileEvent value)? updateProfile,
    TResult? Function(ClearErrorEvent value)? clearError,
    TResult? Function(InitializeAuthEvent value)? initializeAuth,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginEvent value)? login,
    TResult Function(RegisterEvent value)? register,
    TResult Function(RegisterSuperAdminEvent value)? registerSuperAdmin,
    TResult Function(LogoutEvent value)? logout,
    TResult Function(CheckAuthStatusEvent value)? checkAuthStatus,
    TResult Function(RefreshTokenEvent value)? refreshToken,
    TResult Function(ChangePasswordEvent value)? changePassword,
    TResult Function(UpdateProfileEvent value)? updateProfile,
    TResult Function(ClearErrorEvent value)? clearError,
    TResult Function(InitializeAuthEvent value)? initializeAuth,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class LogoutEvent implements AuthEvent {
  const factory LogoutEvent() = _$LogoutEventImpl;
}

/// @nodoc
abstract class _$$CheckAuthStatusEventImplCopyWith<$Res> {
  factory _$$CheckAuthStatusEventImplCopyWith(
    _$CheckAuthStatusEventImpl value,
    $Res Function(_$CheckAuthStatusEventImpl) then,
  ) = __$$CheckAuthStatusEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckAuthStatusEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$CheckAuthStatusEventImpl>
    implements _$$CheckAuthStatusEventImplCopyWith<$Res> {
  __$$CheckAuthStatusEventImplCopyWithImpl(
    _$CheckAuthStatusEventImpl _value,
    $Res Function(_$CheckAuthStatusEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CheckAuthStatusEventImpl implements CheckAuthStatusEvent {
  const _$CheckAuthStatusEventImpl();

  @override
  String toString() {
    return 'AuthEvent.checkAuthStatus()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckAuthStatusEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) login,
    required TResult Function(
      String email,
      String password,
      String confirmPassword,
      String firstname,
      String lastname,
      bool role,
    )
    register,
    required TResult Function(
      String? firstName,
      String? lastName,
      String email,
      String password,
    )
    registerSuperAdmin,
    required TResult Function() logout,
    required TResult Function() checkAuthStatus,
    required TResult Function() refreshToken,
    required TResult Function(String currentPassword, String newPassword)
    changePassword,
    required TResult Function(
      String? firstName,
      String? lastName,
      String? phoneNumber,
      String? department,
      String? position,
    )
    updateProfile,
    required TResult Function() clearError,
    required TResult Function() initializeAuth,
  }) {
    return checkAuthStatus();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? login,
    TResult? Function(
      String email,
      String password,
      String confirmPassword,
      String firstname,
      String lastname,
      bool role,
    )?
    register,
    TResult? Function(
      String? firstName,
      String? lastName,
      String email,
      String password,
    )?
    registerSuperAdmin,
    TResult? Function()? logout,
    TResult? Function()? checkAuthStatus,
    TResult? Function()? refreshToken,
    TResult? Function(String currentPassword, String newPassword)?
    changePassword,
    TResult? Function(
      String? firstName,
      String? lastName,
      String? phoneNumber,
      String? department,
      String? position,
    )?
    updateProfile,
    TResult? Function()? clearError,
    TResult? Function()? initializeAuth,
  }) {
    return checkAuthStatus?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? login,
    TResult Function(
      String email,
      String password,
      String confirmPassword,
      String firstname,
      String lastname,
      bool role,
    )?
    register,
    TResult Function(
      String? firstName,
      String? lastName,
      String email,
      String password,
    )?
    registerSuperAdmin,
    TResult Function()? logout,
    TResult Function()? checkAuthStatus,
    TResult Function()? refreshToken,
    TResult Function(String currentPassword, String newPassword)?
    changePassword,
    TResult Function(
      String? firstName,
      String? lastName,
      String? phoneNumber,
      String? department,
      String? position,
    )?
    updateProfile,
    TResult Function()? clearError,
    TResult Function()? initializeAuth,
    required TResult orElse(),
  }) {
    if (checkAuthStatus != null) {
      return checkAuthStatus();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginEvent value) login,
    required TResult Function(RegisterEvent value) register,
    required TResult Function(RegisterSuperAdminEvent value) registerSuperAdmin,
    required TResult Function(LogoutEvent value) logout,
    required TResult Function(CheckAuthStatusEvent value) checkAuthStatus,
    required TResult Function(RefreshTokenEvent value) refreshToken,
    required TResult Function(ChangePasswordEvent value) changePassword,
    required TResult Function(UpdateProfileEvent value) updateProfile,
    required TResult Function(ClearErrorEvent value) clearError,
    required TResult Function(InitializeAuthEvent value) initializeAuth,
  }) {
    return checkAuthStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginEvent value)? login,
    TResult? Function(RegisterEvent value)? register,
    TResult? Function(RegisterSuperAdminEvent value)? registerSuperAdmin,
    TResult? Function(LogoutEvent value)? logout,
    TResult? Function(CheckAuthStatusEvent value)? checkAuthStatus,
    TResult? Function(RefreshTokenEvent value)? refreshToken,
    TResult? Function(ChangePasswordEvent value)? changePassword,
    TResult? Function(UpdateProfileEvent value)? updateProfile,
    TResult? Function(ClearErrorEvent value)? clearError,
    TResult? Function(InitializeAuthEvent value)? initializeAuth,
  }) {
    return checkAuthStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginEvent value)? login,
    TResult Function(RegisterEvent value)? register,
    TResult Function(RegisterSuperAdminEvent value)? registerSuperAdmin,
    TResult Function(LogoutEvent value)? logout,
    TResult Function(CheckAuthStatusEvent value)? checkAuthStatus,
    TResult Function(RefreshTokenEvent value)? refreshToken,
    TResult Function(ChangePasswordEvent value)? changePassword,
    TResult Function(UpdateProfileEvent value)? updateProfile,
    TResult Function(ClearErrorEvent value)? clearError,
    TResult Function(InitializeAuthEvent value)? initializeAuth,
    required TResult orElse(),
  }) {
    if (checkAuthStatus != null) {
      return checkAuthStatus(this);
    }
    return orElse();
  }
}

abstract class CheckAuthStatusEvent implements AuthEvent {
  const factory CheckAuthStatusEvent() = _$CheckAuthStatusEventImpl;
}

/// @nodoc
abstract class _$$RefreshTokenEventImplCopyWith<$Res> {
  factory _$$RefreshTokenEventImplCopyWith(
    _$RefreshTokenEventImpl value,
    $Res Function(_$RefreshTokenEventImpl) then,
  ) = __$$RefreshTokenEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshTokenEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$RefreshTokenEventImpl>
    implements _$$RefreshTokenEventImplCopyWith<$Res> {
  __$$RefreshTokenEventImplCopyWithImpl(
    _$RefreshTokenEventImpl _value,
    $Res Function(_$RefreshTokenEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RefreshTokenEventImpl implements RefreshTokenEvent {
  const _$RefreshTokenEventImpl();

  @override
  String toString() {
    return 'AuthEvent.refreshToken()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RefreshTokenEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) login,
    required TResult Function(
      String email,
      String password,
      String confirmPassword,
      String firstname,
      String lastname,
      bool role,
    )
    register,
    required TResult Function(
      String? firstName,
      String? lastName,
      String email,
      String password,
    )
    registerSuperAdmin,
    required TResult Function() logout,
    required TResult Function() checkAuthStatus,
    required TResult Function() refreshToken,
    required TResult Function(String currentPassword, String newPassword)
    changePassword,
    required TResult Function(
      String? firstName,
      String? lastName,
      String? phoneNumber,
      String? department,
      String? position,
    )
    updateProfile,
    required TResult Function() clearError,
    required TResult Function() initializeAuth,
  }) {
    return refreshToken();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? login,
    TResult? Function(
      String email,
      String password,
      String confirmPassword,
      String firstname,
      String lastname,
      bool role,
    )?
    register,
    TResult? Function(
      String? firstName,
      String? lastName,
      String email,
      String password,
    )?
    registerSuperAdmin,
    TResult? Function()? logout,
    TResult? Function()? checkAuthStatus,
    TResult? Function()? refreshToken,
    TResult? Function(String currentPassword, String newPassword)?
    changePassword,
    TResult? Function(
      String? firstName,
      String? lastName,
      String? phoneNumber,
      String? department,
      String? position,
    )?
    updateProfile,
    TResult? Function()? clearError,
    TResult? Function()? initializeAuth,
  }) {
    return refreshToken?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? login,
    TResult Function(
      String email,
      String password,
      String confirmPassword,
      String firstname,
      String lastname,
      bool role,
    )?
    register,
    TResult Function(
      String? firstName,
      String? lastName,
      String email,
      String password,
    )?
    registerSuperAdmin,
    TResult Function()? logout,
    TResult Function()? checkAuthStatus,
    TResult Function()? refreshToken,
    TResult Function(String currentPassword, String newPassword)?
    changePassword,
    TResult Function(
      String? firstName,
      String? lastName,
      String? phoneNumber,
      String? department,
      String? position,
    )?
    updateProfile,
    TResult Function()? clearError,
    TResult Function()? initializeAuth,
    required TResult orElse(),
  }) {
    if (refreshToken != null) {
      return refreshToken();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginEvent value) login,
    required TResult Function(RegisterEvent value) register,
    required TResult Function(RegisterSuperAdminEvent value) registerSuperAdmin,
    required TResult Function(LogoutEvent value) logout,
    required TResult Function(CheckAuthStatusEvent value) checkAuthStatus,
    required TResult Function(RefreshTokenEvent value) refreshToken,
    required TResult Function(ChangePasswordEvent value) changePassword,
    required TResult Function(UpdateProfileEvent value) updateProfile,
    required TResult Function(ClearErrorEvent value) clearError,
    required TResult Function(InitializeAuthEvent value) initializeAuth,
  }) {
    return refreshToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginEvent value)? login,
    TResult? Function(RegisterEvent value)? register,
    TResult? Function(RegisterSuperAdminEvent value)? registerSuperAdmin,
    TResult? Function(LogoutEvent value)? logout,
    TResult? Function(CheckAuthStatusEvent value)? checkAuthStatus,
    TResult? Function(RefreshTokenEvent value)? refreshToken,
    TResult? Function(ChangePasswordEvent value)? changePassword,
    TResult? Function(UpdateProfileEvent value)? updateProfile,
    TResult? Function(ClearErrorEvent value)? clearError,
    TResult? Function(InitializeAuthEvent value)? initializeAuth,
  }) {
    return refreshToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginEvent value)? login,
    TResult Function(RegisterEvent value)? register,
    TResult Function(RegisterSuperAdminEvent value)? registerSuperAdmin,
    TResult Function(LogoutEvent value)? logout,
    TResult Function(CheckAuthStatusEvent value)? checkAuthStatus,
    TResult Function(RefreshTokenEvent value)? refreshToken,
    TResult Function(ChangePasswordEvent value)? changePassword,
    TResult Function(UpdateProfileEvent value)? updateProfile,
    TResult Function(ClearErrorEvent value)? clearError,
    TResult Function(InitializeAuthEvent value)? initializeAuth,
    required TResult orElse(),
  }) {
    if (refreshToken != null) {
      return refreshToken(this);
    }
    return orElse();
  }
}

abstract class RefreshTokenEvent implements AuthEvent {
  const factory RefreshTokenEvent() = _$RefreshTokenEventImpl;
}

/// @nodoc
abstract class _$$ChangePasswordEventImplCopyWith<$Res> {
  factory _$$ChangePasswordEventImplCopyWith(
    _$ChangePasswordEventImpl value,
    $Res Function(_$ChangePasswordEventImpl) then,
  ) = __$$ChangePasswordEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String currentPassword, String newPassword});
}

/// @nodoc
class __$$ChangePasswordEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ChangePasswordEventImpl>
    implements _$$ChangePasswordEventImplCopyWith<$Res> {
  __$$ChangePasswordEventImplCopyWithImpl(
    _$ChangePasswordEventImpl _value,
    $Res Function(_$ChangePasswordEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? currentPassword = null, Object? newPassword = null}) {
    return _then(
      _$ChangePasswordEventImpl(
        currentPassword: null == currentPassword
            ? _value.currentPassword
            : currentPassword // ignore: cast_nullable_to_non_nullable
                  as String,
        newPassword: null == newPassword
            ? _value.newPassword
            : newPassword // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$ChangePasswordEventImpl implements ChangePasswordEvent {
  const _$ChangePasswordEventImpl({
    required this.currentPassword,
    required this.newPassword,
  });

  @override
  final String currentPassword;
  @override
  final String newPassword;

  @override
  String toString() {
    return 'AuthEvent.changePassword(currentPassword: $currentPassword, newPassword: $newPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePasswordEventImpl &&
            (identical(other.currentPassword, currentPassword) ||
                other.currentPassword == currentPassword) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentPassword, newPassword);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePasswordEventImplCopyWith<_$ChangePasswordEventImpl> get copyWith =>
      __$$ChangePasswordEventImplCopyWithImpl<_$ChangePasswordEventImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) login,
    required TResult Function(
      String email,
      String password,
      String confirmPassword,
      String firstname,
      String lastname,
      bool role,
    )
    register,
    required TResult Function(
      String? firstName,
      String? lastName,
      String email,
      String password,
    )
    registerSuperAdmin,
    required TResult Function() logout,
    required TResult Function() checkAuthStatus,
    required TResult Function() refreshToken,
    required TResult Function(String currentPassword, String newPassword)
    changePassword,
    required TResult Function(
      String? firstName,
      String? lastName,
      String? phoneNumber,
      String? department,
      String? position,
    )
    updateProfile,
    required TResult Function() clearError,
    required TResult Function() initializeAuth,
  }) {
    return changePassword(currentPassword, newPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? login,
    TResult? Function(
      String email,
      String password,
      String confirmPassword,
      String firstname,
      String lastname,
      bool role,
    )?
    register,
    TResult? Function(
      String? firstName,
      String? lastName,
      String email,
      String password,
    )?
    registerSuperAdmin,
    TResult? Function()? logout,
    TResult? Function()? checkAuthStatus,
    TResult? Function()? refreshToken,
    TResult? Function(String currentPassword, String newPassword)?
    changePassword,
    TResult? Function(
      String? firstName,
      String? lastName,
      String? phoneNumber,
      String? department,
      String? position,
    )?
    updateProfile,
    TResult? Function()? clearError,
    TResult? Function()? initializeAuth,
  }) {
    return changePassword?.call(currentPassword, newPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? login,
    TResult Function(
      String email,
      String password,
      String confirmPassword,
      String firstname,
      String lastname,
      bool role,
    )?
    register,
    TResult Function(
      String? firstName,
      String? lastName,
      String email,
      String password,
    )?
    registerSuperAdmin,
    TResult Function()? logout,
    TResult Function()? checkAuthStatus,
    TResult Function()? refreshToken,
    TResult Function(String currentPassword, String newPassword)?
    changePassword,
    TResult Function(
      String? firstName,
      String? lastName,
      String? phoneNumber,
      String? department,
      String? position,
    )?
    updateProfile,
    TResult Function()? clearError,
    TResult Function()? initializeAuth,
    required TResult orElse(),
  }) {
    if (changePassword != null) {
      return changePassword(currentPassword, newPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginEvent value) login,
    required TResult Function(RegisterEvent value) register,
    required TResult Function(RegisterSuperAdminEvent value) registerSuperAdmin,
    required TResult Function(LogoutEvent value) logout,
    required TResult Function(CheckAuthStatusEvent value) checkAuthStatus,
    required TResult Function(RefreshTokenEvent value) refreshToken,
    required TResult Function(ChangePasswordEvent value) changePassword,
    required TResult Function(UpdateProfileEvent value) updateProfile,
    required TResult Function(ClearErrorEvent value) clearError,
    required TResult Function(InitializeAuthEvent value) initializeAuth,
  }) {
    return changePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginEvent value)? login,
    TResult? Function(RegisterEvent value)? register,
    TResult? Function(RegisterSuperAdminEvent value)? registerSuperAdmin,
    TResult? Function(LogoutEvent value)? logout,
    TResult? Function(CheckAuthStatusEvent value)? checkAuthStatus,
    TResult? Function(RefreshTokenEvent value)? refreshToken,
    TResult? Function(ChangePasswordEvent value)? changePassword,
    TResult? Function(UpdateProfileEvent value)? updateProfile,
    TResult? Function(ClearErrorEvent value)? clearError,
    TResult? Function(InitializeAuthEvent value)? initializeAuth,
  }) {
    return changePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginEvent value)? login,
    TResult Function(RegisterEvent value)? register,
    TResult Function(RegisterSuperAdminEvent value)? registerSuperAdmin,
    TResult Function(LogoutEvent value)? logout,
    TResult Function(CheckAuthStatusEvent value)? checkAuthStatus,
    TResult Function(RefreshTokenEvent value)? refreshToken,
    TResult Function(ChangePasswordEvent value)? changePassword,
    TResult Function(UpdateProfileEvent value)? updateProfile,
    TResult Function(ClearErrorEvent value)? clearError,
    TResult Function(InitializeAuthEvent value)? initializeAuth,
    required TResult orElse(),
  }) {
    if (changePassword != null) {
      return changePassword(this);
    }
    return orElse();
  }
}

abstract class ChangePasswordEvent implements AuthEvent {
  const factory ChangePasswordEvent({
    required final String currentPassword,
    required final String newPassword,
  }) = _$ChangePasswordEventImpl;

  String get currentPassword;
  String get newPassword;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangePasswordEventImplCopyWith<_$ChangePasswordEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateProfileEventImplCopyWith<$Res> {
  factory _$$UpdateProfileEventImplCopyWith(
    _$UpdateProfileEventImpl value,
    $Res Function(_$UpdateProfileEventImpl) then,
  ) = __$$UpdateProfileEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    String? firstName,
    String? lastName,
    String? phoneNumber,
    String? department,
    String? position,
  });
}

/// @nodoc
class __$$UpdateProfileEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$UpdateProfileEventImpl>
    implements _$$UpdateProfileEventImplCopyWith<$Res> {
  __$$UpdateProfileEventImplCopyWithImpl(
    _$UpdateProfileEventImpl _value,
    $Res Function(_$UpdateProfileEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? phoneNumber = freezed,
    Object? department = freezed,
    Object? position = freezed,
  }) {
    return _then(
      _$UpdateProfileEventImpl(
        firstName: freezed == firstName
            ? _value.firstName
            : firstName // ignore: cast_nullable_to_non_nullable
                  as String?,
        lastName: freezed == lastName
            ? _value.lastName
            : lastName // ignore: cast_nullable_to_non_nullable
                  as String?,
        phoneNumber: freezed == phoneNumber
            ? _value.phoneNumber
            : phoneNumber // ignore: cast_nullable_to_non_nullable
                  as String?,
        department: freezed == department
            ? _value.department
            : department // ignore: cast_nullable_to_non_nullable
                  as String?,
        position: freezed == position
            ? _value.position
            : position // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$UpdateProfileEventImpl implements UpdateProfileEvent {
  const _$UpdateProfileEventImpl({
    this.firstName,
    this.lastName,
    this.phoneNumber,
    this.department,
    this.position,
  });

  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? phoneNumber;
  @override
  final String? department;
  @override
  final String? position;

  @override
  String toString() {
    return 'AuthEvent.updateProfile(firstName: $firstName, lastName: $lastName, phoneNumber: $phoneNumber, department: $department, position: $position)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProfileEventImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.department, department) ||
                other.department == department) &&
            (identical(other.position, position) ||
                other.position == position));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    firstName,
    lastName,
    phoneNumber,
    department,
    position,
  );

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateProfileEventImplCopyWith<_$UpdateProfileEventImpl> get copyWith =>
      __$$UpdateProfileEventImplCopyWithImpl<_$UpdateProfileEventImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) login,
    required TResult Function(
      String email,
      String password,
      String confirmPassword,
      String firstname,
      String lastname,
      bool role,
    )
    register,
    required TResult Function(
      String? firstName,
      String? lastName,
      String email,
      String password,
    )
    registerSuperAdmin,
    required TResult Function() logout,
    required TResult Function() checkAuthStatus,
    required TResult Function() refreshToken,
    required TResult Function(String currentPassword, String newPassword)
    changePassword,
    required TResult Function(
      String? firstName,
      String? lastName,
      String? phoneNumber,
      String? department,
      String? position,
    )
    updateProfile,
    required TResult Function() clearError,
    required TResult Function() initializeAuth,
  }) {
    return updateProfile(
      firstName,
      lastName,
      phoneNumber,
      department,
      position,
    );
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? login,
    TResult? Function(
      String email,
      String password,
      String confirmPassword,
      String firstname,
      String lastname,
      bool role,
    )?
    register,
    TResult? Function(
      String? firstName,
      String? lastName,
      String email,
      String password,
    )?
    registerSuperAdmin,
    TResult? Function()? logout,
    TResult? Function()? checkAuthStatus,
    TResult? Function()? refreshToken,
    TResult? Function(String currentPassword, String newPassword)?
    changePassword,
    TResult? Function(
      String? firstName,
      String? lastName,
      String? phoneNumber,
      String? department,
      String? position,
    )?
    updateProfile,
    TResult? Function()? clearError,
    TResult? Function()? initializeAuth,
  }) {
    return updateProfile?.call(
      firstName,
      lastName,
      phoneNumber,
      department,
      position,
    );
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? login,
    TResult Function(
      String email,
      String password,
      String confirmPassword,
      String firstname,
      String lastname,
      bool role,
    )?
    register,
    TResult Function(
      String? firstName,
      String? lastName,
      String email,
      String password,
    )?
    registerSuperAdmin,
    TResult Function()? logout,
    TResult Function()? checkAuthStatus,
    TResult Function()? refreshToken,
    TResult Function(String currentPassword, String newPassword)?
    changePassword,
    TResult Function(
      String? firstName,
      String? lastName,
      String? phoneNumber,
      String? department,
      String? position,
    )?
    updateProfile,
    TResult Function()? clearError,
    TResult Function()? initializeAuth,
    required TResult orElse(),
  }) {
    if (updateProfile != null) {
      return updateProfile(
        firstName,
        lastName,
        phoneNumber,
        department,
        position,
      );
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginEvent value) login,
    required TResult Function(RegisterEvent value) register,
    required TResult Function(RegisterSuperAdminEvent value) registerSuperAdmin,
    required TResult Function(LogoutEvent value) logout,
    required TResult Function(CheckAuthStatusEvent value) checkAuthStatus,
    required TResult Function(RefreshTokenEvent value) refreshToken,
    required TResult Function(ChangePasswordEvent value) changePassword,
    required TResult Function(UpdateProfileEvent value) updateProfile,
    required TResult Function(ClearErrorEvent value) clearError,
    required TResult Function(InitializeAuthEvent value) initializeAuth,
  }) {
    return updateProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginEvent value)? login,
    TResult? Function(RegisterEvent value)? register,
    TResult? Function(RegisterSuperAdminEvent value)? registerSuperAdmin,
    TResult? Function(LogoutEvent value)? logout,
    TResult? Function(CheckAuthStatusEvent value)? checkAuthStatus,
    TResult? Function(RefreshTokenEvent value)? refreshToken,
    TResult? Function(ChangePasswordEvent value)? changePassword,
    TResult? Function(UpdateProfileEvent value)? updateProfile,
    TResult? Function(ClearErrorEvent value)? clearError,
    TResult? Function(InitializeAuthEvent value)? initializeAuth,
  }) {
    return updateProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginEvent value)? login,
    TResult Function(RegisterEvent value)? register,
    TResult Function(RegisterSuperAdminEvent value)? registerSuperAdmin,
    TResult Function(LogoutEvent value)? logout,
    TResult Function(CheckAuthStatusEvent value)? checkAuthStatus,
    TResult Function(RefreshTokenEvent value)? refreshToken,
    TResult Function(ChangePasswordEvent value)? changePassword,
    TResult Function(UpdateProfileEvent value)? updateProfile,
    TResult Function(ClearErrorEvent value)? clearError,
    TResult Function(InitializeAuthEvent value)? initializeAuth,
    required TResult orElse(),
  }) {
    if (updateProfile != null) {
      return updateProfile(this);
    }
    return orElse();
  }
}

abstract class UpdateProfileEvent implements AuthEvent {
  const factory UpdateProfileEvent({
    final String? firstName,
    final String? lastName,
    final String? phoneNumber,
    final String? department,
    final String? position,
  }) = _$UpdateProfileEventImpl;

  String? get firstName;
  String? get lastName;
  String? get phoneNumber;
  String? get department;
  String? get position;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateProfileEventImplCopyWith<_$UpdateProfileEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearErrorEventImplCopyWith<$Res> {
  factory _$$ClearErrorEventImplCopyWith(
    _$ClearErrorEventImpl value,
    $Res Function(_$ClearErrorEventImpl) then,
  ) = __$$ClearErrorEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearErrorEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ClearErrorEventImpl>
    implements _$$ClearErrorEventImplCopyWith<$Res> {
  __$$ClearErrorEventImplCopyWithImpl(
    _$ClearErrorEventImpl _value,
    $Res Function(_$ClearErrorEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearErrorEventImpl implements ClearErrorEvent {
  const _$ClearErrorEventImpl();

  @override
  String toString() {
    return 'AuthEvent.clearError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearErrorEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) login,
    required TResult Function(
      String email,
      String password,
      String confirmPassword,
      String firstname,
      String lastname,
      bool role,
    )
    register,
    required TResult Function(
      String? firstName,
      String? lastName,
      String email,
      String password,
    )
    registerSuperAdmin,
    required TResult Function() logout,
    required TResult Function() checkAuthStatus,
    required TResult Function() refreshToken,
    required TResult Function(String currentPassword, String newPassword)
    changePassword,
    required TResult Function(
      String? firstName,
      String? lastName,
      String? phoneNumber,
      String? department,
      String? position,
    )
    updateProfile,
    required TResult Function() clearError,
    required TResult Function() initializeAuth,
  }) {
    return clearError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? login,
    TResult? Function(
      String email,
      String password,
      String confirmPassword,
      String firstname,
      String lastname,
      bool role,
    )?
    register,
    TResult? Function(
      String? firstName,
      String? lastName,
      String email,
      String password,
    )?
    registerSuperAdmin,
    TResult? Function()? logout,
    TResult? Function()? checkAuthStatus,
    TResult? Function()? refreshToken,
    TResult? Function(String currentPassword, String newPassword)?
    changePassword,
    TResult? Function(
      String? firstName,
      String? lastName,
      String? phoneNumber,
      String? department,
      String? position,
    )?
    updateProfile,
    TResult? Function()? clearError,
    TResult? Function()? initializeAuth,
  }) {
    return clearError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? login,
    TResult Function(
      String email,
      String password,
      String confirmPassword,
      String firstname,
      String lastname,
      bool role,
    )?
    register,
    TResult Function(
      String? firstName,
      String? lastName,
      String email,
      String password,
    )?
    registerSuperAdmin,
    TResult Function()? logout,
    TResult Function()? checkAuthStatus,
    TResult Function()? refreshToken,
    TResult Function(String currentPassword, String newPassword)?
    changePassword,
    TResult Function(
      String? firstName,
      String? lastName,
      String? phoneNumber,
      String? department,
      String? position,
    )?
    updateProfile,
    TResult Function()? clearError,
    TResult Function()? initializeAuth,
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
    required TResult Function(LoginEvent value) login,
    required TResult Function(RegisterEvent value) register,
    required TResult Function(RegisterSuperAdminEvent value) registerSuperAdmin,
    required TResult Function(LogoutEvent value) logout,
    required TResult Function(CheckAuthStatusEvent value) checkAuthStatus,
    required TResult Function(RefreshTokenEvent value) refreshToken,
    required TResult Function(ChangePasswordEvent value) changePassword,
    required TResult Function(UpdateProfileEvent value) updateProfile,
    required TResult Function(ClearErrorEvent value) clearError,
    required TResult Function(InitializeAuthEvent value) initializeAuth,
  }) {
    return clearError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginEvent value)? login,
    TResult? Function(RegisterEvent value)? register,
    TResult? Function(RegisterSuperAdminEvent value)? registerSuperAdmin,
    TResult? Function(LogoutEvent value)? logout,
    TResult? Function(CheckAuthStatusEvent value)? checkAuthStatus,
    TResult? Function(RefreshTokenEvent value)? refreshToken,
    TResult? Function(ChangePasswordEvent value)? changePassword,
    TResult? Function(UpdateProfileEvent value)? updateProfile,
    TResult? Function(ClearErrorEvent value)? clearError,
    TResult? Function(InitializeAuthEvent value)? initializeAuth,
  }) {
    return clearError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginEvent value)? login,
    TResult Function(RegisterEvent value)? register,
    TResult Function(RegisterSuperAdminEvent value)? registerSuperAdmin,
    TResult Function(LogoutEvent value)? logout,
    TResult Function(CheckAuthStatusEvent value)? checkAuthStatus,
    TResult Function(RefreshTokenEvent value)? refreshToken,
    TResult Function(ChangePasswordEvent value)? changePassword,
    TResult Function(UpdateProfileEvent value)? updateProfile,
    TResult Function(ClearErrorEvent value)? clearError,
    TResult Function(InitializeAuthEvent value)? initializeAuth,
    required TResult orElse(),
  }) {
    if (clearError != null) {
      return clearError(this);
    }
    return orElse();
  }
}

abstract class ClearErrorEvent implements AuthEvent {
  const factory ClearErrorEvent() = _$ClearErrorEventImpl;
}

/// @nodoc
abstract class _$$InitializeAuthEventImplCopyWith<$Res> {
  factory _$$InitializeAuthEventImplCopyWith(
    _$InitializeAuthEventImpl value,
    $Res Function(_$InitializeAuthEventImpl) then,
  ) = __$$InitializeAuthEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitializeAuthEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$InitializeAuthEventImpl>
    implements _$$InitializeAuthEventImplCopyWith<$Res> {
  __$$InitializeAuthEventImplCopyWithImpl(
    _$InitializeAuthEventImpl _value,
    $Res Function(_$InitializeAuthEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitializeAuthEventImpl implements InitializeAuthEvent {
  const _$InitializeAuthEventImpl();

  @override
  String toString() {
    return 'AuthEvent.initializeAuth()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializeAuthEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) login,
    required TResult Function(
      String email,
      String password,
      String confirmPassword,
      String firstname,
      String lastname,
      bool role,
    )
    register,
    required TResult Function(
      String? firstName,
      String? lastName,
      String email,
      String password,
    )
    registerSuperAdmin,
    required TResult Function() logout,
    required TResult Function() checkAuthStatus,
    required TResult Function() refreshToken,
    required TResult Function(String currentPassword, String newPassword)
    changePassword,
    required TResult Function(
      String? firstName,
      String? lastName,
      String? phoneNumber,
      String? department,
      String? position,
    )
    updateProfile,
    required TResult Function() clearError,
    required TResult Function() initializeAuth,
  }) {
    return initializeAuth();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? login,
    TResult? Function(
      String email,
      String password,
      String confirmPassword,
      String firstname,
      String lastname,
      bool role,
    )?
    register,
    TResult? Function(
      String? firstName,
      String? lastName,
      String email,
      String password,
    )?
    registerSuperAdmin,
    TResult? Function()? logout,
    TResult? Function()? checkAuthStatus,
    TResult? Function()? refreshToken,
    TResult? Function(String currentPassword, String newPassword)?
    changePassword,
    TResult? Function(
      String? firstName,
      String? lastName,
      String? phoneNumber,
      String? department,
      String? position,
    )?
    updateProfile,
    TResult? Function()? clearError,
    TResult? Function()? initializeAuth,
  }) {
    return initializeAuth?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? login,
    TResult Function(
      String email,
      String password,
      String confirmPassword,
      String firstname,
      String lastname,
      bool role,
    )?
    register,
    TResult Function(
      String? firstName,
      String? lastName,
      String email,
      String password,
    )?
    registerSuperAdmin,
    TResult Function()? logout,
    TResult Function()? checkAuthStatus,
    TResult Function()? refreshToken,
    TResult Function(String currentPassword, String newPassword)?
    changePassword,
    TResult Function(
      String? firstName,
      String? lastName,
      String? phoneNumber,
      String? department,
      String? position,
    )?
    updateProfile,
    TResult Function()? clearError,
    TResult Function()? initializeAuth,
    required TResult orElse(),
  }) {
    if (initializeAuth != null) {
      return initializeAuth();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginEvent value) login,
    required TResult Function(RegisterEvent value) register,
    required TResult Function(RegisterSuperAdminEvent value) registerSuperAdmin,
    required TResult Function(LogoutEvent value) logout,
    required TResult Function(CheckAuthStatusEvent value) checkAuthStatus,
    required TResult Function(RefreshTokenEvent value) refreshToken,
    required TResult Function(ChangePasswordEvent value) changePassword,
    required TResult Function(UpdateProfileEvent value) updateProfile,
    required TResult Function(ClearErrorEvent value) clearError,
    required TResult Function(InitializeAuthEvent value) initializeAuth,
  }) {
    return initializeAuth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginEvent value)? login,
    TResult? Function(RegisterEvent value)? register,
    TResult? Function(RegisterSuperAdminEvent value)? registerSuperAdmin,
    TResult? Function(LogoutEvent value)? logout,
    TResult? Function(CheckAuthStatusEvent value)? checkAuthStatus,
    TResult? Function(RefreshTokenEvent value)? refreshToken,
    TResult? Function(ChangePasswordEvent value)? changePassword,
    TResult? Function(UpdateProfileEvent value)? updateProfile,
    TResult? Function(ClearErrorEvent value)? clearError,
    TResult? Function(InitializeAuthEvent value)? initializeAuth,
  }) {
    return initializeAuth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginEvent value)? login,
    TResult Function(RegisterEvent value)? register,
    TResult Function(RegisterSuperAdminEvent value)? registerSuperAdmin,
    TResult Function(LogoutEvent value)? logout,
    TResult Function(CheckAuthStatusEvent value)? checkAuthStatus,
    TResult Function(RefreshTokenEvent value)? refreshToken,
    TResult Function(ChangePasswordEvent value)? changePassword,
    TResult Function(UpdateProfileEvent value)? updateProfile,
    TResult Function(ClearErrorEvent value)? clearError,
    TResult Function(InitializeAuthEvent value)? initializeAuth,
    required TResult orElse(),
  }) {
    if (initializeAuth != null) {
      return initializeAuth(this);
    }
    return orElse();
  }
}

abstract class InitializeAuthEvent implements AuthEvent {
  const factory InitializeAuthEvent() = _$InitializeAuthEventImpl;
}
