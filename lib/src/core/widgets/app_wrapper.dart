import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:y_chat_admin/src/core/di/injection.dart';
import 'package:y_chat_admin/src/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:y_chat_admin/src/features/auth/presentation/bloc/auth_event.dart';

/// App wrapper that provides all necessary BlocProviders for the application
/// This ensures consistent state management across all features
@immutable
class AppWrapper extends StatelessWidget {
  final Widget child;
  
  const AppWrapper({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // Authentication Bloc - Required for all features
        BlocProvider<AuthBloc>(
          create: (context) => getIt<AuthBloc>()..add(const AuthEvent.initializeAuth()),
        ),
        
        // Add more BlocProviders here as features are added
        // Example:
        // BlocProvider<UserManagementBloc>(
        //   create: (context) => getIt<UserManagementBloc>(),
        // ),
        // BlocProvider<TicketingBloc>(
        //   create: (context) => getIt<TicketingBloc>(),
        // ),
      ],
      child: child,
    );
  }
}
