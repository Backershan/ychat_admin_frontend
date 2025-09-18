// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProfile,
    required TResult Function(
      String name,
      String? bio,
      String? avatar,
      String? phoneNumber,
      String? department,
      String? position,
    )
    updateProfile,
    required TResult Function(
      String currentPassword,
      String newPassword,
      String confirmPassword,
    )
    changePassword,
    required TResult Function(String imagePath) uploadAvatar,
    required TResult Function() clearError,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getProfile,
    TResult? Function(
      String name,
      String? bio,
      String? avatar,
      String? phoneNumber,
      String? department,
      String? position,
    )?
    updateProfile,
    TResult? Function(
      String currentPassword,
      String newPassword,
      String confirmPassword,
    )?
    changePassword,
    TResult? Function(String imagePath)? uploadAvatar,
    TResult? Function()? clearError,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProfile,
    TResult Function(
      String name,
      String? bio,
      String? avatar,
      String? phoneNumber,
      String? department,
      String? position,
    )?
    updateProfile,
    TResult Function(
      String currentPassword,
      String newPassword,
      String confirmPassword,
    )?
    changePassword,
    TResult Function(String imagePath)? uploadAvatar,
    TResult Function()? clearError,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetProfileEvent value) getProfile,
    required TResult Function(UpdateProfileEvent value) updateProfile,
    required TResult Function(ChangePasswordEvent value) changePassword,
    required TResult Function(UploadAvatarEvent value) uploadAvatar,
    required TResult Function(ClearErrorEvent value) clearError,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetProfileEvent value)? getProfile,
    TResult? Function(UpdateProfileEvent value)? updateProfile,
    TResult? Function(ChangePasswordEvent value)? changePassword,
    TResult? Function(UploadAvatarEvent value)? uploadAvatar,
    TResult? Function(ClearErrorEvent value)? clearError,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetProfileEvent value)? getProfile,
    TResult Function(UpdateProfileEvent value)? updateProfile,
    TResult Function(ChangePasswordEvent value)? changePassword,
    TResult Function(UploadAvatarEvent value)? uploadAvatar,
    TResult Function(ClearErrorEvent value)? clearError,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
    ProfileEvent value,
    $Res Function(ProfileEvent) then,
  ) = _$ProfileEventCopyWithImpl<$Res, ProfileEvent>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res, $Val extends ProfileEvent>
    implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetProfileEventImplCopyWith<$Res> {
  factory _$$GetProfileEventImplCopyWith(
    _$GetProfileEventImpl value,
    $Res Function(_$GetProfileEventImpl) then,
  ) = __$$GetProfileEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetProfileEventImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$GetProfileEventImpl>
    implements _$$GetProfileEventImplCopyWith<$Res> {
  __$$GetProfileEventImplCopyWithImpl(
    _$GetProfileEventImpl _value,
    $Res Function(_$GetProfileEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetProfileEventImpl implements GetProfileEvent {
  const _$GetProfileEventImpl();

  @override
  String toString() {
    return 'ProfileEvent.getProfile()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetProfileEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProfile,
    required TResult Function(
      String name,
      String? bio,
      String? avatar,
      String? phoneNumber,
      String? department,
      String? position,
    )
    updateProfile,
    required TResult Function(
      String currentPassword,
      String newPassword,
      String confirmPassword,
    )
    changePassword,
    required TResult Function(String imagePath) uploadAvatar,
    required TResult Function() clearError,
  }) {
    return getProfile();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getProfile,
    TResult? Function(
      String name,
      String? bio,
      String? avatar,
      String? phoneNumber,
      String? department,
      String? position,
    )?
    updateProfile,
    TResult? Function(
      String currentPassword,
      String newPassword,
      String confirmPassword,
    )?
    changePassword,
    TResult? Function(String imagePath)? uploadAvatar,
    TResult? Function()? clearError,
  }) {
    return getProfile?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProfile,
    TResult Function(
      String name,
      String? bio,
      String? avatar,
      String? phoneNumber,
      String? department,
      String? position,
    )?
    updateProfile,
    TResult Function(
      String currentPassword,
      String newPassword,
      String confirmPassword,
    )?
    changePassword,
    TResult Function(String imagePath)? uploadAvatar,
    TResult Function()? clearError,
    required TResult orElse(),
  }) {
    if (getProfile != null) {
      return getProfile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetProfileEvent value) getProfile,
    required TResult Function(UpdateProfileEvent value) updateProfile,
    required TResult Function(ChangePasswordEvent value) changePassword,
    required TResult Function(UploadAvatarEvent value) uploadAvatar,
    required TResult Function(ClearErrorEvent value) clearError,
  }) {
    return getProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetProfileEvent value)? getProfile,
    TResult? Function(UpdateProfileEvent value)? updateProfile,
    TResult? Function(ChangePasswordEvent value)? changePassword,
    TResult? Function(UploadAvatarEvent value)? uploadAvatar,
    TResult? Function(ClearErrorEvent value)? clearError,
  }) {
    return getProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetProfileEvent value)? getProfile,
    TResult Function(UpdateProfileEvent value)? updateProfile,
    TResult Function(ChangePasswordEvent value)? changePassword,
    TResult Function(UploadAvatarEvent value)? uploadAvatar,
    TResult Function(ClearErrorEvent value)? clearError,
    required TResult orElse(),
  }) {
    if (getProfile != null) {
      return getProfile(this);
    }
    return orElse();
  }
}

