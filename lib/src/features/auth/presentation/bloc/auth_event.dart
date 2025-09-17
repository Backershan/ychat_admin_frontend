import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.freezed.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.login({
    required String username,
    required String password,
  }) = LoginEvent;

  const factory AuthEvent.register({
    required String username,
    required String email,
    required String password,
    required String confirmPassword,
    required String firstName,
    required String lastName,
    String? phoneNumber,
    String? department,
    String? position,
    @Default(false) bool isAdmin,
  }) = RegisterEvent;

  const factory AuthEvent.registerSuperAdmin({
    required String name,
    required String email,
    required String phone,
    required String password,
    String? location,
  }) = RegisterSuperAdminEvent;

  const factory AuthEvent.logout() = LogoutEvent;

  const factory AuthEvent.checkAuthStatus() = CheckAuthStatusEvent;

  const factory AuthEvent.refreshToken() = RefreshTokenEvent;

  const factory AuthEvent.changePassword({
    required String currentPassword,
    required String newPassword,
  }) = ChangePasswordEvent;

  const factory AuthEvent.updateProfile({
    String? firstName,
    String? lastName,
    String? phoneNumber,
    String? department,
    String? position,
  }) = UpdateProfileEvent;

  const factory AuthEvent.clearError() = ClearErrorEvent;
}
