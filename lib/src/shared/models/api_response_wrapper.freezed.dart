// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_response_wrapper.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ApiResponseWrapper<T> _$ApiResponseWrapperFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object?) fromJsonT,
) {
  return _ApiResponseWrapper<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$ApiResponseWrapper<T> {
  bool get success => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  T? get data => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  /// Serializes this ApiResponseWrapper to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ApiResponseWrapper
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiResponseWrapperCopyWith<T, ApiResponseWrapper<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiResponseWrapperCopyWith<T, $Res> {
  factory $ApiResponseWrapperCopyWith(
    ApiResponseWrapper<T> value,
    $Res Function(ApiResponseWrapper<T>) then,
  ) = _$ApiResponseWrapperCopyWithImpl<T, $Res, ApiResponseWrapper<T>>;
  @useResult
  $Res call({
    bool success,
    String message,
    T? data,
    String? error,
    Map<String, dynamic>? metadata,
  });
}

/// @nodoc
class _$ApiResponseWrapperCopyWithImpl<
  T,
  $Res,
  $Val extends ApiResponseWrapper<T>
>
    implements $ApiResponseWrapperCopyWith<T, $Res> {
  _$ApiResponseWrapperCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiResponseWrapper
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? data = freezed,
    Object? error = freezed,
    Object? metadata = freezed,
  }) {
    return _then(
      _value.copyWith(
            success: null == success
                ? _value.success
                : success // ignore: cast_nullable_to_non_nullable
                      as bool,
            message: null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                      as String,
            data: freezed == data
                ? _value.data
                : data // ignore: cast_nullable_to_non_nullable
                      as T?,
            error: freezed == error
                ? _value.error
                : error // ignore: cast_nullable_to_non_nullable
                      as String?,
            metadata: freezed == metadata
                ? _value.metadata
                : metadata // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ApiResponseWrapperImplCopyWith<T, $Res>
    implements $ApiResponseWrapperCopyWith<T, $Res> {
  factory _$$ApiResponseWrapperImplCopyWith(
    _$ApiResponseWrapperImpl<T> value,
    $Res Function(_$ApiResponseWrapperImpl<T>) then,
  ) = __$$ApiResponseWrapperImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({
    bool success,
    String message,
    T? data,
    String? error,
    Map<String, dynamic>? metadata,
  });
}

/// @nodoc
class __$$ApiResponseWrapperImplCopyWithImpl<T, $Res>
    extends
        _$ApiResponseWrapperCopyWithImpl<T, $Res, _$ApiResponseWrapperImpl<T>>
    implements _$$ApiResponseWrapperImplCopyWith<T, $Res> {
  __$$ApiResponseWrapperImplCopyWithImpl(
    _$ApiResponseWrapperImpl<T> _value,
    $Res Function(_$ApiResponseWrapperImpl<T>) _then,
  ) : super(_value, _then);

  /// Create a copy of ApiResponseWrapper
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? data = freezed,
    Object? error = freezed,
    Object? metadata = freezed,
  }) {
    return _then(
      _$ApiResponseWrapperImpl<T>(
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
        data: freezed == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                  as T?,
        error: freezed == error
            ? _value.error
            : error // ignore: cast_nullable_to_non_nullable
                  as String?,
        metadata: freezed == metadata
            ? _value._metadata
            : metadata // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$ApiResponseWrapperImpl<T> implements _ApiResponseWrapper<T> {
  const _$ApiResponseWrapperImpl({
    required this.success,
    required this.message,
    this.data,
    this.error,
    final Map<String, dynamic>? metadata,
  }) : _metadata = metadata;

  factory _$ApiResponseWrapperImpl.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT,
  ) => _$$ApiResponseWrapperImplFromJson(json, fromJsonT);

  @override
  final bool success;
  @override
  final String message;
  @override
  final T? data;
  @override
  final String? error;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'ApiResponseWrapper<$T>(success: $success, message: $message, data: $data, error: $error, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiResponseWrapperImpl<T> &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    success,
    message,
    const DeepCollectionEquality().hash(data),
    error,
    const DeepCollectionEquality().hash(_metadata),
  );

  /// Create a copy of ApiResponseWrapper
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiResponseWrapperImplCopyWith<T, _$ApiResponseWrapperImpl<T>>
  get copyWith =>
      __$$ApiResponseWrapperImplCopyWithImpl<T, _$ApiResponseWrapperImpl<T>>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$ApiResponseWrapperImplToJson<T>(this, toJsonT);
  }
}

abstract class _ApiResponseWrapper<T> implements ApiResponseWrapper<T> {
  const factory _ApiResponseWrapper({
    required final bool success,
    required final String message,
    final T? data,
    final String? error,
    final Map<String, dynamic>? metadata,
  }) = _$ApiResponseWrapperImpl<T>;

  factory _ApiResponseWrapper.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT,
  ) = _$ApiResponseWrapperImpl<T>.fromJson;

  @override
  bool get success;
  @override
  String get message;
  @override
  T? get data;
  @override
  String? get error;
  @override
  Map<String, dynamic>? get metadata;

  /// Create a copy of ApiResponseWrapper
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiResponseWrapperImplCopyWith<T, _$ApiResponseWrapperImpl<T>>
  get copyWith => throw _privateConstructorUsedError;
}

ApiSuccessResponse<T> _$ApiSuccessResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object?) fromJsonT,
) {
  return _ApiSuccessResponse<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$ApiSuccessResponse<T> {
  bool get success => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  T get data => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  /// Serializes this ApiSuccessResponse to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ApiSuccessResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiSuccessResponseCopyWith<T, ApiSuccessResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiSuccessResponseCopyWith<T, $Res> {
  factory $ApiSuccessResponseCopyWith(
    ApiSuccessResponse<T> value,
    $Res Function(ApiSuccessResponse<T>) then,
  ) = _$ApiSuccessResponseCopyWithImpl<T, $Res, ApiSuccessResponse<T>>;
  @useResult
  $Res call({
    bool success,
    String message,
    T data,
    Map<String, dynamic>? metadata,
  });
}

/// @nodoc
class _$ApiSuccessResponseCopyWithImpl<
  T,
  $Res,
  $Val extends ApiSuccessResponse<T>
>
    implements $ApiSuccessResponseCopyWith<T, $Res> {
  _$ApiSuccessResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiSuccessResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? data = freezed,
    Object? metadata = freezed,
  }) {
    return _then(
      _value.copyWith(
            success: null == success
                ? _value.success
                : success // ignore: cast_nullable_to_non_nullable
                      as bool,
            message: null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                      as String,
            data: freezed == data
                ? _value.data
                : data // ignore: cast_nullable_to_non_nullable
                      as T,
            metadata: freezed == metadata
                ? _value.metadata
                : metadata // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ApiSuccessResponseImplCopyWith<T, $Res>
    implements $ApiSuccessResponseCopyWith<T, $Res> {
  factory _$$ApiSuccessResponseImplCopyWith(
    _$ApiSuccessResponseImpl<T> value,
    $Res Function(_$ApiSuccessResponseImpl<T>) then,
  ) = __$$ApiSuccessResponseImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({
    bool success,
    String message,
    T data,
    Map<String, dynamic>? metadata,
  });
}

/// @nodoc
class __$$ApiSuccessResponseImplCopyWithImpl<T, $Res>
    extends
        _$ApiSuccessResponseCopyWithImpl<T, $Res, _$ApiSuccessResponseImpl<T>>
    implements _$$ApiSuccessResponseImplCopyWith<T, $Res> {
  __$$ApiSuccessResponseImplCopyWithImpl(
    _$ApiSuccessResponseImpl<T> _value,
    $Res Function(_$ApiSuccessResponseImpl<T>) _then,
  ) : super(_value, _then);

  /// Create a copy of ApiSuccessResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? data = freezed,
    Object? metadata = freezed,
  }) {
    return _then(
      _$ApiSuccessResponseImpl<T>(
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
        data: freezed == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                  as T,
        metadata: freezed == metadata
            ? _value._metadata
            : metadata // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$ApiSuccessResponseImpl<T> implements _ApiSuccessResponse<T> {
  const _$ApiSuccessResponseImpl({
    required this.success,
    required this.message,
    required this.data,
    final Map<String, dynamic>? metadata,
  }) : _metadata = metadata;

  factory _$ApiSuccessResponseImpl.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT,
  ) => _$$ApiSuccessResponseImplFromJson(json, fromJsonT);

  @override
  final bool success;
  @override
  final String message;
  @override
  final T data;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'ApiSuccessResponse<$T>(success: $success, message: $message, data: $data, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiSuccessResponseImpl<T> &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    success,
    message,
    const DeepCollectionEquality().hash(data),
    const DeepCollectionEquality().hash(_metadata),
  );

  /// Create a copy of ApiSuccessResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiSuccessResponseImplCopyWith<T, _$ApiSuccessResponseImpl<T>>
  get copyWith =>
      __$$ApiSuccessResponseImplCopyWithImpl<T, _$ApiSuccessResponseImpl<T>>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$ApiSuccessResponseImplToJson<T>(this, toJsonT);
  }
}

abstract class _ApiSuccessResponse<T> implements ApiSuccessResponse<T> {
  const factory _ApiSuccessResponse({
    required final bool success,
    required final String message,
    required final T data,
    final Map<String, dynamic>? metadata,
  }) = _$ApiSuccessResponseImpl<T>;

  factory _ApiSuccessResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT,
  ) = _$ApiSuccessResponseImpl<T>.fromJson;

  @override
  bool get success;
  @override
  String get message;
  @override
  T get data;
  @override
  Map<String, dynamic>? get metadata;

  /// Create a copy of ApiSuccessResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiSuccessResponseImplCopyWith<T, _$ApiSuccessResponseImpl<T>>
  get copyWith => throw _privateConstructorUsedError;
}

