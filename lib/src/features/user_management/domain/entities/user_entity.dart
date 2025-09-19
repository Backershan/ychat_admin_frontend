import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entity.freezed.dart';

@freezed
 abstract class UserEntity with _$UserEntity {
  const factory UserEntity({
    required String id,
    required String name,
    required String phone,
    required String uid,
    required String email,
    required UserStatus status,
    required String ipAddress,
    required DateTime createdAt,
    required DateTime updatedAt,
    String? avatar,
    String? role,
    String? lastLoginAt,
    String? deviceInfo,
  }) = _UserEntity;
}

@freezed
class UserListEntity with _$UserListEntity {
  const factory UserListEntity({
    required List<UserEntity> users,
    required int total,
    required int page,
    required int limit,
  }) = _UserListEntity;
}

@freezed
class UpdateUserStatusRequest with _$UpdateUserStatusRequest {
  const factory UpdateUserStatusRequest({
    required String userId,
    required UserStatus status,
  }) = _UpdateUserStatusRequest;
}

enum UserStatus {
  @JsonValue('active')
  active,
  @JsonValue('inactive')
  inactive,
  @JsonValue('suspended')
  suspended,
  @JsonValue('banned')
  banned,
}

extension UserStatusExtension on UserStatus {
  String get displayName {
    switch (this) {
      case UserStatus.active:
        return 'Active';
      case UserStatus.inactive:
        return 'Inactive';
      case UserStatus.suspended:
        return 'Suspended';
      case UserStatus.banned:
        return 'Banned';
    }
  }

  String get color {
    switch (this) {
      case UserStatus.active:
        return 'green';
      case UserStatus.inactive:
        return 'orange';
      case UserStatus.suspended:
        return 'red';
      case UserStatus.banned:
        return 'red';
    }
  }
}
