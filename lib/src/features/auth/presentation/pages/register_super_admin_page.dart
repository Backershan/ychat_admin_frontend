import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:y_chat_admin/src/core/constants/constants.dart';
import 'package:y_chat_admin/src/core/routes/app_routes.dart';
import 'package:y_chat_admin/src/core/widgets/primary_button.dart';
import 'package:y_chat_admin/src/core/widgets/input_field.dart';
import 'package:y_chat_admin/src/core/widgets/card_tile.dart';
import 'package:y_chat_admin/src/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:y_chat_admin/src/features/auth/presentation/bloc/auth_event.dart';
import 'package:y_chat_admin/src/features/auth/presentation/bloc/auth_state.dart';
import 'package:y_chat_admin/src/core/utils/responsive.dart';

class RegisterSuperAdminPage extends StatefulWidget {
  const RegisterSuperAdminPage({super.key});

  @override
  State<RegisterSuperAdminPage> createState() => _RegisterSuperAdminPageState();
}

class _RegisterSuperAdminPageState extends State<RegisterSuperAdminPage> {
  final _formKey = GlobalKey<FormState>();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register Super Admin'),
        centerTitle: true,
      ),
      body: ResponsiveLayout(
        mobile: _buildMobileLayout(),
        tablet: _buildTabletLayout(),
        desktop: _buildDesktopLayout(),
      ),
    );
  }

  Widget _buildMobileLayout() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(Spacing.md),
      child: _buildForm(),
    );
  }

  Widget _buildTabletLayout() {
    return Center(
      child: SizedBox(
        width: 600,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(Spacing.lg),
          child: _buildForm(),
        ),
      ),
    );
  }

  Widget _buildDesktopLayout() {
    return Center(
      child: SizedBox(
        width: 800,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(Spacing.xl),
          child: _buildForm(),
        ),
      ),
    );
  }

  Widget _buildForm() {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.when(
          initial: () {},
          loading: () {},
          authenticated: (user) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Welcome ${user.firstName}!'),
                backgroundColor: AppColors.success,
              ),
            );
            context.go(AppRoutes.home);
          },
          unauthenticated: () {},
          error: (message) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(message),
                backgroundColor: AppColors.error,
              ),
            );
          },
          passwordChanged: () {},
          profileUpdated: (user) {},
          superAdminRegistered: (superAdminResponse) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(superAdminResponse.message),
                backgroundColor: AppColors.success,
              ),
            );
            Navigator.of(context).pop();
          },
        );
      },
      child: CardTile(
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Super Admin Registration',
                style: TextStyles.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: Spacing.sm),
              Text(
                'Create a new Super Admin account with elevated privileges',
                style: TextStyles.bodyMedium.copyWith(
                  color: AppColors.onSurface.withValues(alpha: 0.7),
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: Spacing.xl),
              
              // First Name field
              InputField(
                controller: _firstNameController,
                label: 'First Name',
                hint: 'Enter first name',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter first name';
                  }
                  return null;
                },
              ),
              const SizedBox(height: Spacing.md),
              
              // Last Name field
              InputField(
                controller: _lastNameController,
                label: 'Last Name',
                hint: 'Enter last name',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter last name';
                  }
                  return null;
                },
              ),
              const SizedBox(height: Spacing.md),
              
              // Email field
              InputField(
                controller: _emailController,
                label: 'Email',
                hint: 'Enter email address',
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter email';
                  }
                  if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
                    return 'Please enter a valid email';
                  }
                  return null;
                },
              ),
              const SizedBox(height: Spacing.md),
              
              // Password field
              PasswordInputField(
                controller: _passwordController,
                label: 'Password',
                hint: 'Enter password',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter password';
                  }
                  if (value.length < 6) {
                    return 'Password must be at least 6 characters';
                  }
                  return null;
                },
              ),
              const SizedBox(height: Spacing.md),
              
              // Confirm Password field
              PasswordInputField(
                controller: _confirmPasswordController,
                label: 'Confirm Password',
                hint: 'Confirm password',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please confirm password';
                  }
                  if (value != _passwordController.text) {
                    return 'Passwords do not match';
                  }
                  return null;
                },
              ),
              const SizedBox(height: Spacing.xl),
              
              // Register button
              BlocBuilder<AuthBloc, AuthState>(
                builder: (context, state) {
                  final isLoading = state.maybeWhen(
                    loading: () => true,
                    orElse: () => false,
                  );
                  
                  return PrimaryButton(
                    label: 'Register Super Admin',
                    onPressed: isLoading ? null : _handleRegister,
                    isLoading: isLoading,
                    isFullWidth: true,
                    size: ButtonSize.large,
                    semanticsLabel: 'Register Super Admin button',
                  );
                },
              ),
              const SizedBox(height: Spacing.md),
              
              // Cancel button
              OutlinedButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('Cancel'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _handleRegister() {
    if (_formKey.currentState?.validate() ?? false) {
      context.read<AuthBloc>().add(
        AuthEvent.registerSuperAdmin(
          firstName: _firstNameController.text.trim(),
          lastName: _lastNameController.text.trim(),
          email: _emailController.text.trim(),
          password: _passwordController.text,
        ),
      );
    }
  }
}
