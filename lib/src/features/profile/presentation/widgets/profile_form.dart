import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/constants.dart';
import '../../domain/entities/profile_entity.dart';
import '../bloc/profile_bloc.dart';
import '../events/profile_event.dart';

class ProfileForm extends StatefulWidget {
  final ProfileEntity profile;

  const ProfileForm({
    super.key,
    required this.profile,
  });

  @override
  State<ProfileForm> createState() => _ProfileFormState();
}

class _ProfileFormState extends State<ProfileForm> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _nameController;
  late TextEditingController _bioController;
  late TextEditingController _emailController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.profile.name);
    _bioController = TextEditingController(text: widget.profile.bio ?? '');
    _emailController = TextEditingController(text: widget.profile.email);
  }

  @override
  void dispose() {
    _nameController.dispose();
    _bioController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24.w),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(16.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Profile Information',
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.onSurface,
              ),
            ),
            SizedBox(height: 24.h),
            
            // Name Field
            _buildTextField(
              controller: _nameController,
              label: 'Full Name',
              icon: Icons.person,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your name';
                }
                return null;
              },
            ),
            
            SizedBox(height: 16.h),
            
            // Email Field (Read-only)
            _buildTextField(
              controller: _emailController,
              label: 'Email',
              icon: Icons.email,
              enabled: false,
              hintText: 'Email cannot be changed',
            ),
            
            SizedBox(height: 16.h),
            
            // Bio Field
            _buildTextField(
              controller: _bioController,
              label: 'Bio',
              icon: Icons.description,
              maxLines: 3,
              hintText: 'Tell us about yourself...',
            ),
            
            SizedBox(height: 32.h),
            
            // Update Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _updateProfile,
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  foregroundColor: AppColors.onPrimary,
                  padding: EdgeInsets.symmetric(vertical: 16.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                ),
                child: Text(
                  'Update Profile',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String label,
    required IconData icon,
    String? hintText,
    bool enabled = true,
    int maxLines = 1,
    String? Function(String?)? validator,
  }) {
    return TextFormField(
      controller: controller,
      enabled: enabled,
      maxLines: maxLines,
      validator: validator,
      style: TextStyle(
        fontSize: 16.sp,
        color: enabled ? AppColors.onSurface : AppColors.onSurface.withValues(alpha: 0.5),
      ),
      decoration: InputDecoration(
        labelText: label,
        hintText: hintText,
        prefixIcon: Icon(
          icon,
          color: enabled ? AppColors.primary : AppColors.onSurface.withValues(alpha: 0.5),
          size: 20.w,
        ),
        filled: true,
        fillColor: enabled ? AppColors.surface : AppColors.surface.withValues(alpha: 0.5),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(
            color: AppColors.outline.withValues(alpha: 0.3),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(
            color: AppColors.outline.withValues(alpha: 0.3),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(
            color: AppColors.primary,
            width: 2,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(
            color: AppColors.error,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(
            color: AppColors.error,
            width: 2,
          ),
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 16.w,
          vertical: 16.h,
        ),
      ),
    );
  }

  void _updateProfile() {
    if (_formKey.currentState!.validate()) {
      context.read<ProfileBloc>().add(
        ProfileEvent.updateProfile(
          name: _nameController.text.trim(),
          bio: _bioController.text.trim().isEmpty ? null : _bioController.text.trim(),
          avatar: widget.profile.avatar,
        ),
      );
    }
  }
}
