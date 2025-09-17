// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'loading_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$LoadingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingInitial value) initial,
    required TResult Function(LoadingLoading value) loading,
    required TResult Function(LoadingSuccess value) success,
    required TResult Function(LoadingError value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingInitial value)? initial,
    TResult? Function(LoadingLoading value)? loading,
    TResult? Function(LoadingSuccess value)? success,
    TResult? Function(LoadingError value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingInitial value)? initial,
    TResult Function(LoadingLoading value)? loading,
    TResult Function(LoadingSuccess value)? success,
    TResult Function(LoadingError value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadingStateCopyWith<$Res> {
  factory $LoadingStateCopyWith(
    LoadingState value,
    $Res Function(LoadingState) then,
  ) = _$LoadingStateCopyWithImpl<$Res, LoadingState>;
}

/// @nodoc
class _$LoadingStateCopyWithImpl<$Res, $Val extends LoadingState>
    implements $LoadingStateCopyWith<$Res> {
  _$LoadingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoadingState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadingInitialImplCopyWith<$Res> {
  factory _$$LoadingInitialImplCopyWith(
    _$LoadingInitialImpl value,
    $Res Function(_$LoadingInitialImpl) then,
  ) = __$$LoadingInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingInitialImplCopyWithImpl<$Res>
    extends _$LoadingStateCopyWithImpl<$Res, _$LoadingInitialImpl>
    implements _$$LoadingInitialImplCopyWith<$Res> {
  __$$LoadingInitialImplCopyWithImpl(
    _$LoadingInitialImpl _value,
    $Res Function(_$LoadingInitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LoadingState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingInitialImpl implements LoadingInitial {
  const _$LoadingInitialImpl();

  @override
  String toString() {
    return 'LoadingState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String message)? error,
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
    required TResult Function(LoadingInitial value) initial,
    required TResult Function(LoadingLoading value) loading,
    required TResult Function(LoadingSuccess value) success,
    required TResult Function(LoadingError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingInitial value)? initial,
    TResult? Function(LoadingLoading value)? loading,
    TResult? Function(LoadingSuccess value)? success,
    TResult? Function(LoadingError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingInitial value)? initial,
    TResult Function(LoadingLoading value)? loading,
    TResult Function(LoadingSuccess value)? success,
    TResult Function(LoadingError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class LoadingInitial implements LoadingState {
  const factory LoadingInitial() = _$LoadingInitialImpl;
}

/// @nodoc
abstract class _$$LoadingLoadingImplCopyWith<$Res> {
  factory _$$LoadingLoadingImplCopyWith(
    _$LoadingLoadingImpl value,
    $Res Function(_$LoadingLoadingImpl) then,
  ) = __$$LoadingLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingLoadingImplCopyWithImpl<$Res>
    extends _$LoadingStateCopyWithImpl<$Res, _$LoadingLoadingImpl>
    implements _$$LoadingLoadingImplCopyWith<$Res> {
  __$$LoadingLoadingImplCopyWithImpl(
    _$LoadingLoadingImpl _value,
    $Res Function(_$LoadingLoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LoadingState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingLoadingImpl implements LoadingLoading {
  const _$LoadingLoadingImpl();

  @override
  String toString() {
    return 'LoadingState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String message)? error,
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
    required TResult Function(LoadingInitial value) initial,
    required TResult Function(LoadingLoading value) loading,
    required TResult Function(LoadingSuccess value) success,
    required TResult Function(LoadingError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingInitial value)? initial,
    TResult? Function(LoadingLoading value)? loading,
    TResult? Function(LoadingSuccess value)? success,
    TResult? Function(LoadingError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingInitial value)? initial,
    TResult Function(LoadingLoading value)? loading,
    TResult Function(LoadingSuccess value)? success,
    TResult Function(LoadingError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingLoading implements LoadingState {
  const factory LoadingLoading() = _$LoadingLoadingImpl;
}

/// @nodoc
abstract class _$$LoadingSuccessImplCopyWith<$Res> {
  factory _$$LoadingSuccessImplCopyWith(
    _$LoadingSuccessImpl value,
    $Res Function(_$LoadingSuccessImpl) then,
  ) = __$$LoadingSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingSuccessImplCopyWithImpl<$Res>
    extends _$LoadingStateCopyWithImpl<$Res, _$LoadingSuccessImpl>
    implements _$$LoadingSuccessImplCopyWith<$Res> {
  __$$LoadingSuccessImplCopyWithImpl(
    _$LoadingSuccessImpl _value,
    $Res Function(_$LoadingSuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LoadingState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingSuccessImpl implements LoadingSuccess {
  const _$LoadingSuccessImpl();

  @override
  String toString() {
    return 'LoadingState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message) error,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? error,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingInitial value) initial,
    required TResult Function(LoadingLoading value) loading,
    required TResult Function(LoadingSuccess value) success,
    required TResult Function(LoadingError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingInitial value)? initial,
    TResult? Function(LoadingLoading value)? loading,
    TResult? Function(LoadingSuccess value)? success,
    TResult? Function(LoadingError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingInitial value)? initial,
    TResult Function(LoadingLoading value)? loading,
    TResult Function(LoadingSuccess value)? success,
    TResult Function(LoadingError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class LoadingSuccess implements LoadingState {
  const factory LoadingSuccess() = _$LoadingSuccessImpl;
}

/// @nodoc
abstract class _$$LoadingErrorImplCopyWith<$Res> {
  factory _$$LoadingErrorImplCopyWith(
    _$LoadingErrorImpl value,
    $Res Function(_$LoadingErrorImpl) then,
  ) = __$$LoadingErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$LoadingErrorImplCopyWithImpl<$Res>
    extends _$LoadingStateCopyWithImpl<$Res, _$LoadingErrorImpl>
    implements _$$LoadingErrorImplCopyWith<$Res> {
  __$$LoadingErrorImplCopyWithImpl(
    _$LoadingErrorImpl _value,
    $Res Function(_$LoadingErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LoadingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$LoadingErrorImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$LoadingErrorImpl implements LoadingError {
  const _$LoadingErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'LoadingState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of LoadingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingErrorImplCopyWith<_$LoadingErrorImpl> get copyWith =>
      __$$LoadingErrorImplCopyWithImpl<_$LoadingErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String message)? error,
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
    required TResult Function(LoadingInitial value) initial,
    required TResult Function(LoadingLoading value) loading,
    required TResult Function(LoadingSuccess value) success,
    required TResult Function(LoadingError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingInitial value)? initial,
    TResult? Function(LoadingLoading value)? loading,
    TResult? Function(LoadingSuccess value)? success,
    TResult? Function(LoadingError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingInitial value)? initial,
    TResult Function(LoadingLoading value)? loading,
    TResult Function(LoadingSuccess value)? success,
    TResult Function(LoadingError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class LoadingError implements LoadingState {
  const factory LoadingError(final String message) = _$LoadingErrorImpl;

  String get message;

  /// Create a copy of LoadingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadingErrorImplCopyWith<_$LoadingErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