abstract class GetProfileEvent implements ProfileEvent {
  const factory GetProfileEvent() = _$GetProfileEventImpl;
}

/// @nodoc
abstract class _$$UpdateProfileEventImplCopyWith<$Res> {
  factory _$$UpdateProfileEventImplCopyWith(
    _$UpdateProfileEventImpl value,
    $Res Function(_$UpdateProfileEventImpl) then,
  ) = __$$UpdateProfileEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    String name,
    String? bio,
    String? avatar,
    String? phoneNumber,
    String? department,
    String? position,
  });
}

/// @nodoc
class __$$UpdateProfileEventImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$UpdateProfileEventImpl>
    implements _$$UpdateProfileEventImplCopyWith<$Res> {
  __$$UpdateProfileEventImplCopyWithImpl(
    _$UpdateProfileEventImpl _value,
    $Res Function(_$UpdateProfileEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? bio = freezed,
    Object? avatar = freezed,
    Object? phoneNumber = freezed,
    Object? department = freezed,
    Object? position = freezed,
  }) {
    return _then(
      _$UpdateProfileEventImpl(
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        bio: freezed == bio
            ? _value.bio
            : bio // ignore: cast_nullable_to_non_nullable
                  as String?,
        avatar: freezed == avatar
            ? _value.avatar
            : avatar // ignore: cast_nullable_to_non_nullable
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
    required this.name,
    this.bio,
    this.avatar,
    this.phoneNumber,
    this.department,
    this.position,
  });

  @override
  final String name;
  @override
  final String? bio;
  @override
  final String? avatar;
  @override
  final String? phoneNumber;
  @override
  final String? department;
  @override
  final String? position;

  @override
  String toString() {
    return 'ProfileEvent.updateProfile(name: $name, bio: $bio, avatar: $avatar, phoneNumber: $phoneNumber, department: $department, position: $position)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProfileEventImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
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
    name,
    bio,
    avatar,
    phoneNumber,
    department,
    position,
  );

  /// Create a copy of ProfileEvent
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
    required TResult Function() getProfile,
    required TResult Function(
      String name,
      String? bio,
      String? avatar,
      String? phoneNumber,
      String? department,
      String? position,
    )
    updateProfile,
    required TResult Function(
      String currentPassword,
      String newPassword,
      String confirmPassword,
    )
    changePassword,
    required TResult Function(String imagePath) uploadAvatar,
    required TResult Function() clearError,
  }) {
    return updateProfile(name, bio, avatar, phoneNumber, department, position);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getProfile,
    TResult? Function(
      String name,
      String? bio,
      String? avatar,
      String? phoneNumber,
      String? department,
      String? position,
    )?
    updateProfile,
    TResult? Function(
      String currentPassword,
      String newPassword,
      String confirmPassword,
    )?
    changePassword,
    TResult? Function(String imagePath)? uploadAvatar,
    TResult? Function()? clearError,
  }) {
    return updateProfile?.call(
      name,
      bio,
      avatar,
      phoneNumber,
      department,
      position,
    );
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProfile,
    TResult Function(
      String name,
      String? bio,
      String? avatar,
      String? phoneNumber,
      String? department,
      String? position,
    )?
    updateProfile,
    TResult Function(
      String currentPassword,
      String newPassword,
      String confirmPassword,
    )?
    changePassword,
    TResult Function(String imagePath)? uploadAvatar,
    TResult Function()? clearError,
    required TResult orElse(),
  }) {
    if (updateProfile != null) {
      return updateProfile(
        name,
        bio,
        avatar,
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
    required TResult Function(GetProfileEvent value) getProfile,
    required TResult Function(UpdateProfileEvent value) updateProfile,
    required TResult Function(ChangePasswordEvent value) changePassword,
    required TResult Function(UploadAvatarEvent value) uploadAvatar,
    required TResult Function(ClearErrorEvent value) clearError,
  }) {
    return updateProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetProfileEvent value)? getProfile,
    TResult? Function(UpdateProfileEvent value)? updateProfile,
    TResult? Function(ChangePasswordEvent value)? changePassword,
    TResult? Function(UploadAvatarEvent value)? uploadAvatar,
    TResult? Function(ClearErrorEvent value)? clearError,
  }) {
    return updateProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetProfileEvent value)? getProfile,
    TResult Function(UpdateProfileEvent value)? updateProfile,
    TResult Function(ChangePasswordEvent value)? changePassword,
    TResult Function(UploadAvatarEvent value)? uploadAvatar,
    TResult Function(ClearErrorEvent value)? clearError,
    required TResult orElse(),
  }) {
    if (updateProfile != null) {
      return updateProfile(this);
    }
    return orElse();
  }
}

