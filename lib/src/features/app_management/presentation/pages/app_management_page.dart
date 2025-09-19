import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/utils/web_responsive.dart';
import '../bloc/app_bloc.dart';
import '../widgets/app_card.dart';
import '../widgets/create_app_dialog.dart';
import '../widgets/edit_app_dialog.dart';
import '../../../../shared/widgets/loading_widget.dart';

class AppManagementPage extends StatefulWidget {
  const AppManagementPage({super.key});

  @override
  State<AppManagementPage> createState() => _AppManagementPageState();
}

class _AppManagementPageState extends State<AppManagementPage>
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
    
    // Load apps when page initializes
    context.read<AppBloc>().add(const GetApps());
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
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => _showCreateAppDialog(),
        icon: const Icon(Icons.add),
        label: const Text('Add App'),
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.onPrimary,
      ),
      body: BlocListener<AppBloc, AppState>(
        listener: (context, state) {
          if (state is AppCreated) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('App created successfully'),
                backgroundColor: Colors.green,
              ),
            );
            context.read<AppBloc>().add(const GetApps());
          } else if (state is AppUpdated) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('App updated successfully'),
                backgroundColor: Colors.blue,
              ),
            );
            context.read<AppBloc>().add(const GetApps());
          } else if (state is AppDeleted) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('App deleted successfully'),
                backgroundColor: Colors.orange,
              ),
            );
            context.read<AppBloc>().add(const GetApps());
          } else if (state is AppError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.failure.message),
                backgroundColor: Colors.red,
              ),
            );
          }
        },
        child: AnimatedBuilder(
          animation: _fadeAnimation,
          builder: (context, child) {
            return FadeTransition(
              opacity: _fadeAnimation,
              child: SlideTransition(
                position: _slideAnimation,
                child: Padding(
                  padding: WebResponsive.getWebPadding(
                    context,
                    all: isMobile ? 16 : 32,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildHeader(),
                      SizedBox(height: 24.h),
                      Expanded(
                        child: _buildContent(),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      children: [
      
        const Spacer(),
        IconButton(
          onPressed: () => context.read<AppBloc>().add(const RefreshApps()),
          icon: const Icon(Icons.refresh),
          tooltip: 'Refresh Apps',
        ),
      ],
    );
  }

  Widget _buildContent() {
    return BlocBuilder<AppBloc, AppState>(
      builder: (context, state) {
        if (state is AppLoading) {
          return const Center(child: LoadingWidget());
        } else if (state is AppError) {
          return _buildErrorState(state.failure.message);
        } else if (state is AppsLoaded) {
          return _buildAppsList(state.apps);
        }
        return const Center(child: LoadingWidget());
      },
    );
  }

  Widget _buildErrorState(String message) {
    return Center(
      child: Padding(
        padding: WebResponsive.getWebPadding(context, all: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.error_outline,
              size: 64.w,
              color: Colors.red.withValues(alpha: 0.6),
            ),
            SizedBox(height: 16.h),
            Text(
              'Unable to Load Apps',
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.onBackground,
              ),
            ),
            SizedBox(height: 8.h),
            Text(
              message.contains('404')
                  ? 'Apps API is not available. Please check if the backend server is running and the app endpoints are implemented.'
                  : message.contains('500')
                  ? 'Internal server error. The backend server is running but there\'s an issue with the app endpoints. Please check the server logs.'
                  : message,
              style: TextStyle(
                fontSize: 14.sp,
                color: AppColors.onBackground.withValues(alpha: 0.6),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 24.h),
            ElevatedButton.icon(
              onPressed: () => context.read<AppBloc>().add(const GetApps()),
              icon: const Icon(Icons.refresh),
              label: const Text('Retry'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAppsList(apps) {
    if (apps.apps.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.apps,
              size: 64.w,
              color: AppColors.onBackground.withValues(alpha: 0.3),
            ),
            SizedBox(height: 16.h),
            Text(
              'No Apps Found',
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.onBackground,
              ),
            ),
            SizedBox(height: 8.h),
            Text(
              'Create your first app to get started',
              style: TextStyle(
                fontSize: 14.sp,
                color: AppColors.onBackground.withValues(alpha: 0.6),
              ),
            ),
            SizedBox(height: 16.h),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16.w),
              padding: WebResponsive.getWebPadding(context, all: 16),
              decoration: BoxDecoration(
                color: Colors.blue.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(12.r),
                border: Border.all(
                  color: Colors.blue.withValues(alpha: 0.3),
                  width: 1,
                ),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.cloud_off,
                    color: Colors.blue,
                    size: 20.w,
                  ),
                  SizedBox(width: 8.w),
                  Expanded(
                    child: Text(
                      'Apps API is not available. Working in offline mode.',
                      style: TextStyle(
                        color: Colors.blue.shade700,
                        fontSize: 12.sp,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: WebResponsive.getWebGridColumns(
          context,
          mobileColumns: 1,
          tabletColumns: 2,
          desktopColumns: 3,
          largeDesktopColumns: 4,
        ),
        crossAxisSpacing: WebResponsive.getWebSpacing(16, context),
        mainAxisSpacing: WebResponsive.getWebHeight(16, context),
        childAspectRatio: 1.2,
      ),
      itemCount: apps.apps.length,
      itemBuilder: (context, index) {
        final app = apps.apps[index];
        return AppCard(
          app: app,
          onEdit: () => _showEditAppDialog(app),
          onDelete: () => _showDeleteConfirmation(app),
        );
      },
    );
  }

  void _showCreateAppDialog() {
    showDialog(
      context: context,
      builder: (context) => CreateAppDialog(
        onAppCreated: () {
          context.read<AppBloc>().add(const GetApps());
        },
      ),
    );
  }

  void _showEditAppDialog(app) {
    showDialog(
      context: context,
      builder: (context) => EditAppDialog(
        app: app,
        onAppUpdated: () {
          context.read<AppBloc>().add(const GetApps());
        },
      ),
    );
  }

  void _showDeleteConfirmation(app) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Delete App'),
        content: Text('Are you sure you want to delete "${app.name}"?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
              context.read<AppBloc>().add(DeleteApp(appId: app.id));
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
            ),
            child: const Text('Delete'),
          ),
        ],
      ),
    );
  }
}
