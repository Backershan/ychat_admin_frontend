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

  // Repositories
  getIt.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(remoteDataSource: getIt<AuthRemoteDataSource>()),
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
}
