import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_event.freezed.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.getUsers({
    String? search,
    String? status,
    @Default(1) int page,
    @Default(20) int limit,
  }) = GetUsersEvent;

  const factory UserEvent.createUser({
    required String firstname,
    required String email,
    String? lastname,
    String? phone,
    String? role,
  }) = CreateUserEvent;

  const factory UserEvent.updateUser({
    required int userId,
    String? firstname,
    String? lastname,
    String? email,
    String? phone,
    String? role,
  }) = UpdateUserEvent;

  const factory UserEvent.deleteUser(int userId) = DeleteUserEvent;

  const factory UserEvent.updateUserStatus({
    required int userId,
    required String status,
  }) = UpdateUserStatusEvent;

  const factory UserEvent.banUser({
    required int userId,
    required String reason,
    required String banType,
  }) = BanUserEvent;

  const factory UserEvent.unbanUser(int userId) = UnbanUserEvent;

  const factory UserEvent.activateUser(int userId) = ActivateUserEvent;

  const factory UserEvent.deactivateUser({
    required int userId,
    required String reason,
  }) = DeactivateUserEvent;

  const factory UserEvent.clearError() = ClearUserErrorEvent;
}