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
import 'package:y_chat_admin/src/features/ticketing/data/datasources/ticket_remote_datasource.dart';
import 'package:y_chat_admin/src/features/ticketing/data/repositories/ticket_repository_impl.dart';
import 'package:y_chat_admin/src/features/ticketing/domain/repositories/ticket_repository.dart';
import 'package:y_chat_admin/src/features/ticketing/domain/usecases/get_tickets_usecase.dart';
import 'package:y_chat_admin/src/features/ticketing/domain/usecases/get_ticket_by_id_usecase.dart';
import 'package:y_chat_admin/src/features/ticketing/domain/usecases/create_ticket_usecase.dart';
import 'package:y_chat_admin/src/features/ticketing/domain/usecases/update_ticket_status_usecase.dart';
import 'package:y_chat_admin/src/features/ticketing/domain/usecases/add_reply_to_ticket_usecase.dart';
import 'package:y_chat_admin/src/features/ticketing/domain/usecases/get_ticket_stats_usecase.dart';
import 'package:y_chat_admin/src/features/ticketing/domain/usecases/delete_ticket_usecase.dart';
import 'package:y_chat_admin/src/features/ticketing/presentation/bloc/ticket_bloc.dart';

// App Management
import 'package:y_chat_admin/src/features/app_management/data/datasources/app_remote_datasource.dart';
import 'package:y_chat_admin/src/features/app_management/data/repositories/app_repository_impl.dart';
import 'package:y_chat_admin/src/features/app_management/domain/repositories/app_repository.dart';
import 'package:y_chat_admin/src/features/app_management/domain/usecases/get_apps_usecase.dart';
import 'package:y_chat_admin/src/features/app_management/domain/usecases/create_app_usecase.dart';
import 'package:y_chat_admin/src/features/app_management/domain/usecases/update_app_usecase.dart';
import 'package:y_chat_admin/src/features/app_management/domain/usecases/delete_app_usecase.dart';
import 'package:y_chat_admin/src/features/app_management/presentation/bloc/app_bloc.dart';

