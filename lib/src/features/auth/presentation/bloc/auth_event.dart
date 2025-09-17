import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.freezed.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.login({
    required String email,
    required String password,
  }) = LoginEvent;

  const factory AuthEvent.register({
    required String email,
    required String password,
    required String confirmPassword,
    required String firstname,
    required String lastname,
    @Default(false) bool role,
  }) = RegisterEvent;

  const factory AuthEvent.registerSuperAdmin({
    String? firstName,
    String? lastName,
    required String email,
    required String password,
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

  const factory AuthEvent.initializeAuth() = InitializeAuthEvent;
}
