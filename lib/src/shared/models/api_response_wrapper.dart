import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_response_wrapper.freezed.dart';
part 'api_response_wrapper.g.dart';

/// Generic API response wrapper following project standards
@Freezed(genericArgumentFactories: true)
class ApiResponseWrapper<T> with _$ApiResponseWrapper<T> {
  const factory ApiResponseWrapper({
    required bool success,
    required String message,
    T? data,
    String? error,
    Map<String, dynamic>? metadata,
  }) = _ApiResponseWrapper<T>;

  factory ApiResponseWrapper.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$ApiResponseWrapperFromJson(json, fromJsonT);
}

/// API response wrapper for success responses
@Freezed(genericArgumentFactories: true)
class ApiSuccessResponse<T> with _$ApiSuccessResponse<T> {
  const factory ApiSuccessResponse({
    required bool success,
    required String message,
    required T data,
    Map<String, dynamic>? metadata,
  }) = _ApiSuccessResponse<T>;

  factory ApiSuccessResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$ApiSuccessResponseFromJson(json, fromJsonT);
}

/// API response wrapper for error responses
@freezed
class ApiErrorResponse with _$ApiErrorResponse {
  const factory ApiErrorResponse({
    required bool success,
    required String message,
    String? error,
    Map<String, dynamic>? metadata,
  }) = _ApiErrorResponse;

  factory ApiErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorResponseFromJson(json);
}
