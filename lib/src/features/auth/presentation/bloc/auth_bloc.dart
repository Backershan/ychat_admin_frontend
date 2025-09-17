import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:y_chat_admin/src/features/auth/domain/usecases/login_usecase.dart';
import 'package:y_chat_admin/src/features/auth/domain/usecases/register_usecase.dart';
import 'package:y_chat_admin/src/features/auth/domain/usecases/register_super_admin_usecase.dart';
import 'package:y_chat_admin/src/features/auth/domain/repositories/auth_repository.dart';
import 'package:y_chat_admin/src/features/auth/presentation/bloc/auth_event.dart';
import 'package:y_chat_admin/src/features/auth/presentation/bloc/auth_state.dart';
import 'package:y_chat_admin/src/shared/models/failure.dart';
import 'dart:developer' as developer;

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final LoginUseCase _loginUseCase;
  final RegisterUseCase _registerUseCase;
  final RegisterSuperAdminUseCase _registerSuperAdminUseCase;
  final AuthRepository _authRepository;

  AuthBloc({
    required LoginUseCase loginUseCase,
    required RegisterUseCase registerUseCase,
    required RegisterSuperAdminUseCase registerSuperAdminUseCase,
    required AuthRepository authRepository,
  })  : _loginUseCase = loginUseCase,
        _registerUseCase = registerUseCase,
        _registerSuperAdminUseCase = registerSuperAdminUseCase,
        _authRepository = authRepository,
        super(const AuthState.initial()) {
    on<LoginEvent>(_onLogin);
    on<RegisterEvent>(_onRegister);
    on<RegisterSuperAdminEvent>(_onRegisterSuperAdmin);
    on<LogoutEvent>(_onLogout);
    on<CheckAuthStatusEvent>(_onCheckAuthStatus);
    on<RefreshTokenEvent>(_onRefreshToken);
    on<ChangePasswordEvent>(_onChangePassword);
    on<UpdateProfileEvent>(_onUpdateProfile);
    on<ClearErrorEvent>(_onClearError);
  }

  Future<void> _onLogin(LoginEvent event, Emitter<AuthState> emit) async {
    developer.log('🔐 Login event received', name: 'AuthBloc');
    emit(const AuthState.loading());

    final result = await _loginUseCase(
      username: event.username,
      password: event.password,
    );

    result.fold(
      (failure) {
        developer.log('❌ Login failed: ${failure.message}', name: 'AuthBloc');
        emit(AuthState.error(message: _getErrorMessage(failure)));
      },
      (authEntity) {
        developer.log('✅ Login successful for user: ${authEntity.user.username}', name: 'AuthBloc');
        emit(AuthState.authenticated(user: authEntity.user));
      },
    );
  }

  Future<void> _onRegister(RegisterEvent event, Emitter<AuthState> emit) async {
    developer.log('📝 Register event received', name: 'AuthBloc');
    emit(const AuthState.loading());

    final result = await _registerUseCase(
      username: event.username,
      email: event.email,
      password: event.password,
      confirmPassword: event.confirmPassword,
      firstName: event.firstName,
      lastName: event.lastName,
      phoneNumber: event.phoneNumber,
      department: event.department,
      position: event.position,
      isAdmin: event.isAdmin,
    );

    result.fold(
      (failure) {
        developer.log('❌ Registration failed: ${failure.message}', name: 'AuthBloc');
        emit(AuthState.error(message: _getErrorMessage(failure)));
      },
      (authEntity) {
        developer.log('✅ Registration successful for user: ${authEntity.user.username}', name: 'AuthBloc');
        emit(AuthState.authenticated(user: authEntity.user));
      },
    );
  }

  Future<void> _onRegisterSuperAdmin(RegisterSuperAdminEvent event, Emitter<AuthState> emit) async {
    developer.log('👑 Register SuperAdmin event received', name: 'AuthBloc');
    emit(const AuthState.loading());

    final result = await _registerSuperAdminUseCase(
      name: event.name,
      email: event.email,
      phone: event.phone,
      password: event.password,
      location: event.location,
    );

    result.fold(
      (failure) {
        developer.log('❌ SuperAdmin registration failed: ${failure.message}', name: 'AuthBloc');
        emit(AuthState.error(message: _getErrorMessage(failure)));
      },
      (superAdminResponse) {
        developer.log('✅ SuperAdmin registration successful: ${superAdminResponse.data.name}', name: 'AuthBloc');
        emit(AuthState.superAdminRegistered(superAdminResponse: superAdminResponse));
      },
    );
  }

  Future<void> _onLogout(LogoutEvent event, Emitter<AuthState> emit) async {
    developer.log('🚪 Logout event received', name: 'AuthBloc');
    emit(const AuthState.loading());

    final result = await _authRepository.logout();

    result.fold(
      (failure) {
        developer.log('❌ Logout failed: ${failure.message}', name: 'AuthBloc');
        emit(AuthState.error(message: _getErrorMessage(failure)));
      },
      (_) {
        developer.log('✅ Logout successful', name: 'AuthBloc');
        emit(const AuthState.unauthenticated());
      },
    );
  }

  Future<void> _onCheckAuthStatus(CheckAuthStatusEvent event, Emitter<AuthState> emit) async {
    developer.log('🔍 Checking auth status', name: 'AuthBloc');
    emit(const AuthState.loading());

    final isAuthenticatedResult = await _authRepository.isAuthenticated();
    
    await isAuthenticatedResult.fold(
      (failure) async {
        developer.log('❌ Auth check failed: ${failure.message}', name: 'AuthBloc');
        emit(AuthState.error(message: _getErrorMessage(failure)));
      },
      (isAuthenticated) async {
        if (isAuthenticated) {
          final userResult = await _authRepository.getCurrentUser();
          userResult.fold(
            (failure) {
              developer.log('❌ Get current user failed: ${failure.message}', name: 'AuthBloc');
              emit(AuthState.error(message: _getErrorMessage(failure)));
            },
            (user) {
              developer.log('✅ User authenticated: ${user.username}', name: 'AuthBloc');
              emit(AuthState.authenticated(user: user));
            },
          );
        } else {
          developer.log('ℹ️ User not authenticated', name: 'AuthBloc');
          emit(const AuthState.unauthenticated());
        }
      },
    );
  }

  Future<void> _onRefreshToken(RefreshTokenEvent event, Emitter<AuthState> emit) async {
    developer.log('🔄 Refreshing token', name: 'AuthBloc');
    
    final result = await _authRepository.refreshToken();

    result.fold(
      (failure) {
        developer.log('❌ Token refresh failed: ${failure.message}', name: 'AuthBloc');
        emit(AuthState.error(message: _getErrorMessage(failure)));
      },
      (authEntity) {
        developer.log('✅ Token refreshed successfully', name: 'AuthBloc');
        emit(AuthState.authenticated(user: authEntity.user));
      },
    );
  }

  Future<void> _onChangePassword(ChangePasswordEvent event, Emitter<AuthState> emit) async {
    developer.log('🔑 Changing password', name: 'AuthBloc');
    emit(const AuthState.loading());

    final result = await _authRepository.changePassword(
      currentPassword: event.currentPassword,
      newPassword: event.newPassword,
    );

    result.fold(
      (failure) {
        developer.log('❌ Password change failed: ${failure.message}', name: 'AuthBloc');
        emit(AuthState.error(message: _getErrorMessage(failure)));
      },
      (_) {
        developer.log('✅ Password changed successfully', name: 'AuthBloc');
        emit(const AuthState.passwordChanged());
      },
    );
  }

  Future<void> _onUpdateProfile(UpdateProfileEvent event, Emitter<AuthState> emit) async {
    developer.log('👤 Updating profile', name: 'AuthBloc');
    emit(const AuthState.loading());

    final result = await _authRepository.updateProfile(
      firstName: event.firstName,
      lastName: event.lastName,
      phoneNumber: event.phoneNumber,
      department: event.department,
      position: event.position,
    );

    result.fold(
      (failure) {
        developer.log('❌ Profile update failed: ${failure.message}', name: 'AuthBloc');
        emit(AuthState.error(message: _getErrorMessage(failure)));
      },
      (_) async {
        // Get updated user data
        final userResult = await _authRepository.getCurrentUser();
        userResult.fold(
          (failure) {
            developer.log('❌ Get updated user failed: ${failure.message}', name: 'AuthBloc');
            emit(AuthState.error(message: _getErrorMessage(failure)));
          },
          (user) {
            developer.log('✅ Profile updated successfully', name: 'AuthBloc');
            emit(AuthState.profileUpdated(user: user));
          },
        );
      },
    );
  }

  void _onClearError(ClearErrorEvent event, Emitter<AuthState> emit) {
    developer.log('🧹 Clearing error', name: 'AuthBloc');
    emit(const AuthState.initial());
  }

  String _getErrorMessage(Failure failure) {
    return failure.when(
      server: (message, statusCode, errorCode) => message,
      network: (message) => 'Network error: $message',
      cache: (message) => 'Cache error: $message',
      validation: (message, errors) => message,
      unauthorized: (message) => 'Unauthorized: $message',
      forbidden: (message) => 'Forbidden: $message',
      notFound: (message) => 'Not found: $message',
      timeout: (message) => 'Timeout: $message',
      unknown: (message, originalError) => 'Unknown error: $message',
    );
  }
}
