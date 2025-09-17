import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:y_chat_admin/src/core/constants/constants.dart';
import 'package:y_chat_admin/src/core/widgets/primary_button.dart';
import 'package:y_chat_admin/src/core/widgets/input_field.dart';
import 'package:y_chat_admin/src/core/widgets/debug_connection_widget.dart';
import 'package:y_chat_admin/src/core/routes/app_routes.dart';
import 'package:y_chat_admin/src/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:y_chat_admin/src/features/auth/presentation/bloc/auth_event.dart';
import 'package:y_chat_admin/src/features/auth/presentation/bloc/auth_state.dart';
import 'dart:developer' as developer;

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _showDebugWidget = false;

  @override
  void initState() {
    super.initState();
    developer.log('🚀 LoginPage initialized', name: 'LoginPage');
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _handleLogin() {
    if (_formKey.currentState?.validate() ?? false) {
      developer.log('🔐 Attempting login', name: 'LoginPage');
      context.read<AuthBloc>().add(
        LoginEvent(
          email: _emailController.text.trim(),
          password: _passwordController.text.trim(),
        ),
      );
    }
  }

  void _navigateToRegister() {
    developer.log('🧭 Navigating to register page for admin user', name: 'LoginPage');
    context.push('${AppRoutes.register}?isAdmin=true');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            state.when(
              initial: () {},
              loading: () {},
              authenticated: (user) {
                developer.log('✅ Login successful, navigating to home', name: 'LoginPage');
                context.go(AppRoutes.home);
              },
              unauthenticated: () {},
              error: (message) {
                developer.log('❌ Login error: $message', name: 'LoginPage');
                
                // Check if it's a connection error
                if (message.contains('Cannot connect to backend server') || 
                    message.contains('No internet connection')) {
                  setState(() {
                    _showDebugWidget = true;
                  });
                }
                
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(message),
                    backgroundColor: AppColors.error,
                    action: message.contains('Cannot connect to backend server') || 
                            message.contains('No internet connection')
                        ? SnackBarAction(
                            label: 'Debug',
                            textColor: Colors.white,
                            onPressed: () {
                              setState(() {
                                _showDebugWidget = true;
                              });
                            },
                          )
                        : null,
                  ),
                );
              },
              passwordChanged: () {},
              profileUpdated: (user) {},
              superAdminRegistered: (superAdminResponse) {},
            );
          },
          child: BlocBuilder<AuthBloc, AuthState>(
            builder: (context, state) {
              final isLoading = state.maybeWhen(
                loading: () => true,
                orElse: () => false,
              );
              
              return Stack(
                children: [
                  _buildLoginForm(),
                  if (isLoading)
                    Container(
                      color: Colors.black.withValues(alpha: 0.3),
                      child: const Center(
                        child: CircularProgressIndicator(),
                      ),
                    ),
                  if (_showDebugWidget)
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        color: Colors.white,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text('Connection Debug'),
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      _showDebugWidget = false;
                                    });
                                  },
                                  icon: const Icon(Icons.close),
                                ),
                              ],
                            ),
                            const DebugConnectionWidget(),
                          ],
                        ),
                      ),
                    ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildLoginForm() {
    return Center(
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 32.h),
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: 400.w, // Maximum width for desktop
          ),
          child: Card(
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.r),
            ),
            child: Padding(
              padding: EdgeInsets.all(32.w),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    _buildHeader(),
                    SizedBox(height: 48.h),
                    _buildFormFields(),
                    SizedBox(height: 32.h),
                    _buildLoginButton(),
                    SizedBox(height: 24.h),
                    _buildRegisterButton(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Column(
      children: [
        Container(
          width: 80.w,
          height: 80.w,
          decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.circular(Radius.lg),
          ),
          child: Icon(
            Icons.admin_panel_settings,
            size: 40.w,
            color: AppColors.onPrimary,
          ),
        ),
        SizedBox(height: Spacing.lg),
        Text(
          'Admin Panel',
          style: TextStyles.headlineMedium.copyWith(
            color: AppColors.onBackground,
          ),
        ),
        SizedBox(height: Spacing.xs),
        Text(
          'Sign in to your account',
          style: TextStyles.bodyMedium.copyWith(
            color: AppColors.onBackground.withValues(alpha: 0.7),
          ),
        ),
      ],
    );
  }

  Widget _buildFormFields() {
    return Column(
      children: [
        InputField(
          controller: _emailController,
          label: 'Email',
          hint: 'Enter your email',
          textInputAction: TextInputAction.next,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Email is required';
            }
            if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
              return 'Please enter a valid email address';
            }
            return null;
          },
        ),
        const SizedBox(height: Spacing.md),
        PasswordInputField(
          controller: _passwordController,
          label: 'Password',
          hint: 'Enter your password',
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Password is required';
            }
            if (value.length < 6) {
              return 'Password must be at least 6 characters';
            }
            return null;
          },
        ),
      ],
    );
  }

  Widget _buildLoginButton() {
    return PrimaryButton(
      label: 'Sign In',
      onPressed: _handleLogin,
      size: ButtonSize.large,
      isFullWidth: true,
      semanticsLabel: 'Sign In button',
    );
  }

  Widget _buildRegisterButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account? ",
          style: TextStyles.bodyMedium.copyWith(
            color: AppColors.onBackground.withValues(alpha: 0.7),
          ),
        ),
        TextButton(
          onPressed: _navigateToRegister,
          child: Text(
            'Create Admin User',
            style: TextStyles.bodyMedium.copyWith(
              fontWeight: FontWeight.w600,
              color: AppColors.primary,
            ),
          ),
        ),
      ],
    );
  }
}
