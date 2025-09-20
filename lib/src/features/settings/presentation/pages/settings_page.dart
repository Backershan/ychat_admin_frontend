import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/di/injection.dart';
import '../bloc/settings_bloc.dart';
import '../../domain/entities/settings_entity.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SettingsBloc>()..add(const GetSettings()),
      child: const _SettingsView(),
    );
  }
}

class _SettingsView extends StatefulWidget {
  const _SettingsView();

  @override
  State<_SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<_SettingsView>
    with TickerProviderStateMixin {
  late AnimationController _fadeController;
  late AnimationController _slideController;
  late Animation<double> _fadeAnimation;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _fadeController = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    );
    _slideController = AnimationController(
      duration: const Duration(milliseconds: 600),
      vsync: this,
    );
    
    _fadeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _fadeController,
      curve: Curves.easeInOut,
    ));
    
    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 0.3),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _slideController,
      curve: Curves.easeOutCubic,
    ));

    _fadeController.forward();
    _slideController.forward();
  }

  @override
  void dispose() {
    _fadeController.dispose();
    _slideController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 900;
    
    return Scaffold(
      backgroundColor: AppColors.background,
      body: BlocListener<SettingsBloc, SettingsState>(
        listener: (context, state) {
          if (state is SettingsUpdated) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: const Text('Settings updated successfully'),
                backgroundColor: Colors.green,
                duration: const Duration(seconds: 2),
              ),
            );
          } else if (state is SettingsOfflineMode) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Row(
                  children: [
                    const Icon(Icons.cloud_off, color: Colors.white),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        'Settings working in offline mode: ${state.message}',
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                backgroundColor: Colors.orange,
                duration: const Duration(seconds: 4),
                action: SnackBarAction(
                  label: 'Dismiss',
                  textColor: Colors.white,
                  onPressed: () {
                    ScaffoldMessenger.of(context).hideCurrentSnackBar();
                  },
                ),
              ),
            );
          } else if (state is SettingsError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Failed to update settings: ${state.message}'),
                backgroundColor: Colors.red,
                duration: const Duration(seconds: 3),
              ),
            );
          }
        },
        child: BlocBuilder<SettingsBloc, SettingsState>(
          builder: (context, state) {
            if (state is SettingsLoading) {
              return _buildLoadingState();
            } else if (state is SettingsError) {
              return _buildErrorState(context, state.message);
            } else if (state is SettingsOfflineMode) {
              return _buildOfflineModeState(context, state.settings, state.message);
            } else if (state is SettingsLoaded || state is SettingsUpdated) {
              final settings = state is SettingsLoaded 
                  ? state.settings 
                  : (state as SettingsUpdated).settings;
            
            return AnimatedBuilder(
              animation: _fadeAnimation,
              builder: (context, child) {
                return FadeTransition(
                  opacity: _fadeAnimation,
                  child: SlideTransition(
                    position: _slideAnimation,
                    child: Column(
                      children: [
                        // Removed incorrect API availability banner
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(isMobile ? 16.w : 32.w),
                            child: isMobile 
                              ? _buildMobileLayout(context, settings)
                              : _buildWebLayout(context, settings),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          }
          return _buildLoadingState();
          },
        ),
      ),
    );
  }

  Widget _buildLoadingState() {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(24.w),
              decoration: BoxDecoration(
                color: AppColors.surface,
                borderRadius: BorderRadius.circular(20.r),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.1),
                    blurRadius: 20,
                    offset: const Offset(0, 10),
                  ),
                ],
              ),
              child: Column(
                children: [
                  CircularProgressIndicator(
                    color: AppColors.primary,
                    strokeWidth: 3,
                  ),
                  SizedBox(height: 24.h),
                  Text(
                    'Loading settings...',
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: AppColors.onBackground.withValues(alpha: 0.7),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildErrorState(BuildContext context, String message) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(24.w),
          child: Container(
            padding: EdgeInsets.all(32.w),
            decoration: BoxDecoration(
              color: AppColors.surface,
              borderRadius: BorderRadius.circular(20.r),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.1),
                  blurRadius: 20,
                  offset: const Offset(0, 10),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: EdgeInsets.all(20.w),
                  decoration: BoxDecoration(
                    color: Colors.red.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(50.r),
                  ),
                  child: Icon(
                    Icons.error_outline,
                    size: 48.w,
                    color: Colors.red,
                  ),
                ),
                SizedBox(height: 24.h),
                Text(
                  'Error Loading Settings',
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.onBackground,
                  ),
                ),
                SizedBox(height: 12.h),
                Text(
                  message.contains('404') 
                      ? 'Settings API is not available. Please check if the backend server is running and the settings endpoints are implemented.'
                      : message.contains('500')
                      ? 'Internal server error. The backend server is running but there\'s an issue with the settings endpoints. Please check the server logs.'
                      : message,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: AppColors.onBackground.withValues(alpha: 0.7),
                  ),
                ),
                SizedBox(height: 24.h),
                ElevatedButton.icon(
                  onPressed: () {
                    context.read<SettingsBloc>().add(const GetSettings());
                  },
                  icon: const Icon(Icons.refresh),
                  label: const Text('Retry'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildOfflineModeState(BuildContext context, SettingsEntity settings, String message) {
    final isMobile = MediaQuery.of(context).size.width < 900;
    
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Column(
        children: [
          // Offline mode banner
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
            decoration: BoxDecoration(
              color: Colors.orange.withValues(alpha: 0.1),
              border: Border(
                bottom: BorderSide(
                  color: Colors.orange.withValues(alpha: 0.3),
                  width: 1,
                ),
              ),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.cloud_off,
                  color: Colors.orange,
                  size: 20.w,
                ),
                SizedBox(width: 8.w),
                Expanded(
                  child: Text(
                    'Settings working in offline mode: $message',
                    style: TextStyle(
                      color: Colors.orange.shade800,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    context.read<SettingsBloc>().add(const GetSettings());
                  },
                  icon: Icon(
                    Icons.refresh,
                    color: Colors.orange.shade800,
                    size: 20.w,
                  ),
                ),
              ],
            ),
          ),
          // Settings content
          Expanded(
            child: AnimatedBuilder(
              animation: _fadeAnimation,
              builder: (context, child) {
                return FadeTransition(
                  opacity: _fadeAnimation,
                  child: SlideTransition(
                    position: _slideAnimation,
                    child: Padding(
                      padding: EdgeInsets.all(isMobile ? 16.w : 32.w),
                      child: isMobile 
                        ? _buildMobileLayout(context, settings)
                        : _buildWebLayout(context, settings),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMobileLayout(BuildContext context, SettingsEntity settings) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).padding.bottom + 80.h, // Add bottom navigation height
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        
          // Core Settings Section
          _buildSectionHeader('Core Settings'),
          SizedBox(height: 16.h),
          
          _buildSettingsCard(
            context,
            title: 'Screen Sharing',
            subtitle: 'Enable screen sharing functionality',
            icon: Icons.screen_share,
            color: Colors.blue,
            value: settings.enableScreenShare,
            onChanged: (value) => _updateSetting(
              context,
              settings.copyWith(enableScreenShare: value),
            ),
          ),
          
          SizedBox(height: 16.h),
          
          _buildSettingsCard(
            context,
            title: 'App in App',
            subtitle: 'Enable app within app functionality',
            icon: Icons.apps,
            color: Colors.purple,
            value: settings.enableAppInApp,
            onChanged: (value) => _updateSetting(
              context,
              settings.copyWith(enableAppInApp: value),
            ),
          ),
          
          SizedBox(height: 16.h),
          
          _buildSettingsCard(
            context,
            title: 'Push Notifications',
            subtitle: 'Receive push notifications',
            icon: Icons.notifications,
            color: Colors.orange,
            value: settings.pushNotifications,
            onChanged: (value) => _updateSetting(
              context,
              settings.copyWith(pushNotifications: value),
            ),
          ),
          
          SizedBox(height: 24.h),
          
          // System Settings Section
          _buildSectionHeader('System Settings'),
          SizedBox(height: 16.h),
          
          _buildSettingsCard(
            context,
            title: 'Maintenance Mode',
            subtitle: 'Enable maintenance mode',
            icon: Icons.build,
            color: Colors.red,
            value: settings.maintenanceMode,
            onChanged: (value) => _updateSetting(
              context,
              settings.copyWith(maintenanceMode: value),
            ),
          ),
          
          SizedBox(height: 16.h),
          
          _buildSettingsCard(
            context,
            title: 'Registration',
            subtitle: 'Allow new user registrations',
            icon: Icons.person_add,
            color: Colors.green,
            value: settings.registrationEnabled,
            onChanged: (value) => _updateSetting(
              context,
              settings.copyWith(registrationEnabled: value),
            ),
          ),
          
          SizedBox(height: 16.h),
          
          _buildSettingsCard(
            context,
            title: 'Auto Backup',
            subtitle: 'Enable automatic backups',
            icon: Icons.backup,
            color: Colors.teal,
            value: settings.autoBackupEnabled,
            onChanged: (value) => _updateSetting(
              context,
              settings.copyWith(autoBackupEnabled: value),
            ),
          ),
          
          SizedBox(height: 24.h),
          
          // System Info Section
          _buildSectionHeader('System Information'),
          SizedBox(height: 16.h),
          
          _buildInfoCard(
            context,
            title: 'Version',
            value: settings.systemInfo.version,
            icon: Icons.info,
            color: Colors.blue,
          ),
          
          SizedBox(height: 16.h),
          
          _buildInfoCard(
            context,
            title: 'Last Updated',
            value: _formatDate(settings.systemInfo.lastUpdated),
            icon: Icons.update,
            color: Colors.orange,
          ),
          
          SizedBox(height: 16.h),
          
          _buildInfoCard(
            context,
            title: 'Uptime',
            value: '${settings.systemInfo.uptime.toStringAsFixed(1)} hours',
            icon: Icons.timer,
            color: Colors.green,
          ),
          ],
        ),
      ),
    );
  }

  Widget _buildWebLayout(BuildContext context, SettingsEntity settings) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Main Content
        Expanded(
          flex: 3,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header
                SizedBox(height: 32.h),
                
                // Core Settings Section
                _buildSectionHeader('Core Settings'),
                SizedBox(height: 24.h),
                
                // Settings Grid
                GridView.count(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  crossAxisSpacing: 24.w,
                  mainAxisSpacing: 24.h,
                  childAspectRatio: 1.2,
                  children: [
                    _buildWebSettingsCard(
                      context,
                      title: 'Screen Sharing',
                      subtitle: 'Enable screen sharing functionality for users',
                      icon: Icons.screen_share,
                      color: Colors.blue,
                      value: settings.enableScreenShare,
                      onChanged: (value) => _updateSetting(
                        context,
                        settings.copyWith(enableScreenShare: value),
                      ),
                    ),
                    _buildWebSettingsCard(
                      context,
                      title: 'App in App',
                      subtitle: 'Enable app within app functionality',
                      icon: Icons.apps,
                      color: Colors.purple,
                      value: settings.enableAppInApp,
                      onChanged: (value) => _updateSetting(
                        context,
                        settings.copyWith(enableAppInApp: value),
                      ),
                    ),
                    _buildWebSettingsCard(
                      context,
                      title: 'Push Notifications',
                      subtitle: 'Receive push notifications for updates',
                      icon: Icons.notifications,
                      color: Colors.orange,
                      value: settings.pushNotifications,
                      onChanged: (value) => _updateSetting(
                        context,
                        settings.copyWith(pushNotifications: value),
                      ),
                    ),
                    _buildWebSettingsCard(
                      context,
                      title: 'Maintenance Mode',
                      subtitle: 'Enable maintenance mode',
                      icon: Icons.build,
                      color: Colors.red,
                      value: settings.maintenanceMode,
                      onChanged: (value) => _updateSetting(
                        context,
                        settings.copyWith(maintenanceMode: value),
                      ),
                    ),
                    _buildWebSettingsCard(
                      context,
                      title: 'Registration',
                      subtitle: 'Allow new user registrations',
                      icon: Icons.person_add,
                      color: Colors.green,
                      value: settings.registrationEnabled,
                      onChanged: (value) => _updateSetting(
                        context,
                        settings.copyWith(registrationEnabled: value),
                      ),
                    ),
                    _buildWebSettingsCard(
                      context,
                      title: 'Auto Backup',
                      subtitle: 'Enable automatic backups',
                      icon: Icons.backup,
                      color: Colors.teal,
                      value: settings.autoBackupEnabled,
                      onChanged: (value) => _updateSetting(
                        context,
                        settings.copyWith(autoBackupEnabled: value),
                      ),
                    ),
                  ],
                ),
                
                SizedBox(height: 32.h),
                
                // System Information Section
                _buildSectionHeader('System Information'),
                SizedBox(height: 24.h),
                
                GridView.count(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: 3,
                  crossAxisSpacing: 24.w,
                  mainAxisSpacing: 24.h,
                  childAspectRatio: 1.5,
                  children: [
                    _buildWebInfoCard(
                      context,
                      title: 'Version',
                      value: settings.systemInfo.version,
                      icon: Icons.info,
                      color: Colors.blue,
                    ),
                    _buildWebInfoCard(
                      context,
                      title: 'Last Updated',
                      value: _formatDate(settings.systemInfo.lastUpdated),
                      icon: Icons.update,
                      color: Colors.orange,
                    ),
                    _buildWebInfoCard(
                      context,
                      title: 'Uptime',
                      value: '${settings.systemInfo.uptime.toStringAsFixed(1)} hours',
                      icon: Icons.timer,
                      color: Colors.green,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        
        SizedBox(width: 32.w),
        
        // Quick Actions Sidebar
        Expanded(
          flex: 1,
          child: _buildQuickActionsSidebar(context),
        ),
      ],
    );
  }

 
  Widget _buildSettingsCard(
    BuildContext context, {
    required String title,
    required String subtitle,
    required IconData icon,
    required Color color,
    required bool value,
    required ValueChanged<bool> onChanged,
  }) {
    return Container(
      padding: EdgeInsets.all(20.w),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(16.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.08),
            blurRadius: 20,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(12.w),
            decoration: BoxDecoration(
              color: color.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Icon(
              icon,
              color: color,
              size: 24.w,
            ),
          ),
          SizedBox(width: 16.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.onBackground,
                  ),
                ),
                SizedBox(height: 4.h),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: AppColors.onBackground.withValues(alpha: 0.7),
                  ),
                ),
                SizedBox(height: 4.h),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 2.h),
                  decoration: BoxDecoration(
                    color: Colors.green.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(8.r),
                    border: Border.all(
                      color: Colors.green.withValues(alpha: 0.3),
                      width: 1,
                    ),
                  ),
                  child: Text(
                    'Live Update',
                    style: TextStyle(
                      fontSize: 10.sp,
                      color: Colors.green,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Switch(
            value: value,
            onChanged: onChanged,
            activeColor: color,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
        ],
      ),
    );
  }

  Widget _buildWebSettingsCard(
    BuildContext context, {
    required String title,
    required String subtitle,
    required IconData icon,
    required Color color,
    required bool value,
    required ValueChanged<bool> onChanged,
  }) {
    return Container(
      padding: EdgeInsets.all(24.w),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.08),
            blurRadius: 20,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(12.w),
                decoration: BoxDecoration(
                  color: color.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Icon(
                  icon,
                  color: color,
                  size: 24.w,
                ),
              ),
               const Spacer(),
               Switch(
                 value: value,
                 onChanged: onChanged,
                 activeColor: color,
                 materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
               ),
            ],
          ),
          SizedBox(height: 16.h),
          Text(
            title,
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.onBackground,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            subtitle,
            style: TextStyle(
              fontSize: 14.sp,
              color: AppColors.onBackground.withValues(alpha: 0.7),
            ),
          ),
          SizedBox(height: 8.h),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 2.h),
            decoration: BoxDecoration(
              color: Colors.green.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(8.r),
              border: Border.all(
                color: Colors.green.withValues(alpha: 0.3),
                width: 1,
              ),
            ),
            child: Text(
              'Live Update',
              style: TextStyle(
                fontSize: 10.sp,
                color: Colors.green,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildQuickActionsSidebar(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24.w),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.08),
            blurRadius: 20,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Quick Actions',
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.w700,
              color: AppColors.onBackground,
            ),
          ),
          SizedBox(height: 24.h),
          
          _buildQuickActionItem(
            context,
            title: 'Reset to Default',
            icon: Icons.restore,
            color: Colors.orange,
            onTap: () => _resetToDefault(context),
          ),
          
          SizedBox(height: 12.h),
          
          _buildQuickActionItem(
            context,
            title: 'Export Settings',
            icon: Icons.download,
            color: Colors.blue,
            onTap: () => _exportSettings(context),
          ),
          
          SizedBox(height: 12.h),
          
          _buildQuickActionItem(
            context,
            title: 'Import Settings',
            icon: Icons.upload,
            color: Colors.green,
            onTap: () => _importSettings(context),
          ),
        ],
      ),
    );
  }

  Widget _buildQuickActionItem(
    BuildContext context, {
    required String title,
    required IconData icon,
    required Color color,
    required VoidCallback onTap,
  }) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(12.r),
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.all(16.w),
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.all(8.w),
                decoration: BoxDecoration(
                  color: color.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Icon(
                  icon,
                  color: color,
                  size: 20.w,
                ),
              ),
              SizedBox(width: 12.w),
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.onBackground,
                  ),
                ),
              ),
              Icon(
                Icons.arrow_forward_ios,
                size: 16.w,
                color: AppColors.onBackground.withValues(alpha: 0.5),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _updateSetting(BuildContext context, SettingsEntity settings) {
    // Dispatch the event to update settings
    context.read<SettingsBloc>().add(UpdateSettings(settings: settings));
  }

  void _resetToDefault(BuildContext context) {
    // Implement reset to default functionality
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Reset to default functionality coming soon'),
        backgroundColor: Colors.orange,
      ),
    );
  }

  void _exportSettings(BuildContext context) {
    // Implement export settings functionality
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Export settings functionality coming soon'),
        backgroundColor: Colors.blue,
      ),
    );
  }

  void _importSettings(BuildContext context) {
    // Implement import settings functionality
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Import settings functionality coming soon'),
        backgroundColor: Colors.green,
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 20.sp,
        fontWeight: FontWeight.w700,
        color: AppColors.onBackground,
      ),
    );
  }

  Widget _buildInfoCard(
    BuildContext context, {
    required String title,
    required String value,
    required IconData icon,
    required Color color,
  }) {
    return Container(
      padding: EdgeInsets.all(20.w),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(16.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.08),
            blurRadius: 20,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(12.w),
            decoration: BoxDecoration(
              color: color.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Icon(
              icon,
              color: color,
              size: 24.w,
            ),
          ),
          SizedBox(width: 16.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.onBackground,
                  ),
                ),
                SizedBox(height: 4.h),
                Text(
                  value,
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: AppColors.onBackground.withValues(alpha: 0.7),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildWebInfoCard(
    BuildContext context, {
    required String title,
    required String value,
    required IconData icon,
    required Color color,
  }) {
    return Container(
      padding: EdgeInsets.all(24.w),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.08),
            blurRadius: 20,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(12.w),
                decoration: BoxDecoration(
                  color: color.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Icon(
                  icon,
                  color: color,
                  size: 24.w,
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          Text(
            title,
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.onBackground,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            value,
            style: TextStyle(
              fontSize: 14.sp,
              color: AppColors.onBackground.withValues(alpha: 0.7),
            ),
          ),
        ],
      ),
    );
  }

  String _formatDate(String dateString) {
    try {
      final date = DateTime.parse(dateString);
      final now = DateTime.now();
      final difference = now.difference(date);
      
      if (difference.inDays > 0) {
        return '${difference.inDays} days ago';
      } else if (difference.inHours > 0) {
        return '${difference.inHours} hours ago';
      } else if (difference.inMinutes > 0) {
        return '${difference.inMinutes} minutes ago';
      } else {
        return 'Just now';
      }
    } catch (e) {
      return dateString;
    }
  }
}
