import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:y_chat_admin/src/core/constants/constants.dart';
import 'package:y_chat_admin/src/core/utils/responsive.dart';
import 'package:y_chat_admin/src/features/user_management/domain/entities/user_entity.dart';
import 'package:y_chat_admin/src/features/user_management/presentation/bloc/user_bloc.dart';
import 'package:y_chat_admin/src/features/user_management/presentation/bloc/user_event.dart';
import 'package:y_chat_admin/src/features/user_management/presentation/bloc/user_state.dart';

class UserBanDialog extends StatefulWidget {
  final UserEntity user;
  final VoidCallback onUserBanned;

  const UserBanDialog({
    super.key,
    required this.user,
    required this.onUserBanned,
  });

  @override
  State<UserBanDialog> createState() => _UserBanDialogState();
}

class _UserBanDialogState extends State<UserBanDialog> {
  final _formKey = GlobalKey<FormState>();
  final _reasonController = TextEditingController();
  String _selectedBanType = 'temporary';

  @override
  void dispose() {
    _reasonController.dispose();
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
            widget.onUserBanned();
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
          Icons.block,
          size: 24.r,
          color: AppColors.error,
        ),
        SizedBox(width: 12.w),
        Text(
          'Ban User',
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: WebResponsive.getWebPadding(context),
            decoration: BoxDecoration(
              color: AppColors.background,
              borderRadius: BorderRadius.circular(8.r),
              border: Border.all(color: AppColors.border),
            ),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 20.r,
                  backgroundColor: AppColors.primary,
                  child: Text(
                    (widget.user.name?.isNotEmpty == true) ? widget.user.name![0].toUpperCase() : 'U',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: WebResponsive.getWebFontSize(16, context),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(width: 12.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.user.name ?? 'Unknown',
                        style: TextStyle(
                          fontSize: WebResponsive.getWebFontSize(16, context),
                          fontWeight: FontWeight.w600,
                          color: AppColors.textPrimary,
                        ),
                      ),
                      Text(
                        widget.user.email ?? 'No email',
                        style: TextStyle(
                          fontSize: WebResponsive.getWebFontSize(14, context),
                          color: AppColors.textSecondary,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.h),
          _buildTextField(
            controller: _reasonController,
            label: 'Ban Reason',
            isRequired: true,
            maxLines: 3,
          ),
          SizedBox(height: 16.h),
          _buildBanTypeDropdown(),
        ],
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String label,
    bool isRequired = false,
    int maxLines = 1,
  }) {
    return TextFormField(
      controller: controller,
      maxLines: maxLines,
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
      ),
      validator: isRequired
          ? (value) {
              if (value == null || value.isEmpty) {
                return 'This field is required';
              }
              return null;
            }
          : null,
    );
  }

  Widget _buildBanTypeDropdown() {
    return DropdownButtonFormField<String>(
      value: _selectedBanType,
      decoration: InputDecoration(
        labelText: 'Ban Type',
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
        DropdownMenuItem(value: 'temporary', child: Text('Temporary')),
        DropdownMenuItem(value: 'permanent', child: Text('Permanent')),
      ],
      onChanged: (value) {
        setState(() {
          _selectedBanType = value ?? 'temporary';
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
              onPressed: isLoading ? null : _banUser,
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.error,
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
                  : const Text('Ban User'),
            ),
          ],
        );
      },
    );
  }

  void _banUser() {
    if (_formKey.currentState!.validate()) {
      context.read<UserBloc>().add(UserEvent.banUser(
        userId: widget.user.id,
        reason: _reasonController.text.trim(),
        banType: _selectedBanType,
      ));
    }
  }
}
