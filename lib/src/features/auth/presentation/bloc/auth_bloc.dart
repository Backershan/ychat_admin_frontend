import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:y_chat_admin/src/features/auth/domain/usecases/login_usecase.dart';
import 'package:y_chat_admin/src/features/auth/domain/usecases/register_usecase.dart';
import 'package:y_chat_admin/src/features/auth/domain/usecases/register_super_admin_usecase.dart';
import 'package:y_chat_admin/src/features/auth/domain/repositories/auth_repository.dart';
import 'package:y_chat_admin/src/features/auth/domain/entities/auth_entity.dart';
import 'package:y_chat_admin/src/features/auth/domain/entities/user_entity.dart';
import 'package:y_chat_admin/src/features/auth/presentation/bloc/auth_event.dart';
import 'package:y_chat_admin/src/features/auth/presentation/bloc/auth_state.dart';
import 'package:y_chat_admin/src/shared/models/failure.dart';
import 'package:y_chat_admin/src/core/services/auth_service.dart';
import 'dart:developer' as developer;

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final LoginUseCase _loginUseCase;
  final RegisterUseCase _registerUseCase;
  final RegisterSuperAdminUseCase _registerSuperAdminUseCase;
  final AuthRepository _authRepository;
  final AuthService _authService;
  StreamSubscription<AuthServiceState>? _authStateSubscription;

  AuthBloc({
    required LoginUseCase loginUseCase,
    required RegisterUseCase registerUseCase,
    required RegisterSuperAdminUseCase registerSuperAdminUseCase,
    required AuthRepository authRepository,
    required AuthService authService,
  })  : _loginUseCase = loginUseCase,
        _registerUseCase = registerUseCase,
        _registerSuperAdminUseCase = registerSuperAdminUseCase,
        _authRepository = authRepository,
        _authService = authService,
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
    on<InitializeAuthEvent>(_onInitializeAuth);
    
    // Listen to auth service state changes
    _authStateSubscription = _authService.authStateStream.listen((authState) {
      switch (authState) {
        case AuthServiceState.unauthenticated:
          // Only emit unauthenticated if we're not already in that state
          if (state is! AuthUnauthenticated) {
            emit(const AuthState.unauthenticated());
          }
          break;
        case AuthServiceState.authenticated:
          final user = _authService.currentUser;
          if (user != null) {
            emit(AuthState.authenticated(user: user));
          }
          break;
        case AuthServiceState.accessTokenExpired:
          add(const AuthEvent.refreshToken());
          break;
        case AuthServiceState.refreshTokenExpired:
          add(const AuthEvent.logout());
          break;
      }
    });
  }

  @override
  Future<void> close() {
    _authStateSubscription?.cancel();
    return super.close();
  }

  Future<void> _onLogin(LoginEvent event, Emitter<AuthState> emit) async {
    developer.log('🔐 Login event received', name: 'AuthBloc');
    emit(const AuthState.loading());

    final result = await _loginUseCase(
      email: event.email,
      password: event.password,
    );

    await result.fold(
      (failure) async {
        developer.log('❌ Login failed: ${failure.message}', name: 'AuthBloc');
        emit(AuthState.error(message: _getErrorMessage(failure)));
      },
      (loginResponse) async {
        developer.log('✅ Login successful for user: ${loginResponse.data.name}', name: 'AuthBloc');
        
        // Convert LoginResponseEntity to AuthEntity
        final authEntity = AuthEntity(
          token: loginResponse.data.token,
          refreshToken: loginResponse.data.refreshToken,
          expiresAt: loginResponse.data.expiresAt,
          refreshTokenExpiry: loginResponse.data.refreshTokenExpiry,
          user: UserEntity(
            id: loginResponse.data.id,
            name: loginResponse.data.name,
            email: loginResponse.data.email,
            role: loginResponse.data.role,
          ),
        );
        
        await _authService.saveAuthData(authEntity);
        emit(AuthState.authenticated(user: authEntity.user));
      },
    );
  }

  Future<void> _onRegister(RegisterEvent event, Emitter<AuthState> emit) async {
    developer.log('📝 Register event received', name: 'AuthBloc');
    emit(const AuthState.loading());

    final result = await _registerUseCase(
      email: event.email,
      password: event.password,
      confirmPassword: event.confirmPassword,
      firstName: event.firstname,
      lastName: event.lastname,
      role: event.role,
    );

    await result.fold(
      (failure) async {
        developer.log('❌ Registration failed: ${failure.message}', name: 'AuthBloc');
        emit(AuthState.error(message: _getErrorMessage(failure)));
      },
      (loginResponse) async {
        developer.log('✅ Registration successful for user: ${loginResponse.data.name}', name: 'AuthBloc');
        
        // Convert LoginResponseEntity to AuthEntity
        final authEntity = AuthEntity(
          token: loginResponse.data.token,
          refreshToken: loginResponse.data.refreshToken,
          expiresAt: loginResponse.data.expiresAt,
          refreshTokenExpiry: loginResponse.data.refreshTokenExpiry,
          user: UserEntity(
            id: loginResponse.data.id,
            name: loginResponse.data.name,
            email: loginResponse.data.email,
            role: loginResponse.data.role,
          ),
        );
        
        await _authService.saveAuthData(authEntity);
        emit(AuthState.authenticated(user: authEntity.user));
      },
    );
  }

  Future<void> _onRegisterSuperAdmin(RegisterSuperAdminEvent event, Emitter<AuthState> emit) async {
    developer.log('👑 Register SuperAdmin event received', name: 'AuthBloc');
    emit(const AuthState.loading());

    final result = await _registerSuperAdminUseCase(
      firstName: event.firstName,
      lastName: event.lastName,
      email: event.email,
      password: event.password,
    );

    await result.fold(
      (failure) async {
        developer.log('❌ SuperAdmin registration failed: ${failure.message}', name: 'AuthBloc');
        emit(AuthState.error(message: _getErrorMessage(failure)));
      },
      (superAdminResponse) async {
        developer.log('✅ SuperAdmin registration successful: ${superAdminResponse.data.name}', name: 'AuthBloc');
        
        // Convert SuperAdminResponseEntity to AuthEntity
        final authEntity = AuthEntity(
          token: superAdminResponse.data.token,
          refreshToken: superAdminResponse.data.refreshToken,
          expiresAt: superAdminResponse.data.expiresAt,
          refreshTokenExpiry: superAdminResponse.data.refreshTokenExpiry,
          user: UserEntity(
            id: superAdminResponse.data.id,
            name: superAdminResponse.data.name,
            email: superAdminResponse.data.email,
            role: superAdminResponse.data.role,
          ),
        );
        
        await _authService.saveAuthData(authEntity);
        emit(AuthState.authenticated(user: authEntity.user));
      },
    );
  }

  Future<void> _onLogout(LogoutEvent event, Emitter<AuthState> emit) async {
    developer.log('🚪 Logout event received', name: 'AuthBloc');
    emit(const AuthState.loading());

    try {
      await _authRepository.logout();
      developer.log('✅ Logout API call successful', name: 'AuthBloc');
    } catch (e) {
      developer.log('⚠️ Logout API call failed: $e', name: 'AuthBloc');
      // Continue with local logout even if API fails
    }

    // Always clear local auth data
    await _authService.logout();
    developer.log('✅ Local logout successful', name: 'AuthBloc');
    
    // Emit unauthenticated state - this will trigger the BlocListener to redirect
    emit(const AuthState.unauthenticated());
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
        // If refresh fails, logout user
        add(const AuthEvent.logout());
      },
      (authEntity) async {
        developer.log('✅ Token refreshed successfully', name: 'AuthBloc');
        await _authService.updateTokens(
          authEntity.token,
          authEntity.refreshToken,
          authEntity.expiresAt,
        );
        emit(AuthState.authenticated(user: authEntity.user));
      },
    );
  }

  Future<void> _onInitializeAuth(InitializeAuthEvent event, Emitter<AuthState> emit) async {
    developer.log('🚀 Initializing auth', name: 'AuthBloc');
    
    final currentState = _authService.currentAuthState;
    switch (currentState) {
      case AuthServiceState.unauthenticated:
        emit(const AuthState.unauthenticated());
        break;
      case AuthServiceState.authenticated:
        final user = _authService.currentUser;
        if (user != null) {
          emit(AuthState.authenticated(user: user));
        } else {
          emit(const AuthState.unauthenticated());
        }
        break;
      case AuthServiceState.accessTokenExpired:
        // TODO: Re-enable refresh token functionality when backend endpoint is available
        // For now, just logout user when token expires
        add(const AuthEvent.logout());
        break;
      case AuthServiceState.refreshTokenExpired:
        add(const AuthEvent.logout());
        break;
    }
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