abstract class UpdateProfileEvent implements ProfileEvent {
  const factory UpdateProfileEvent({
    required final String name,
    final String? bio,
    final String? avatar,
    final String? phoneNumber,
    final String? department,
    final String? position,
  }) = _$UpdateProfileEventImpl;

  String get name;
  String? get bio;
  String? get avatar;
  String? get phoneNumber;
  String? get department;
  String? get position;

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateProfileEventImplCopyWith<_$UpdateProfileEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangePasswordEventImplCopyWith<$Res> {
  factory _$$ChangePasswordEventImplCopyWith(
    _$ChangePasswordEventImpl value,
    $Res Function(_$ChangePasswordEventImpl) then,
  ) = __$$ChangePasswordEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    String currentPassword,
    String newPassword,
    String confirmPassword,
  });
}

/// @nodoc
class __$$ChangePasswordEventImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$ChangePasswordEventImpl>
    implements _$$ChangePasswordEventImplCopyWith<$Res> {
  __$$ChangePasswordEventImplCopyWithImpl(
    _$ChangePasswordEventImpl _value,
    $Res Function(_$ChangePasswordEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPassword = null,
    Object? newPassword = null,
    Object? confirmPassword = null,
  }) {
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
        confirmPassword: null == confirmPassword
            ? _value.confirmPassword
            : confirmPassword // ignore: cast_nullable_to_non_nullable
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
    required this.confirmPassword,
  });

  @override
  final String currentPassword;
  @override
  final String newPassword;
  @override
  final String confirmPassword;

  @override
  String toString() {
    return 'ProfileEvent.changePassword(currentPassword: $currentPassword, newPassword: $newPassword, confirmPassword: $confirmPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePasswordEventImpl &&
            (identical(other.currentPassword, currentPassword) ||
                other.currentPassword == currentPassword) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, currentPassword, newPassword, confirmPassword);

  /// Create a copy of ProfileEvent
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
    required TResult Function() getProfile,
    required TResult Function(
      String name,
      String? bio,
      String? avatar,
      String? phoneNumber,
      String? department,
      String? position,
    )
    updateProfile,
    required TResult Function(
      String currentPassword,
      String newPassword,
      String confirmPassword,
    )
    changePassword,
    required TResult Function(String imagePath) uploadAvatar,
    required TResult Function() clearError,
  }) {
    return changePassword(currentPassword, newPassword, confirmPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getProfile,
    TResult? Function(
      String name,
      String? bio,
      String? avatar,
      String? phoneNumber,
      String? department,
      String? position,
    )?
    updateProfile,
    TResult? Function(
      String currentPassword,
      String newPassword,
      String confirmPassword,
    )?
    changePassword,
    TResult? Function(String imagePath)? uploadAvatar,
    TResult? Function()? clearError,
  }) {
    return changePassword?.call(currentPassword, newPassword, confirmPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProfile,
    TResult Function(
      String name,
      String? bio,
      String? avatar,
      String? phoneNumber,
      String? department,
      String? position,
    )?
    updateProfile,
    TResult Function(
      String currentPassword,
      String newPassword,
      String confirmPassword,
    )?
    changePassword,
    TResult Function(String imagePath)? uploadAvatar,
    TResult Function()? clearError,
    required TResult orElse(),
  }) {
    if (changePassword != null) {
      return changePassword(currentPassword, newPassword, confirmPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetProfileEvent value) getProfile,
    required TResult Function(UpdateProfileEvent value) updateProfile,
    required TResult Function(ChangePasswordEvent value) changePassword,
    required TResult Function(UploadAvatarEvent value) uploadAvatar,
    required TResult Function(ClearErrorEvent value) clearError,
  }) {
    return changePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetProfileEvent value)? getProfile,
    TResult? Function(UpdateProfileEvent value)? updateProfile,
    TResult? Function(ChangePasswordEvent value)? changePassword,
    TResult? Function(UploadAvatarEvent value)? uploadAvatar,
    TResult? Function(ClearErrorEvent value)? clearError,
  }) {
    return changePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetProfileEvent value)? getProfile,
    TResult Function(UpdateProfileEvent value)? updateProfile,
    TResult Function(ChangePasswordEvent value)? changePassword,
    TResult Function(UploadAvatarEvent value)? uploadAvatar,
    TResult Function(ClearErrorEvent value)? clearError,
    required TResult orElse(),
  }) {
    if (changePassword != null) {
      return changePassword(this);
    }
    return orElse();
  }
}