// User Management
import 'package:y_chat_admin/src/features/user_management/data/datasources/user_remote_datasource.dart';
import 'package:y_chat_admin/src/features/user_management/data/repositories/user_repository_impl.dart';
import 'package:y_chat_admin/src/features/user_management/domain/repositories/user_repository.dart';
import 'package:y_chat_admin/src/features/user_management/domain/usecases/get_users_usecase.dart';
import 'package:y_chat_admin/src/features/user_management/domain/usecases/update_user_status_usecase.dart';
import 'package:y_chat_admin/src/features/user_management/domain/usecases/delete_user_usecase.dart';
import 'package:y_chat_admin/src/features/user_management/presentation/bloc/user_bloc.dart';

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

  getIt.registerLazySingleton<TicketRemoteDataSource>(
    () => TicketRemoteDataSourceImpl(
      dio: getIt<Dio>(),
      authService: getIt<AuthService>(),
    ),
  );

  getIt.registerLazySingleton<SettingsRepository>(
    () => SettingsRepositoryImpl(remoteDataSource: getIt<SettingsRemoteDataSource>()),
  );

  getIt.registerLazySingleton<TicketRepository>(
    () => TicketRepositoryImpl(remoteDataSource: getIt<TicketRemoteDataSource>()),
  );

  getIt.registerLazySingleton<GetSettingsUseCase>(
    () => GetSettingsUseCase(repository: getIt<SettingsRepository>()),
  );

  getIt.registerLazySingleton<UpdateSettingsUseCase>(
    () => UpdateSettingsUseCase(repository: getIt<SettingsRepository>()),
  );

  // Ticket use cases
  getIt.registerLazySingleton<GetTicketsUseCase>(
    () => GetTicketsUseCase(repository: getIt<TicketRepository>()),
  );

  getIt.registerLazySingleton<GetTicketByIdUseCase>(
    () => GetTicketByIdUseCase(repository: getIt<TicketRepository>()),
  );

  getIt.registerLazySingleton<CreateTicketUseCase>(
    () => CreateTicketUseCase(repository: getIt<TicketRepository>()),
  );

  getIt.registerLazySingleton<UpdateTicketStatusUseCase>(
    () => UpdateTicketStatusUseCase(repository: getIt<TicketRepository>()),
  );

  getIt.registerLazySingleton<AddReplyToTicketUseCase>(
    () => AddReplyToTicketUseCase(repository: getIt<TicketRepository>()),
  );

  getIt.registerLazySingleton<GetTicketStatsUseCase>(
    () => GetTicketStatsUseCase(repository: getIt<TicketRepository>()),
  );

  getIt.registerLazySingleton<DeleteTicketUseCase>(
    () => DeleteTicketUseCase(repository: getIt<TicketRepository>()),
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

  getIt.registerFactory<TicketBloc>(
    () => TicketBloc(
      getTicketsUseCase: getIt<GetTicketsUseCase>(),
      getTicketByIdUseCase: getIt<GetTicketByIdUseCase>(),
      createTicketUseCase: getIt<CreateTicketUseCase>(),
      updateTicketStatusUseCase: getIt<UpdateTicketStatusUseCase>(),
      addReplyToTicketUseCase: getIt<AddReplyToTicketUseCase>(),
      getTicketStatsUseCase: getIt<GetTicketStatsUseCase>(),
      deleteTicketUseCase: getIt<DeleteTicketUseCase>(),
    ),
  );

  // App Management
  getIt.registerLazySingleton<AppRemoteDataSource>(
    () => AppRemoteDataSourceImpl(dio: getIt<Dio>()),
  );

  getIt.registerLazySingleton<AppRepository>(
    () => AppRepositoryImpl(remoteDataSource: getIt<AppRemoteDataSource>()),
  );

  getIt.registerLazySingleton<GetAppsUseCase>(
    () => GetAppsUseCase(repository: getIt<AppRepository>()),
  );

  getIt.registerLazySingleton<CreateAppUseCase>(
    () => CreateAppUseCase(repository: getIt<AppRepository>()),
  );

  getIt.registerLazySingleton<UpdateAppUseCase>(
    () => UpdateAppUseCase(repository: getIt<AppRepository>()),
  );

  getIt.registerLazySingleton<DeleteAppUseCase>(
    () => DeleteAppUseCase(repository: getIt<AppRepository>()),
  );

  getIt.registerFactory<AppBloc>(
    () => AppBloc(
      getAppsUseCase: getIt<GetAppsUseCase>(),
      createAppUseCase: getIt<CreateAppUseCase>(),
      updateAppUseCase: getIt<UpdateAppUseCase>(),
      deleteAppUseCase: getIt<DeleteAppUseCase>(),
    ),
  );

  // User Management
  getIt.registerLazySingleton<UserRemoteDataSource>(
    () => UserRemoteDataSourceImpl(dio: getIt<Dio>()),
  );

  getIt.registerLazySingleton<UserRepository>(
    () => UserRepositoryImpl(remoteDataSource: getIt<UserRemoteDataSource>()),
  );

  getIt.registerLazySingleton<GetUsersUseCase>(
    () => GetUsersUseCase(repository: getIt<UserRepository>()),
  );

  getIt.registerLazySingleton<UpdateUserStatusUseCase>(
    () => UpdateUserStatusUseCase(repository: getIt<UserRepository>()),
  );

  getIt.registerLazySingleton<DeleteUserUseCase>(
    () => DeleteUserUseCase(repository: getIt<UserRepository>()),
  );

  getIt.registerFactory<UserBloc>(
    () => UserBloc(
      getUsersUseCase: getIt<GetUsersUseCase>(),
      updateUserStatusUseCase: getIt<UpdateUserStatusUseCase>(),
      deleteUserUseCase: getIt<DeleteUserUseCase>(),
    ),
  );
}
