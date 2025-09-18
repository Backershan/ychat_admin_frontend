import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/services.dart';
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
      child: BackButtonHandler(child: child),
    );
  }
}

/// Widget that handles browser back button and prevents navigation
class BackButtonHandler extends StatelessWidget {
  final Widget child;
  
  const BackButtonHandler({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false, // Prevent back navigation
      onPopInvoked: (didPop) {
        if (didPop) return;
        
        // Show confirmation dialog when back button is pressed
        _showExitConfirmation(context);
      },
      child: child,
    );
  }

  void _showExitConfirmation(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Exit Application'),
          content: const Text('Are you sure you want to exit the application?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close dialog
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close dialog
                // Close the web app
                SystemNavigator.pop();
              },
              child: const Text('Exit'),
            ),
          ],
        );
      },
    );
  }
}