abstract class ChangePasswordEvent implements ProfileEvent {
  const factory ChangePasswordEvent({
    required final String currentPassword,
    required final String newPassword,
    required final String confirmPassword,
  }) = _$ChangePasswordEventImpl;

  String get currentPassword;
  String get newPassword;
  String get confirmPassword;

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangePasswordEventImplCopyWith<_$ChangePasswordEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UploadAvatarEventImplCopyWith<$Res> {
  factory _$$UploadAvatarEventImplCopyWith(
    _$UploadAvatarEventImpl value,
    $Res Function(_$UploadAvatarEventImpl) then,
  ) = __$$UploadAvatarEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String imagePath});
}

/// @nodoc
class __$$UploadAvatarEventImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$UploadAvatarEventImpl>
    implements _$$UploadAvatarEventImplCopyWith<$Res> {
  __$$UploadAvatarEventImplCopyWithImpl(
    _$UploadAvatarEventImpl _value,
    $Res Function(_$UploadAvatarEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? imagePath = null}) {
    return _then(
      _$UploadAvatarEventImpl(
        null == imagePath
            ? _value.imagePath
            : imagePath // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$UploadAvatarEventImpl implements UploadAvatarEvent {
  const _$UploadAvatarEventImpl(this.imagePath);

  @override
  final String imagePath;

  @override
  String toString() {
    return 'ProfileEvent.uploadAvatar(imagePath: $imagePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadAvatarEventImpl &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imagePath);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadAvatarEventImplCopyWith<_$UploadAvatarEventImpl> get copyWith =>
      __$$UploadAvatarEventImplCopyWithImpl<_$UploadAvatarEventImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProfile,
    required TResult Function(
      String name,
      String? bio,
      String? avatar,
      String? phoneNumber,
      String? department,
      String? position,
    )
    updateProfile,
    required TResult Function(
      String currentPassword,
      String newPassword,
      String confirmPassword,
    )
    changePassword,
    required TResult Function(String imagePath) uploadAvatar,
    required TResult Function() clearError,
  }) {
    return uploadAvatar(imagePath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getProfile,
    TResult? Function(
      String name,
      String? bio,
      String? avatar,
      String? phoneNumber,
      String? department,
      String? position,
    )?
    updateProfile,
    TResult? Function(
      String currentPassword,
      String newPassword,
      String confirmPassword,
    )?
    changePassword,
    TResult? Function(String imagePath)? uploadAvatar,
    TResult? Function()? clearError,
  }) {
    return uploadAvatar?.call(imagePath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProfile,
    TResult Function(
      String name,
      String? bio,
      String? avatar,
      String? phoneNumber,
      String? department,
      String? position,
    )?
    updateProfile,
    TResult Function(
      String currentPassword,
      String newPassword,
      String confirmPassword,
    )?
    changePassword,
    TResult Function(String imagePath)? uploadAvatar,
    TResult Function()? clearError,
    required TResult orElse(),
  }) {
    if (uploadAvatar != null) {
      return uploadAvatar(imagePath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetProfileEvent value) getProfile,
    required TResult Function(UpdateProfileEvent value) updateProfile,
    required TResult Function(ChangePasswordEvent value) changePassword,
    required TResult Function(UploadAvatarEvent value) uploadAvatar,
    required TResult Function(ClearErrorEvent value) clearError,
  }) {
    return uploadAvatar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetProfileEvent value)? getProfile,
    TResult? Function(UpdateProfileEvent value)? updateProfile,
    TResult? Function(ChangePasswordEvent value)? changePassword,
    TResult? Function(UploadAvatarEvent value)? uploadAvatar,
    TResult? Function(ClearErrorEvent value)? clearError,
  }) {
    return uploadAvatar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetProfileEvent value)? getProfile,
    TResult Function(UpdateProfileEvent value)? updateProfile,
    TResult Function(ChangePasswordEvent value)? changePassword,
    TResult Function(UploadAvatarEvent value)? uploadAvatar,
    TResult Function(ClearErrorEvent value)? clearError,
    required TResult orElse(),
  }) {
    if (uploadAvatar != null) {
      return uploadAvatar(this);
    }
    return orElse();
  }
}

