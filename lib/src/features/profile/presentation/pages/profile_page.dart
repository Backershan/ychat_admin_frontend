import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/di/injection.dart';
import '../bloc/profile_bloc.dart';
import '../events/profile_event.dart';
import '../states/profile_state.dart';
import '../widgets/profile_avatar.dart';
import '../widgets/profile_form.dart';
import '../widgets/change_password_dialog.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    context.read<ProfileBloc>().add(const ProfileEvent.getProfile());
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.surface,
        elevation: 0,
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: const Icon(Icons.arrow_back),
        ),
       
        actions: [
          IconButton(
            onPressed: () {
              // TODO: Add settings or more options
            },
            icon: const Icon(Icons.more_vert),
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(
              child: Text(
                'Profile',
                style: TextStyle(fontSize: 16.sp),
              ),
            ),
            Tab(
              child: Text(
                'Security',
                style: TextStyle(fontSize: 16.sp),
              ),
            ),
          ],
        ),
      ),
      body: BlocListener<ProfileBloc, ProfileState>(
        listener: (context, state) {
          state.when(
            initial: () {},
            loading: () {},
            loaded: (profile) {},
            updated: (profile) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: const Text('Profile updated successfully'),
                  backgroundColor: AppColors.success,
                ),
              );
            },
            passwordChanged: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: const Text('Password changed successfully'),
                  backgroundColor: AppColors.success,
                ),
              );
            },
            avatarUploaded: (avatarUrl) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: const Text('Avatar updated successfully'),
                  backgroundColor: AppColors.success,
                ),
              );
            },
            error: (message) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(message),
                  backgroundColor: AppColors.error,
                ),
              );
            },
          );
        },
        child: TabBarView(
          controller: _tabController,
          children: [
            _buildProfileTab(),
            _buildSecurityTab(),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileTab() {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        return state.when(
          initial: () => const Center(child: CircularProgressIndicator()),
          loading: () => const Center(child: CircularProgressIndicator()),
          loaded: (profile) => _buildProfileContent(profile),
          updated: (profile) => _buildProfileContent(profile),
          passwordChanged: () => const Center(child: Text('Password changed')),
          avatarUploaded: (avatarUrl) => const Center(child: Text('Avatar uploaded')),
          error: (message) => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.error_outline,
                  size: 64.w,
                  color: AppColors.error,
                ),
                SizedBox(height: 16.h),
                Text(
                  'Error loading profile',
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.onBackground,
                  ),
                ),
                SizedBox(height: 8.h),
                Text(
                  message,
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: AppColors.onBackground.withValues(alpha: 0.7),
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 16.h),
                ElevatedButton(
                  onPressed: () {
                    context.read<ProfileBloc>().add(const ProfileEvent.getProfile());
                  },
                  child: const Text('Retry'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildProfileContent(profile) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(24.w),
      child: Column(
        children: [
          // Profile Header
          Container(
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
            child: Column(
              children: [
                ProfileAvatar(
                  avatarUrl: profile.avatar,
                  name: profile.name,
                  size: 100,
                  showEditIcon: true,
                  onTap: () => _showImagePicker(context),
                ),
                SizedBox(height: 16.h),
                Text(
                  profile.name,
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.onSurface,
                  ),
                ),
                SizedBox(height: 8.h),
                Text(
                  profile.email,
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: AppColors.onSurface.withValues(alpha: 0.7),
                  ),
                ),
                if (profile.bio != null && profile.bio!.isNotEmpty) ...[
                  SizedBox(height: 12.h),
                  Text(
                    profile.bio!,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: AppColors.onSurface.withValues(alpha: 0.8),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ],
            ),
          ),
          
          SizedBox(height: 24.h),
          
          // Profile Form
          ProfileForm(profile: profile),
        ],
      ),
    );
  }

  Widget _buildSecurityTab() {
    return Padding(
      padding: EdgeInsets.all(24.w),
      child: Column(
        children: [
          Container(
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.lock_outline,
                      color: AppColors.primary,
                      size: 24.w,
                    ),
                    SizedBox(width: 12.w),
                    Text(
                      'Password & Security',
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                        color: AppColors.onSurface,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16.h),
                Text(
                  'Change your password to keep your account secure.',
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: AppColors.onSurface.withValues(alpha: 0.7),
                  ),
                ),
                SizedBox(height: 24.h),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    onPressed: () => _showChangePasswordDialog(context),
                    icon: const Icon(Icons.key),
                    label: const Text('Change Password'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                      foregroundColor: AppColors.onPrimary,
                      padding: EdgeInsets.symmetric(vertical: 16.h),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _showImagePicker(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => Container(
        padding: EdgeInsets.all(24.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Select Profile Picture',
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.onSurface,
              ),
            ),
            SizedBox(height: 24.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildImagePickerOption(
                  context,
                  icon: Icons.camera_alt,
                  label: 'Camera',
                  onTap: () {
                    Navigator.pop(context);
                    // TODO: Implement camera picker
                  },
                ),
                _buildImagePickerOption(
                  context,
                  icon: Icons.photo_library,
                  label: 'Gallery',
                  onTap: () {
                    Navigator.pop(context);
                    // TODO: Implement gallery picker
                  },
                ),
              ],
            ),
            SizedBox(height: 24.h),
          ],
        ),
      ),
    );
  }

  Widget _buildImagePickerOption(
    BuildContext context, {
    required IconData icon,
    required String label,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(24.w),
        decoration: BoxDecoration(
          color: AppColors.primary.withValues(alpha: 0.1),
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Column(
          children: [
            Icon(
              icon,
              size: 32.w,
              color: AppColors.primary,
            ),
            SizedBox(height: 8.h),
            Text(
              label,
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.primary,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showChangePasswordDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => BlocProvider<ProfileBloc>(
        create: (context) => getIt<ProfileBloc>(),
        child: const ChangePasswordDialog(),
      ),
    );
  }
}
