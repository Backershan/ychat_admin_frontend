import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';
import 'package:y_chat_admin/src/core/api/api_config.dart';
import 'package:y_chat_admin/src/core/services/token_storage_service.dart';
import 'package:y_chat_admin/src/core/services/auth_service.dart';
import 'package:y_chat_admin/src/core/interceptors/auth_interceptor.dart';
import 'package:y_chat_admin/src/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:y_chat_admin/src/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:y_chat_admin/src/features/auth/domain/repositories/auth_repository.dart';
import 'package:y_chat_admin/src/features/auth/domain/usecases/login_usecase.dart';
import 'package:y_chat_admin/src/features/auth/domain/usecases/register_usecase.dart';
import 'package:y_chat_admin/src/features/auth/domain/usecases/register_super_admin_usecase.dart';
import 'package:y_chat_admin/src/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:y_chat_admin/src/features/profile/data/datasources/profile_remote_datasource.dart';
import 'package:y_chat_admin/src/features/profile/data/repositories/profile_repository_impl.dart';
import 'package:y_chat_admin/src/features/profile/domain/repositories/profile_repository.dart';
import 'package:y_chat_admin/src/features/profile/domain/usecases/get_profile_usecase.dart';
import 'package:y_chat_admin/src/features/profile/domain/usecases/update_profile_usecase.dart';
import 'package:y_chat_admin/src/features/profile/domain/usecases/change_password_usecase.dart';
import 'package:y_chat_admin/src/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:y_chat_admin/src/features/dashboard/data/datasources/dashboard_remote_datasource.dart';
import 'package:y_chat_admin/src/features/dashboard/data/repositories/dashboard_repository_impl.dart';
import 'package:y_chat_admin/src/features/dashboard/domain/repositories/dashboard_repository.dart';
import 'package:y_chat_admin/src/features/dashboard/domain/usecases/get_dashboard_data_usecase.dart';
import 'package:y_chat_admin/src/features/dashboard/presentation/bloc/dashboard_bloc.dart';
import 'package:y_chat_admin/src/features/settings/data/datasources/settings_remote_datasource.dart';
import 'package:y_chat_admin/src/features/settings/data/repositories/settings_repository_impl.dart';
import 'package:y_chat_admin/src/features/settings/domain/repositories/settings_repository.dart';
import 'package:y_chat_admin/src/features/settings/domain/usecases/get_settings_usecase.dart';
import 'package:y_chat_admin/src/features/settings/domain/usecases/update_settings_usecase.dart';
import 'package:y_chat_admin/src/features/settings/presentation/bloc/settings_bloc.dart';

final getIt = GetIt.instance;

Future<void> configureDependencies() async {
  // Services - Initialize them first
  final tokenStorage = await TokenStorageService.getInstance();
  final authService = await AuthService.getInstance();
  
  getIt.registerSingleton<TokenStorageService>(tokenStorage);
  getIt.registerSingleton<AuthService>(authService);

  // External dependencies
  getIt.registerLazySingleton<Dio>(() {
    final dio = Dio(BaseOptions(
      baseUrl: ApiConfig.baseUrl,
      connectTimeout: ApiConfig.connectTimeout,
      receiveTimeout: ApiConfig.receiveTimeout,
      sendTimeout: ApiConfig.sendTimeout,
      headers: ApiConfig.defaultHeaders,
    ));

    // Add interceptors
    dio.interceptors.add(LogInterceptor(
      requestBody: true,
      responseBody: true,
      error: true,
    ));

    // Add auth interceptor
    dio.interceptors.add(AuthInterceptor(
      tokenStorage: tokenStorage,
      dio: dio,
    ));

    return dio;
  });

  // Data sources - using real API
  getIt.registerLazySingleton<AuthRemoteDataSource>(
    () => AuthRemoteDataSourceImpl(dio: getIt<Dio>()),
  );

  getIt.registerLazySingleton<ProfileRemoteDataSource>(
    () => ProfileRemoteDataSourceImpl(dio: getIt<Dio>()),
  );

  getIt.registerLazySingleton<DashboardRemoteDataSource>(
    () => DashboardRemoteDataSourceImpl(dio: getIt<Dio>()),
  );

  // Repositories
  getIt.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(remoteDataSource: getIt<AuthRemoteDataSource>()),
  );

  getIt.registerLazySingleton<ProfileRepository>(
    () => ProfileRepositoryImpl(remoteDataSource: getIt<ProfileRemoteDataSource>()),
  );

  getIt.registerLazySingleton<DashboardRepository>(
    () => DashboardRepositoryImpl(remoteDataSource: getIt<DashboardRemoteDataSource>()),
  );

  // Use cases
  getIt.registerLazySingleton<LoginUseCase>(
    () => LoginUseCase(getIt<AuthRepository>()),
  );

  getIt.registerLazySingleton<RegisterUseCase>(
    () => RegisterUseCase(getIt<AuthRepository>()),
  );

  getIt.registerLazySingleton<RegisterSuperAdminUseCase>(
    () => RegisterSuperAdminUseCase(getIt<AuthRepository>()),
  );

  getIt.registerLazySingleton<GetProfileUseCase>(
    () => GetProfileUseCase(getIt<ProfileRepository>()),
  );

  getIt.registerLazySingleton<UpdateProfileUseCase>(
    () => UpdateProfileUseCase(getIt<ProfileRepository>()),
  );

  getIt.registerLazySingleton<ChangePasswordUseCase>(
    () => ChangePasswordUseCase(getIt<ProfileRepository>()),
  );

  getIt.registerLazySingleton<GetDashboardDataUseCase>(
    () => GetDashboardDataUseCase(repository: getIt<DashboardRepository>()),
  );

  // Settings
  getIt.registerLazySingleton<SettingsRemoteDataSource>(
    () => SettingsRemoteDataSourceImpl(dio: getIt<Dio>()),
  );

  getIt.registerLazySingleton<SettingsRepository>(
    () => SettingsRepositoryImpl(remoteDataSource: getIt<SettingsRemoteDataSource>()),
  );

  getIt.registerLazySingleton<GetSettingsUseCase>(
    () => GetSettingsUseCase(repository: getIt<SettingsRepository>()),
  );

  getIt.registerLazySingleton<UpdateSettingsUseCase>(
    () => UpdateSettingsUseCase(repository: getIt<SettingsRepository>()),
  );

  // BLoCs
  getIt.registerFactory<AuthBloc>(
    () => AuthBloc(
      loginUseCase: getIt<LoginUseCase>(),
      registerUseCase: getIt<RegisterUseCase>(),
      registerSuperAdminUseCase: getIt<RegisterSuperAdminUseCase>(),
      authRepository: getIt<AuthRepository>(),
      authService: getIt<AuthService>(),
    ),
  );

  getIt.registerFactory<ProfileBloc>(
    () => ProfileBloc(
      getProfileUseCase: getIt<GetProfileUseCase>(),
      updateProfileUseCase: getIt<UpdateProfileUseCase>(),
      changePasswordUseCase: getIt<ChangePasswordUseCase>(),
    ),
  );

  getIt.registerFactory<DashboardBloc>(
    () => DashboardBloc(
      getDashboardDataUseCase: getIt<GetDashboardDataUseCase>(),
    ),
  );

  getIt.registerFactory<SettingsBloc>(
    () => SettingsBloc(
      getSettingsUseCase: getIt<GetSettingsUseCase>(),
      updateSettingsUseCase: getIt<UpdateSettingsUseCase>(),
    ),
  );
}
