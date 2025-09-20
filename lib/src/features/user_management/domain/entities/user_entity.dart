import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entity.freezed.dart';
part 'user_entity.g.dart';

@freezed
class UserEntity with _$UserEntity {
  const factory UserEntity({
    required int id,
    String? name, // Changed from firstname to name to match API
    String? email,
    String? status,
    bool? isActive, // Changed from is_active to isActive for consistency
    String? createdAt, // Changed from created_at to createdAt
    String? lastSeen, // Changed from last_seen to lastSeen
    // Keep additional fields for backward compatibility
    String? firstname,
    String? lastname,
    String? phone,
    String? uid,
    String? avatar,
    String? role,
    String? ipAddress,
    String? deviceInfo,
    String? lastLoginAt,
    String? updatedAt,
    String? banReason,
    String? banType,
    String? deactivationReason,
    bool? isBanned,
  }) = _UserEntity;

  factory UserEntity.fromJson(Map<String, dynamic> json) => _$UserEntityFromJson(json);
}

@freezed
class UserListResponse with _$UserListResponse {
  const factory UserListResponse({
    required bool success,
    required UserListData data,
    String? message, // Make message optional as it's not in the API response
  }) = _UserListResponse;

  factory UserListResponse.fromJson(Map<String, dynamic> json) => _$UserListResponseFromJson(json);
}

@freezed
class UserListData with _$UserListData {
  const factory UserListData({
    required List<UserEntity> users,
    required UserPagination pagination,
  }) = _UserListData;

  factory UserListData.fromJson(Map<String, dynamic> json) => _$UserListDataFromJson(json);
}

@freezed
class UserPagination with _$UserPagination {
  const factory UserPagination({
    required int total,
    required int page,
    required int pages,
    required int limit,
  }) = _UserPagination;

  factory UserPagination.fromJson(Map<String, dynamic> json) => _$UserPaginationFromJson(json);
}

@freezed
class UserActionResponse with _$UserActionResponse {
  const factory UserActionResponse({
    required bool success,
    required String message,
    UserEntity? data,
  }) = _UserActionResponse;

  factory UserActionResponse.fromJson(Map<String, dynamic> json) => _$UserActionResponseFromJson(json);
}

@freezed
class UserStatusUpdateRequest with _$UserStatusUpdateRequest {
  const factory UserStatusUpdateRequest({
    required String action,
    required UserStatusData data,
  }) = _UserStatusUpdateRequest;

  factory UserStatusUpdateRequest.fromJson(Map<String, dynamic> json) => _$UserStatusUpdateRequestFromJson(json);
}

@freezed
class UserStatusData with _$UserStatusData {
  const factory UserStatusData({
    required int userId,
    required String status,
  }) = _UserStatusData;

  factory UserStatusData.fromJson(Map<String, dynamic> json) => _$UserStatusDataFromJson(json);
}

@freezed
class UserBanRequest with _$UserBanRequest {
  const factory UserBanRequest({
    required String reason,
    required String banType,
  }) = _UserBanRequest;

  factory UserBanRequest.fromJson(Map<String, dynamic> json) => _$UserBanRequestFromJson(json);
}

@freezed
class UserDeactivationRequest with _$UserDeactivationRequest {
  const factory UserDeactivationRequest({
    required String reason,
  }) = _UserDeactivationRequest;

  factory UserDeactivationRequest.fromJson(Map<String, dynamic> json) => _$UserDeactivationRequestFromJson(json);
}

enum UserStatus {
  active,
  inactive,
  suspended,
  banned,
  pending,
}

enum UserRole {
  user,
  admin,
  superAdmin,
  moderator,
}

enum BanType {
  temporary,
  permanent,
}
