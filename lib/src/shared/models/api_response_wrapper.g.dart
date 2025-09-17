// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_response_wrapper.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApiResponseWrapperImpl<T> _$$ApiResponseWrapperImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => _$ApiResponseWrapperImpl<T>(
  success: json['success'] as bool,
  message: json['message'] as String,
  data: _$nullableGenericFromJson(json['data'], fromJsonT),
  error: json['error'] as String?,
  metadata: json['metadata'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$$ApiResponseWrapperImplToJson<T>(
  _$ApiResponseWrapperImpl<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'data': _$nullableGenericToJson(instance.data, toJsonT),
  'error': instance.error,
  'metadata': instance.metadata,
};

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) => input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) => input == null ? null : toJson(input);

_$ApiSuccessResponseImpl<T> _$$ApiSuccessResponseImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => _$ApiSuccessResponseImpl<T>(
  success: json['success'] as bool,
  message: json['message'] as String,
  data: fromJsonT(json['data']),
  metadata: json['metadata'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$$ApiSuccessResponseImplToJson<T>(
  _$ApiSuccessResponseImpl<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'data': toJsonT(instance.data),
  'metadata': instance.metadata,
};

_$ApiErrorResponseImpl _$$ApiErrorResponseImplFromJson(
  Map<String, dynamic> json,
) => _$ApiErrorResponseImpl(
  success: json['success'] as bool,
  message: json['message'] as String,
  error: json['error'] as String?,
  metadata: json['metadata'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$$ApiErrorResponseImplToJson(
  _$ApiErrorResponseImpl instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'error': instance.error,
  'metadata': instance.metadata,
};
