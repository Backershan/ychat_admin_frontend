import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/utils/responsive.dart';
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
  String _selectedCategory = 'All';
  final List<String> _categories = ['All', 'productivity', 'entertainment', 'business', 'education', 'health', 'finance'];

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
      body: isMobile ? _buildMobileLayout() : _buildDesktopLayout(),
    );
  }

  Widget _buildMobileLayout() {
    return BlocListener<AppBloc, AppState>(
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
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            // Mobile App Bar
            // SliverAppBar(
            //   expandedHeight: 100.h,
            //   floating: false,
            //   pinned: true,
            //   backgroundColor: AppColors.primary,
            //   flexibleSpace: FlexibleSpaceBar(
            //     title: Text(
            //       'App Management',
            //       style: TextStyle(
            //         color: Colors.white,
            //         fontSize: 18.sp,
            //         fontWeight: FontWeight.bold,
            //       ),
            //     ),
            //     background: Container(
            //       decoration: BoxDecoration(
            //         gradient: LinearGradient(
            //           begin: Alignment.topLeft,
            //           end: Alignment.bottomRight,
            //           colors: [
            //             AppColors.primary,
            //             AppColors.primary.withValues(alpha: 0.8),
            //           ],
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
            
            // Content
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.all(16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildCategoryFilter(),
                    SizedBox(height: 16.h),
                    _buildContent(),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
  }

  Widget _buildDesktopLayout() {
    return BlocListener<AppBloc, AppState>(
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
                    all: 32,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildHeader(),
                      SizedBox(height: 24.h),
                      _buildCategoryFilter(),
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
      );
  }

  Widget _buildHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(
              Icons.apps,
              size: 32.w,
              color: AppColors.primary,
            ),
            SizedBox(width: 12.w),
            Text(
              'App Management',
              style: TextStyle(
                fontSize: 28.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.onBackground,
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: () => context.read<AppBloc>().add(const RefreshApps()),
              icon: const Icon(Icons.refresh),
              tooltip: 'Refresh Apps',
            ),
          ],
        ),
        SizedBox(height: 8.h),
        Row(
          children: [
            BlocBuilder<AppBloc, AppState>(
              builder: (context, state) {
                String statusText = 'Loading...';
                Color statusColor = Colors.blue;
                
                if (state is AppsLoaded) {
                  statusText = '${state.apps.apps.length} apps loaded';
                  statusColor = Colors.green;
                } else if (state is AppError) {
                  statusText = 'Error: ${state.failure.message}';
                  statusColor = Colors.red;
                } else if (state is AppLoading) {
                  statusText = 'Loading apps...';
                  statusColor = Colors.blue;
                }
                
                return Row(
                  children: [
                    Container(
                      width: 8.w,
                      height: 8.w,
                      decoration: BoxDecoration(
                        color: statusColor,
                        shape: BoxShape.circle,
                      ),
                    ),
                    SizedBox(width: 8.w),
                    Text(
                      statusText,
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: statusColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                );
              },
            ),
            const Spacer(),
            _buildCategoryFilter(),
          ],
        ),
      ],
    );
  }

  Widget _buildContent() {
    return BlocBuilder<AppBloc, AppState>(
      builder: (context, state) {
        print('🔧 AppManagementPage: Current state: ${state.runtimeType}');
        
        if (state is AppLoading) {
          print('🔧 AppManagementPage: Showing loading state');
          return const Center(child: LoadingWidget());
        } else if (state is AppError) {
          print('🔧 AppManagementPage: Showing error state: ${state.failure.message}');
          return _buildErrorState(state.failure.message);
        } else if (state is AppsLoaded) {
          print('🔧 AppManagementPage: Showing apps loaded state with ${state.apps.apps.length} apps');
          return _buildAppsList(state.apps);
        } else if (state is AppInitial) {
          print('🔧 AppManagementPage: Showing initial state, triggering GetApps');
          // Trigger GetApps if we're in initial state
          WidgetsBinding.instance.addPostFrameCallback((_) {
            context.read<AppBloc>().add(const GetApps());
          });
          return const Center(child: LoadingWidget());
        }
        
        print('🔧 AppManagementPage: Showing default loading state for state: ${state.runtimeType}');
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
              message,
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

  Widget _buildCategoryFilter() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(color: AppColors.outline),
      ),
      child: DropdownButton<String>(
        value: _selectedCategory,
        underline: const SizedBox(),
        icon: Icon(Icons.arrow_drop_down, size: 20.w),
        style: TextStyle(
          fontSize: 14.sp,
          color: AppColors.onBackground,
        ),
        items: _categories.map((String category) {
          return DropdownMenuItem<String>(
            value: category,
            child: Text(category),
          );
        }).toList(),
        onChanged: (String? newValue) {
          if (newValue != null) {
            setState(() {
              _selectedCategory = newValue;
            });
            // Always get all apps and filter locally since API returns categories as lists
            context.read<AppBloc>().add(const GetApps());
          }
        },
      ),
    );
  }

  Widget _buildAppsList(apps) {
    // Filter apps by category if not "All"
    List<dynamic> filteredApps = apps.apps;
    if (_selectedCategory != 'All') {
      filteredApps = apps.apps.where((app) {
        if (app.category == null) return false;
        
        // Handle both string and list categories
        if (app.category is List) {
          return (app.category as List).any((cat) => 
            cat.toString().toLowerCase() == _selectedCategory.toLowerCase()
          );
        } else {
          return app.category.toString().toLowerCase() == _selectedCategory.toLowerCase();
        }
      }).toList();
    }
    
    if (filteredApps.isEmpty) {
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
          ],
        ),
      );
    }

    final isMobile = MediaQuery.of(context).size.width < 900;
    
    if (isMobile) {
      // Mobile: Use ListView for better scrolling
      return ListView.separated(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.only(bottom: 100.h), // Bottom padding for FAB
        itemCount: filteredApps.length,
        separatorBuilder: (context, index) => SizedBox(height: 12.h),
        itemBuilder: (context, index) {
          final app = filteredApps[index];
          return AppCard(
            app: app,
            onEdit: () => _showEditAppDialog(app),
            onDelete: () => _showDeleteConfirmation(app),
          );
        },
      );
    } else {
      // Desktop: Use GridView
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
        itemCount: filteredApps.length,
        itemBuilder: (context, index) {
          final app = filteredApps[index];
          return AppCard(
            app: app,
            onEdit: () => _showEditAppDialog(app),
            onDelete: () => _showDeleteConfirmation(app),
          );
        },
      );
    }
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
