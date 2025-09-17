import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:y_chat_admin/src/features/auth/domain/entities/user_entity.dart';
import 'package:y_chat_admin/src/features/auth/domain/entities/super_admin_response_entity.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = AuthInitial;

  const factory AuthState.loading() = AuthLoading;

  const factory AuthState.authenticated({
    required UserEntity user,
  }) = AuthAuthenticated;

  const factory AuthState.unauthenticated() = AuthUnauthenticated;

  const factory AuthState.error({
    required String message,
  }) = AuthError;

  const factory AuthState.passwordChanged() = AuthPasswordChanged;

  const factory AuthState.profileUpdated({
    required UserEntity user,
  }) = AuthProfileUpdated;

  const factory AuthState.superAdminRegistered({
    required SuperAdminResponseEntity superAdminResponse,
  }) = AuthSuperAdminRegistered;
}

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = LoginInitial;

  const factory LoginState.loading() = LoginLoading;

  const factory LoginState.success({
    required UserEntity user,
  }) = LoginSuccess;

  const factory LoginState.error({
    required String message,
  }) = LoginError;
}

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState.initial() = RegisterInitial;

  const factory RegisterState.loading() = RegisterLoading;

  const factory RegisterState.success({
    required UserEntity user,
  }) = RegisterSuccess;

  const factory RegisterState.error({
    required String message,
  }) = RegisterError;
}
