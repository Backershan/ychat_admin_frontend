import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:y_chat_admin/src/core/constants/constants.dart';
import 'package:y_chat_admin/src/core/utils/responsive.dart';
import 'package:y_chat_admin/src/features/user_management/presentation/bloc/user_bloc.dart';
import 'package:y_chat_admin/src/features/user_management/presentation/bloc/user_event.dart';
import 'package:y_chat_admin/src/features/user_management/presentation/bloc/user_state.dart';

class UserCreateDialog extends StatefulWidget {
  final VoidCallback onUserCreated;

  const UserCreateDialog({
    super.key,
    required this.onUserCreated,
  });

  @override
  State<UserCreateDialog> createState() => _UserCreateDialogState();
}

class _UserCreateDialogState extends State<UserCreateDialog> {
  final _formKey = GlobalKey<FormState>();
  final _firstnameController = TextEditingController();
  final _lastnameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  String _selectedRole = 'user';

  @override
  void dispose() {
    _firstnameController.dispose();
    _lastnameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<UserBloc, UserState>(
      listener: (context, state) {
        state.when(
          initial: () {},
          loading: () {},
          loaded: (userListResponse, users, currentPage, totalPages, totalUsers, searchQuery, statusFilter) {},
          error: (message) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(message),
                backgroundColor: AppColors.error,
              ),
            );
          },
          actionSuccess: (message, updatedUser) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(message),
                backgroundColor: AppColors.success,
              ),
            );
            Navigator.of(context).pop();
            widget.onUserCreated();
          },
          actionLoading: () {},
        );
      },
      child: Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.4,
          padding: WebResponsive.getWebPadding(context),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeader(),
              SizedBox(height: 24.h),
              _buildForm(),
              SizedBox(height: 24.h),
              _buildActions(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      children: [
        Icon(
          Icons.person_add,
          size: 24.r,
          color: AppColors.primary,
        ),
        SizedBox(width: 12.w),
        Text(
          'Create New User',
          style: TextStyle(
            fontSize: WebResponsive.getWebFontSize(20, context),
            fontWeight: FontWeight.bold,
            color: AppColors.textPrimary,
          ),
        ),
      ],
    );
  }

  Widget _buildForm() {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: _buildTextField(
                  controller: _firstnameController,
                  label: 'First Name',
                  isRequired: true,
                  isName: true,
                ),
              ),
              SizedBox(width: 16.w),
              Expanded(
                child: _buildTextField(
                  controller: _lastnameController,
                  label: 'Last Name',
                  isName: true,
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          _buildTextField(
            controller: _emailController,
            label: 'Email',
            isRequired: true,
            keyboardType: TextInputType.emailAddress,
            isEmail: true,
          ),
          SizedBox(height: 16.h),
          Row(
            children: [
              Expanded(
                child: _buildTextField(
                  controller: _phoneController,
                  label: 'Phone',
                  keyboardType: TextInputType.phone,
                  isPhone: true,
                ),
              ),
              SizedBox(width: 16.w),
              Expanded(
                child: _buildRoleDropdown(),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String label,
    bool isRequired = false,
    TextInputType? keyboardType,
    bool isEmail = false,
    bool isPhone = false,
    bool isName = false,
  }) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        labelText: '$label${isRequired ? ' *' : ''}',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(color: AppColors.border),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(color: AppColors.border),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(color: AppColors.primary),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(color: AppColors.error),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(color: AppColors.error),
        ),
      ),
      validator: (value) {
        if (isRequired && (value == null || value.isEmpty)) {
          return 'This field is required';
        }
        if (isName && value != null && value.isNotEmpty) {
          if (value.trim().length < 2) {
            return 'Name must be at least 2 characters long';
          }
          if (!RegExp(r'^[a-zA-Z\s]+$').hasMatch(value.trim())) {
            return 'Name can only contain letters and spaces';
          }
        }
        if (isEmail && value != null && value.isNotEmpty) {
          if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
            return 'Please enter a valid email address';
          }
        }
        if (isPhone && value != null && value.isNotEmpty) {
          if (!RegExp(r'^[\+]?[1-9][\d]{0,15}$').hasMatch(value.replaceAll(' ', '').replaceAll('-', '').replaceAll('(', '').replaceAll(')', ''))) {
            return 'Please enter a valid phone number';
          }
        }
        return null;
      },
    );
  }

  Widget _buildRoleDropdown() {
    return DropdownButtonFormField<String>(
      value: _selectedRole,
      decoration: InputDecoration(
        labelText: 'Role',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(color: AppColors.border),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(color: AppColors.border),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(color: AppColors.primary),
        ),
      ),
      items: const [
        DropdownMenuItem(value: 'user', child: Text('User')),
        DropdownMenuItem(value: 'admin', child: Text('Admin')),
        DropdownMenuItem(value: 'moderator', child: Text('Moderator')),
      ],
      onChanged: (value) {
        setState(() {
          _selectedRole = value ?? 'user';
        });
      },
    );
  }

  Widget _buildActions() {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        final isLoading = state is UserActionLoading;
        
        return Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
              onPressed: isLoading ? null : () => Navigator.of(context).pop(),
              child: const Text('Cancel'),
            ),
            SizedBox(width: 12.w),
            ElevatedButton(
              onPressed: isLoading ? null : _createUser,
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
                foregroundColor: Colors.white,
              ),
              child: isLoading
                  ? SizedBox(
                      width: 16.w,
                      height: 16.h,
                      child: const CircularProgressIndicator(
                        strokeWidth: 2,
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                      ),
                    )
                  : const Text('Create User'),
            ),
          ],
        );
      },
    );
  }

  void _createUser() {
    if (_formKey.currentState!.validate()) {
      context.read<UserBloc>().add(UserEvent.createUser(
        firstname: _firstnameController.text.trim(),
        email: _emailController.text.trim(),
        lastname: _lastnameController.text.trim().isNotEmpty ? _lastnameController.text.trim() : null,
        phone: _phoneController.text.trim().isNotEmpty ? _phoneController.text.trim() : null,
        role: _selectedRole,
      ));
    }
  }
}
