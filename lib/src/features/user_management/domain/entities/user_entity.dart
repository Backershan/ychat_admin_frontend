import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entity.freezed.dart';
part 'user_entity.g.dart';

@freezed
class UserEntity with _$UserEntity {
  const factory UserEntity({
    required int id,
    required String firstname,
    required String email,
    required String status,
    String? lastname,
    String? phone,
    String? avatar,
    DateTime? lastLogin,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? banReason,
    String? banType,
    DateTime? bannedAt,
    String? deactivationReason,
    DateTime? deactivatedAt,
  }) = _UserEntity;

  factory UserEntity.fromJson(Map<String, dynamic> json) =>
      _$UserEntityFromJson(json);
}

@freezed
class UserListEntity with _$UserListEntity {
  const factory UserListEntity({
    required List<UserEntity> users,
    required UserPaginationEntity pagination,
  }) = _UserListEntity;

  factory UserListEntity.fromJson(Map<String, dynamic> json) =>
      _$UserListEntityFromJson(json);
}

@freezed
class UserPaginationEntity with _$UserPaginationEntity {
  const factory UserPaginationEntity({
    required int total,
    required int page,
    required int pages,
    required int limit,
  }) = _UserPaginationEntity;

  factory UserPaginationEntity.fromJson(Map<String, dynamic> json) =>
      _$UserPaginationEntityFromJson(json);
}

@freezed
class CreateUserRequest with _$CreateUserRequest {
  const factory CreateUserRequest({
    required String firstname,
    required String email,
    String? lastname,
    String? phone,
    String? password,
    String? status,
  }) = _CreateUserRequest;

  factory CreateUserRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateUserRequestFromJson(json);
}

@freezed
class UpdateUserRequest with _$UpdateUserRequest {
  const factory UpdateUserRequest({
    required int userId,
    String? firstname,
    String? lastname,
    String? email,
    String? phone,
    String? status,
  }) = _UpdateUserRequest;

  factory UpdateUserRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserRequestFromJson(json);
}

@freezed
class UpdateUserStatusRequest with _$UpdateUserStatusRequest {
  const factory UpdateUserStatusRequest({
    required int userId,
    required String status,
  }) = _UpdateUserStatusRequest;

  factory UpdateUserStatusRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserStatusRequestFromJson(json);
}

@freezed
class BanUserRequest with _$BanUserRequest {
  const factory BanUserRequest({
    required String reason,
    required String banType,
  }) = _BanUserRequest;

  factory BanUserRequest.fromJson(Map<String, dynamic> json) =>
      _$BanUserRequestFromJson(json);
}

@freezed
class DeactivateUserRequest with _$DeactivateUserRequest {
  const factory DeactivateUserRequest({
    required String reason,
  }) = _DeactivateUserRequest;

  factory DeactivateUserRequest.fromJson(Map<String, dynamic> json) =>
      _$DeactivateUserRequestFromJson(json);
}

@freezed
class UserSearchParams with _$UserSearchParams {
  const factory UserSearchParams({
    String? search,
    String? status,
    int? page,
    int? limit,
  }) = _UserSearchParams;

  factory UserSearchParams.fromJson(Map<String, dynamic> json) =>
      _$UserSearchParamsFromJson(json);
}