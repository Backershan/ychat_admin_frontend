import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:y_chat_admin/src/core/routes/app_routes.dart';
import 'package:y_chat_admin/src/core/di/injection.dart';
import 'package:y_chat_admin/src/features/auth/presentation/pages/login_page.dart';
import 'package:y_chat_admin/src/features/auth/presentation/pages/register_page.dart';
import 'package:y_chat_admin/src/features/auth/presentation/pages/register_super_admin_page.dart';
import 'package:y_chat_admin/src/features/auth/domain/repositories/auth_repository.dart';
import 'package:y_chat_admin/src/shared/models/failure.dart';
import 'package:y_chat_admin/src/features/dashboard/presentation/pages/main_dashboard_page.dart';
import 'package:y_chat_admin/src/features/user_management/presentation/pages/user_management_page.dart';
import 'package:y_chat_admin/src/features/ticketing/presentation/pages/ticketing_page.dart';
import 'package:y_chat_admin/src/features/profile/presentation/pages/profile_page.dart';
import 'package:y_chat_admin/src/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  static final _authRepository = getIt<AuthRepository>();
  
  static final GoRouter router = GoRouter(
    initialLocation: AppRoutes.login,
    debugLogDiagnostics: true,
    redirect: (context, state) async {
      final isLoginRoute = state.matchedLocation == AppRoutes.login;
      final isRegisterRoute = state.matchedLocation == AppRoutes.register;
      final isRegisterSuperAdminRoute = state.matchedLocation == AppRoutes.registerSuperAdmin;
      
      // Allow access to login and register pages without authentication check
      if (isLoginRoute || isRegisterRoute || isRegisterSuperAdminRoute) {
        return null; // No redirect needed
      }
      
      // For other routes, check authentication
      final authResult = await _authRepository.isAuthenticated();
      
      return authResult.fold(
        (failure) {
          // If there's a network error, allow access to auth pages
          if (failure is NetworkFailure) {
            return null; // Allow access to current page
          }
          return AppRoutes.login;
        },
        (isAuthenticated) {
          // If not authenticated, redirect to login
          if (!isAuthenticated) {
            return AppRoutes.login;
          }
          
          return null; // No redirect needed
        },
      );
    },
    routes: [
      // Authentication routes
      GoRoute(
        path: AppRoutes.login,
        name: AppRouteNames.login,
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: AppRoutes.register,
        name: AppRouteNames.register,
        builder: (context, state) {
          final isAdminParam = state.uri.queryParameters['isAdmin'];
          final isAdminMode = isAdminParam == 'true';
          
          return RegisterPage(isAdminMode: isAdminMode);
        },
      ),
      GoRoute(
        path: AppRoutes.registerSuperAdmin,
        name: AppRouteNames.registerSuperAdmin,
        builder: (context, state) => const RegisterSuperAdminPage(),
      ),
      
      // Main app routes
      GoRoute(
        path: AppRoutes.home,
        name: AppRouteNames.home,
        builder: (context, state) => const MainDashboardPage(),
      ),
      GoRoute(
        path: AppRoutes.dashboard,
        name: AppRouteNames.dashboard,
        builder: (context, state) => const MainDashboardPage(),
      ),
      GoRoute(
        path: AppRoutes.userManagement,
        name: AppRouteNames.userManagement,
        builder: (context, state) => const UserManagementPage(),
      ),
      GoRoute(
        path: AppRoutes.ticketing,
        name: AppRouteNames.ticketing,
        builder: (context, state) => const TicketingPage(),
      ),
      GoRoute(
        path: AppRoutes.profile,
        name: AppRouteNames.profile,
        builder: (context, state) => BlocProvider(
          create: (context) => getIt<ProfileBloc>(),
          child: const ProfilePage(),
        ),
      ),
      
      // Error routes
      GoRoute(
        path: AppRoutes.notFound,
        name: AppRouteNames.notFound,
        builder: (context, state) => const NotFoundPage(),
      ),
      GoRoute(
        path: AppRoutes.unauthorized,
        name: AppRouteNames.unauthorized,
        builder: (context, state) => const UnauthorizedPage(),
      ),
    ],
    errorBuilder: (context, state) => const NotFoundPage(),
  );
}

// Error pages
class NotFoundPage extends StatelessWidget {
  const NotFoundPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Not Found'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.error_outline,
              size: 64,
              color: Colors.grey,
            ),
            SizedBox(height: 16),
            Text(
              '404 - Page Not Found',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'The page you are looking for does not exist.',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}

class UnauthorizedPage extends StatelessWidget {
  const UnauthorizedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Unauthorized'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.lock_outline,
              size: 64,
              color: Colors.red,
            ),
            SizedBox(height: 16),
            Text(
              '401 - Unauthorized',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'You do not have permission to access this page.',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
