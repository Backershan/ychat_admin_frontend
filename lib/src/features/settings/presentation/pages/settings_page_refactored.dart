import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/di/injection.dart';
import '../bloc/settings_bloc.dart';
import '../../domain/entities/settings_entity.dart';
import '../widgets/settings_card.dart';
import '../widgets/section_header.dart';
import '../widgets/info_card.dart';
import '../widgets/quick_actions_sidebar.dart';

class SettingsPageRefactored extends StatelessWidget {
  const SettingsPageRefactored({super.key});

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
    return Scaffold(
      backgroundColor: AppColors.background,
      body: BlocListener<SettingsBloc, SettingsState>(
        listener: (context, state) {
          if (state is SettingsError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Row(
                  children: [
                    const Icon(Icons.error_outline, color: Colors.white),
                    SizedBox(width: 8.w),
                    Expanded(child: Text(state.message)),
                  ],
                ),
                backgroundColor: Colors.red,
                behavior: SnackBarBehavior.floating,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.r),
                ),
              ),
            );
          } else if (state is SettingsOfflineMode) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Row(
                  children: [
                    const Icon(Icons.cloud_off, color: Colors.white),
                    SizedBox(width: 8.w),
                    Expanded(child: Text(state.message)),
                  ],
                ),
                backgroundColor: Colors.orange,
                behavior: SnackBarBehavior.floating,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.r),
                ),
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
            } else if (state is SettingsLoaded) {
              return _buildLoadedState(context, state.settings);
            }
            return _buildLoadingState();
          },
        ),
      ),
    );
  }

  Widget _buildLoadingState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(AppColors.primary),
            strokeWidth: 3.w,
          ),
          SizedBox(height: 24.h),
          Text(
            'Loading settings...',
            style: TextStyle(
              fontSize: 16.sp,
              color: AppColors.onBackground.withValues(alpha: 0.7),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildErrorState(BuildContext context, String message) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(24.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.error_outline,
              size: 64.w,
              color: Colors.red.withValues(alpha: 0.7),
            ),
            SizedBox(height: 24.h),
            Text(
              'Failed to load settings',
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.onBackground,
              ),
            ),
            SizedBox(height: 8.h),
            Text(
              message,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14.sp,
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
                  borderRadius: BorderRadius.circular(8.r),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOfflineModeState(BuildContext context, SettingsEntity settings, String message) {
    return _buildLoadedState(context, settings);
  }

  Widget _buildLoadedState(BuildContext context, SettingsEntity settings) {
    final isMobile = MediaQuery.of(context).size.width < 900;
    
    if (isMobile) {
      return _buildMobileLayout(context, settings);
    } else {
      return _buildWebLayout(context, settings);
    }
  }

  Widget _buildMobileLayout(BuildContext context, SettingsEntity settings) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).padding.bottom + 80.h,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Container(
              padding: EdgeInsets.fromLTRB(24.w, 60.h, 24.w, 24.h),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    AppColors.primary,
                    AppColors.primary.withValues(alpha: 0.8),
                  ],
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Settings',
                    style: TextStyle(
                      fontSize: 28.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    'Manage your application preferences',
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: Colors.white.withValues(alpha: 0.9),
                    ),
                  ),
                ],
              ),
            ),
            
            // Content
            Padding(
              padding: EdgeInsets.all(24.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Core Settings Section
                  SectionHeader(title: 'Core Settings'),
                  SizedBox(height: 16.h),
                  
                  SettingsCard(
                    title: 'Screen Share',
                    subtitle: 'Allow users to share their screen',
                    icon: Icons.screen_share,
                    color: Colors.blue,
                    value: settings.enableScreenShare,
                    onChanged: (value) => _updateSetting('enableScreenShare', value),
                  ),
                  
                  SizedBox(height: 16.h),
                  
                  SettingsCard(
                    title: 'App in App',
                    subtitle: 'Enable app within app functionality',
                    icon: Icons.apps,
                    color: Colors.purple,
                    value: settings.enableAppInApp,
                    onChanged: (value) => _updateSetting('enableAppInApp', value),
                  ),
                  
                  SizedBox(height: 16.h),
                  
                  SettingsCard(
                    title: 'Push Notifications',
                    subtitle: 'Receive push notifications',
                    icon: Icons.notifications,
                    color: Colors.orange,
                    value: settings.pushNotifications,
                    onChanged: (value) => _updateSetting('pushNotifications', value),
                  ),
                  
                  SizedBox(height: 32.h),
                  
                  // System Settings Section
                  SectionHeader(title: 'System Settings'),
                  SizedBox(height: 16.h),
                  
                  SettingsCard(
                    title: 'Maintenance Mode',
                    subtitle: 'Put the system in maintenance mode',
                    icon: Icons.build,
                    color: Colors.red,
                    value: settings.maintenanceMode,
                    onChanged: (value) => _updateSetting('maintenanceMode', value),
                  ),
                  
                  SizedBox(height: 16.h),
                  
                  SettingsCard(
                    title: 'Registration',
                    subtitle: 'Allow new user registrations',
                    icon: Icons.person_add,
                    color: Colors.green,
                    value: settings.registrationEnabled,
                    onChanged: (value) => _updateSetting('registrationEnabled', value),
                  ),
                  
                  SizedBox(height: 32.h),
                  
                  // System Information
                  SectionHeader(title: 'System Information'),
                  SizedBox(height: 16.h),
                  
                  InfoCard(
                    title: 'Max File Size',
                    value: '${settings.maxFileSize} MB',
                    icon: Icons.storage,
                    color: Colors.blue,
                  ),
                  
                  SizedBox(height: 16.h),
                  
                  InfoCard(
                    title: 'Max Users Per Group',
                    value: settings.maxUsersPerGroup.toString(),
                    icon: Icons.group,
                    color: Colors.green,
                  ),
                  
                  SizedBox(height: 16.h),
                  
                  InfoCard(
                    title: 'Auto Backup',
                    value: settings.autoBackupEnabled ? 'Enabled' : 'Disabled',
                    icon: Icons.backup,
                    color: settings.autoBackupEnabled ? Colors.green : Colors.grey,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildWebLayout(BuildContext context, SettingsEntity settings) {
    return Row(
      children: [
        // Main content
        Expanded(
          flex: 3,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(24.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Header
                  Text(
                    'Settings',
                    style: TextStyle(
                      fontSize: 32.sp,
                      fontWeight: FontWeight.bold,
                      color: AppColors.onBackground,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    'Manage your application preferences',
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: AppColors.onBackground.withValues(alpha: 0.7),
                    ),
                  ),
                  SizedBox(height: 32.h),
                  
                  // Core Settings Section
                  SectionHeader(title: 'Core Settings'),
                  SizedBox(height: 24.h),
                  
                  // Settings cards in a grid
                  GridView.count(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: 2,
                    crossAxisSpacing: 16.w,
                    mainAxisSpacing: 16.h,
                    childAspectRatio: 2.5,
                    children: [
                      SettingsCard(
                        title: 'Screen Share',
                        subtitle: 'Allow users to share their screen',
                        icon: Icons.screen_share,
                        color: Colors.blue,
                        value: settings.enableScreenShare,
                        onChanged: (value) => _updateSetting('enableScreenShare', value),
                      ),
                      SettingsCard(
                        title: 'App in App',
                        subtitle: 'Enable app within app functionality',
                        icon: Icons.apps,
                        color: Colors.purple,
                        value: settings.enableAppInApp,
                        onChanged: (value) => _updateSetting('enableAppInApp', value),
                      ),
                      SettingsCard(
                        title: 'Push Notifications',
                        subtitle: 'Receive push notifications',
                        icon: Icons.notifications,
                        color: Colors.orange,
                        value: settings.pushNotifications,
                        onChanged: (value) => _updateSetting('pushNotifications', value),
                      ),
                      SettingsCard(
                        title: 'Maintenance Mode',
                        subtitle: 'Put the system in maintenance mode',
                        icon: Icons.build,
                        color: Colors.red,
                        value: settings.maintenanceMode,
                        onChanged: (value) => _updateSetting('maintenanceMode', value),
                      ),
                    ],
                  ),
                  
                  SizedBox(height: 32.h),
                  
                  // System Information
                  SectionHeader(title: 'System Information'),
                  SizedBox(height: 24.h),
                  
                  GridView.count(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: 3,
                    crossAxisSpacing: 16.w,
                    mainAxisSpacing: 16.h,
                    childAspectRatio: 2.0,
                    children: [
                      InfoCard(
                        title: 'Max File Size',
                        value: '${settings.maxFileSize} MB',
                        icon: Icons.storage,
                        color: Colors.blue,
                      ),
                      InfoCard(
                        title: 'Max Users Per Group',
                        value: settings.maxUsersPerGroup.toString(),
                        icon: Icons.group,
                        color: Colors.green,
                      ),
                      InfoCard(
                        title: 'Auto Backup',
                        value: settings.autoBackupEnabled ? 'Enabled' : 'Disabled',
                        icon: Icons.backup,
                        color: settings.autoBackupEnabled ? Colors.green : Colors.grey,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        
        // Sidebar
        Container(
          width: 300.w,
          padding: EdgeInsets.all(24.w),
          child: QuickActionsSidebar(
            onResetToDefault: () => _resetToDefault(context),
            onExportSettings: () => _exportSettings(context),
            onImportSettings: () => _importSettings(context),
          ),
        ),
      ],
    );
  }

  void _updateSetting(String key, bool value) {
    // Implementation for updating settings
    // This would typically call a bloc event
  }

  void _resetToDefault(BuildContext context) {
    // Implementation for resetting to default settings
  }

  void _exportSettings(BuildContext context) {
    // Implementation for exporting settings
  }

  void _importSettings(BuildContext context) {
    // Implementation for importing settings
  }
}
