import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:y_chat_admin/src/core/routes/app_routes.dart';
import 'package:y_chat_admin/src/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:y_chat_admin/src/features/auth/presentation/bloc/auth_event.dart';
import 'package:y_chat_admin/src/features/auth/presentation/bloc/auth_state.dart';
import 'package:y_chat_admin/src/shared/widgets/custom_button.dart';
import 'package:y_chat_admin/src/shared/widgets/custom_text_field.dart';
import 'package:y_chat_admin/src/shared/widgets/loading_widget.dart';
import 'dart:developer' as developer;

import 'package:y_chat_admin/src/core/constants/constants.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _departmentController = TextEditingController();
  final _positionController = TextEditingController();
  
  bool _isAdminRegistration = false;

  @override
  void initState() {
    super.initState();
    developer.log('🚀 RegisterPage initialized', name: 'RegisterPage');
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    _firstNameController.dispose();
    _lastNameController.dispose();
    _phoneController.dispose();
    _departmentController.dispose();
    _positionController.dispose();
    super.dispose();
  }

  void _handleRegister() {
    if (_formKey.currentState?.validate() ?? false) {
      developer.log('📝 Attempting registration', name: 'RegisterPage');
      context.read<AuthBloc>().add(
        RegisterEvent(
          username: _usernameController.text.trim(),
          email: _emailController.text.trim(),
          password: _passwordController.text.trim(),
          confirmPassword: _confirmPasswordController.text.trim(),
          firstName: _firstNameController.text.trim(),
          lastName: _lastNameController.text.trim(),
          phoneNumber: _phoneController.text.trim().isEmpty ? null : _phoneController.text.trim(),
          department: _departmentController.text.trim().isEmpty ? null : _departmentController.text.trim(),
          position: _positionController.text.trim().isEmpty ? null : _positionController.text.trim(),
          isAdmin: _isAdminRegistration,
        ),
      );
    }
  }

  void _navigateBack() {
    developer.log('🧭 Navigating back to login', name: 'RegisterPage');
    context.pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: _navigateBack,
        ),
      ),
      body: SafeArea(
        child: BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            state.when(
              initial: () {},
              loading: () {},
              authenticated: (user) {
                developer.log('✅ Registration successful, navigating to home', name: 'RegisterPage');
                context.go(AppRoutes.home);
              },
              unauthenticated: () {},
              error: (message) {
                developer.log('❌ Registration error: $message', name: 'RegisterPage');
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
                developer.log('✅ SuperAdmin registration successful', name: 'RegisterPage');
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(superAdminResponse.message),
                    backgroundColor: AppColors.success,
                  ),
                );
                context.go(AppRoutes.home);
              },
            );
          },
          child: BlocBuilder<AuthBloc, AuthState>(
            builder: (context, state) {
              return LoadingOverlay(
                isLoading: state is AuthLoading,
                loadingMessage: _isAdminRegistration ? 'Creating admin user...' : 'Creating account...',
                child: _buildRegisterForm(),
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildRegisterForm() {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildHeader(),
            SizedBox(height: 32.h),
            _buildAdminToggle(),
            SizedBox(height: 24.h),
            _buildFormFields(),
            SizedBox(height: 32.h),
            _buildRegisterButton(),
            SizedBox(height: 24.h),
            _buildBackButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Column(
      children: [
        Container(
          width: 60.w,
          height: 60.w,
          decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.circular(15.r),
          ),
          child: Icon(
            Icons.person_add,
            size: 30.w,
            color: AppColors.onPrimary,
          ),
        ),
        SizedBox(height: 16.h),
        Text(
          _isAdminRegistration ? 'Create Admin User' : 'Create Account',
          style: TextStyle(
            fontSize: 24.sp,
            fontWeight: FontWeight.bold,
            color: AppColors.onBackground,
          ),
        ),
        SizedBox(height: 8.h),
        Text(
          _isAdminRegistration 
              ? 'Set up a new admin account'
              : 'Sign up for a new account',
          style: TextStyle(
            fontSize: 14.sp,
            color: AppColors.onBackground.withValues(alpha: 0.7),
          ),
        ),
      ],
    );
  }

  Widget _buildAdminToggle() {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(
          color: AppColors.onBackground.withValues(alpha: 0.1),
        ),
      ),
      child: Row(
        children: [
          Checkbox(
            value: _isAdminRegistration,
            onChanged: (value) {
              setState(() {
                _isAdminRegistration = value ?? false;
              });
              developer.log('👑 Admin registration toggle: $_isAdminRegistration', name: 'RegisterPage');
            },
            activeColor: AppColors.primary,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Create as Admin User',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.onBackground,
                  ),
                ),
                SizedBox(height: 4.h),
                Text(
                  'Admin users have full access to all features',
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: AppColors.onBackground.withValues(alpha: 0.6),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFormFields() {
    return Column(
      children: [
        // Name fields
        Row(
          children: [
            Expanded(
              child: CustomTextField(
                label: 'First Name',
                controller: _firstNameController,
                hint: 'Enter first name',
                isRequired: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'First name is required';
                  }
                  return null;
                },
              ),
            ),
            SizedBox(width: 16.w),
            Expanded(
              child: CustomTextField(
                label: 'Last Name',
                controller: _lastNameController,
                hint: 'Enter last name',
                isRequired: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Last name is required';
                  }
                  return null;
                },
              ),
            ),
          ],
        ),
        SizedBox(height: 16.h),
        
        // Username and Email
        CustomTextField(
          label: 'Username',
          controller: _usernameController,
          hint: 'Enter username',
          isRequired: true,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Username is required';
            }
            if (value.length < 3) {
              return 'Username must be at least 3 characters';
            }
            return null;
          },
        ),
        SizedBox(height: 16.h),
        
        CustomTextField(
          label: 'Email',
          controller: _emailController,
          hint: 'Enter email address',
          type: TextFieldType.email,
          isRequired: true,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Email is required';
            }
            if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
              return 'Please enter a valid email';
            }
            return null;
          },
        ),
        SizedBox(height: 16.h),
        
        // Password fields
        CustomTextField(
          label: 'Password',
          controller: _passwordController,
          hint: 'Enter password',
          type: TextFieldType.password,
          isRequired: true,
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
        SizedBox(height: 16.h),
        
        CustomTextField(
          label: 'Confirm Password',
          controller: _confirmPasswordController,
          hint: 'Confirm password',
          type: TextFieldType.password,
          isRequired: true,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please confirm your password';
            }
            if (value != _passwordController.text) {
              return 'Passwords do not match';
            }
            return null;
          },
        ),
        SizedBox(height: 16.h),
        
        // Optional fields
        CustomTextField(
          label: 'Phone Number',
          controller: _phoneController,
          hint: 'Enter phone number (optional)',
          keyboardType: TextInputType.phone,
        ),
        SizedBox(height: 16.h),
        
        CustomTextField(
          label: 'Department',
          controller: _departmentController,
          hint: 'Enter department (optional)',
        ),
        SizedBox(height: 16.h),
        
        CustomTextField(
          label: 'Position',
          controller: _positionController,
          hint: 'Enter position (optional)',
        ),
      ],
    );
  }

  Widget _buildRegisterButton() {
    return CustomButton(
      label: _isAdminRegistration ? 'Create Admin User' : 'Create Account',
      onPressed: _handleRegister,
      type: ButtonType.primary,
      size: ButtonSize.large,
      isFullWidth: true,
    );
  }

  Widget _buildBackButton() {
    return CustomButton(
      label: 'Back to Login',
      onPressed: _navigateBack,
      type: ButtonType.outline,
      size: ButtonSize.medium,
      isFullWidth: true,
    );
  }
}