ApiErrorResponse _$ApiErrorResponseFromJson(Map<String, dynamic> json) {
  return _ApiErrorResponse.fromJson(json);
}

/// @nodoc
mixin _$ApiErrorResponse {
  bool get success => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  /// Serializes this ApiErrorResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiErrorResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiErrorResponseCopyWith<ApiErrorResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiErrorResponseCopyWith<$Res> {
  factory $ApiErrorResponseCopyWith(
    ApiErrorResponse value,
    $Res Function(ApiErrorResponse) then,
  ) = _$ApiErrorResponseCopyWithImpl<$Res, ApiErrorResponse>;
  @useResult
  $Res call({
    bool success,
    String message,
    String? error,
    Map<String, dynamic>? metadata,
  });
}

/// @nodoc
class _$ApiErrorResponseCopyWithImpl<$Res, $Val extends ApiErrorResponse>
    implements $ApiErrorResponseCopyWith<$Res> {
  _$ApiErrorResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiErrorResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? error = freezed,
    Object? metadata = freezed,
  }) {
    return _then(
      _value.copyWith(
            success: null == success
                ? _value.success
                : success // ignore: cast_nullable_to_non_nullable
                      as bool,
            message: null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                      as String,
            error: freezed == error
                ? _value.error
                : error // ignore: cast_nullable_to_non_nullable
                      as String?,
            metadata: freezed == metadata
                ? _value.metadata
                : metadata // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ApiErrorResponseImplCopyWith<$Res>
    implements $ApiErrorResponseCopyWith<$Res> {
  factory _$$ApiErrorResponseImplCopyWith(
    _$ApiErrorResponseImpl value,
    $Res Function(_$ApiErrorResponseImpl) then,
  ) = __$$ApiErrorResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool success,
    String message,
    String? error,
    Map<String, dynamic>? metadata,
  });
}

/// @nodoc
class __$$ApiErrorResponseImplCopyWithImpl<$Res>
    extends _$ApiErrorResponseCopyWithImpl<$Res, _$ApiErrorResponseImpl>
    implements _$$ApiErrorResponseImplCopyWith<$Res> {
  __$$ApiErrorResponseImplCopyWithImpl(
    _$ApiErrorResponseImpl _value,
    $Res Function(_$ApiErrorResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ApiErrorResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? error = freezed,
    Object? metadata = freezed,
  }) {
    return _then(
      _$ApiErrorResponseImpl(
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
        error: freezed == error
            ? _value.error
            : error // ignore: cast_nullable_to_non_nullable
                  as String?,
        metadata: freezed == metadata
            ? _value._metadata
            : metadata // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiErrorResponseImpl implements _ApiErrorResponse {
  const _$ApiErrorResponseImpl({
    required this.success,
    required this.message,
    this.error,
    final Map<String, dynamic>? metadata,
  }) : _metadata = metadata;

  factory _$ApiErrorResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiErrorResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final String message;
  @override
  final String? error;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'ApiErrorResponse(success: $success, message: $message, error: $error, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiErrorResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    success,
    message,
    error,
    const DeepCollectionEquality().hash(_metadata),
  );

  /// Create a copy of ApiErrorResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiErrorResponseImplCopyWith<_$ApiErrorResponseImpl> get copyWith =>
      __$$ApiErrorResponseImplCopyWithImpl<_$ApiErrorResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiErrorResponseImplToJson(this);
  }
}

abstract class _ApiErrorResponse implements ApiErrorResponse {
  const factory _ApiErrorResponse({
    required final bool success,
    required final String message,
    final String? error,
    final Map<String, dynamic>? metadata,
  }) = _$ApiErrorResponseImpl;

  factory _ApiErrorResponse.fromJson(Map<String, dynamic> json) =
      _$ApiErrorResponseImpl.fromJson;

  @override
  bool get success;
  @override
  String get message;
  @override
  String? get error;
  @override
  Map<String, dynamic>? get metadata;

  /// Create a copy of ApiErrorResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiErrorResponseImplCopyWith<_$ApiErrorResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