abstract class UploadAvatarEvent implements ProfileEvent {
  const factory UploadAvatarEvent(final String imagePath) =
      _$UploadAvatarEventImpl;

  String get imagePath;

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UploadAvatarEventImplCopyWith<_$UploadAvatarEventImpl> get copyWith =>
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
    extends _$ProfileEventCopyWithImpl<$Res, _$ClearErrorEventImpl>
    implements _$$ClearErrorEventImplCopyWith<$Res> {
  __$$ClearErrorEventImplCopyWithImpl(
    _$ClearErrorEventImpl _value,
    $Res Function(_$ClearErrorEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearErrorEventImpl implements ClearErrorEvent {
  const _$ClearErrorEventImpl();

  @override
  String toString() {
    return 'ProfileEvent.clearError()';
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
    required TResult Function() getProfile,
    required TResult Function(
      String name,
      String? bio,
      String? avatar,
      String? phoneNumber,
      String? department,
      String? position,
    )
    updateProfile,
    required TResult Function(
      String currentPassword,
      String newPassword,
      String confirmPassword,
    )
    changePassword,
    required TResult Function(String imagePath) uploadAvatar,
    required TResult Function() clearError,
  }) {
    return clearError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getProfile,
    TResult? Function(
      String name,
      String? bio,
      String? avatar,
      String? phoneNumber,
      String? department,
      String? position,
    )?
    updateProfile,
    TResult? Function(
      String currentPassword,
      String newPassword,
      String confirmPassword,
    )?
    changePassword,
    TResult? Function(String imagePath)? uploadAvatar,
    TResult? Function()? clearError,
  }) {
    return clearError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProfile,
    TResult Function(
      String name,
      String? bio,
      String? avatar,
      String? phoneNumber,
      String? department,
      String? position,
    )?
    updateProfile,
    TResult Function(
      String currentPassword,
      String newPassword,
      String confirmPassword,
    )?
    changePassword,
    TResult Function(String imagePath)? uploadAvatar,
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
    required TResult Function(GetProfileEvent value) getProfile,
    required TResult Function(UpdateProfileEvent value) updateProfile,
    required TResult Function(ChangePasswordEvent value) changePassword,
    required TResult Function(UploadAvatarEvent value) uploadAvatar,
    required TResult Function(ClearErrorEvent value) clearError,
  }) {
    return clearError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetProfileEvent value)? getProfile,
    TResult? Function(UpdateProfileEvent value)? updateProfile,
    TResult? Function(ChangePasswordEvent value)? changePassword,
    TResult? Function(UploadAvatarEvent value)? uploadAvatar,
    TResult? Function(ClearErrorEvent value)? clearError,
  }) {
    return clearError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetProfileEvent value)? getProfile,
    TResult Function(UpdateProfileEvent value)? updateProfile,
    TResult Function(ChangePasswordEvent value)? changePassword,
    TResult Function(UploadAvatarEvent value)? uploadAvatar,
    TResult Function(ClearErrorEvent value)? clearError,
    required TResult orElse(),
  }) {
    if (clearError != null) {
      return clearError(this);
    }
    return orElse();
  }
}

abstract class ClearErrorEvent implements ProfileEvent {
  const factory ClearErrorEvent() = _$ClearErrorEventImpl;
}
