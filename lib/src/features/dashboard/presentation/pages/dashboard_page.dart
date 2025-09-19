import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/routes/app_routes.dart';
import '../../../../core/di/injection.dart';
import '../../../../core/utils/web_responsive.dart';
import '../bloc/dashboard_bloc.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<DashboardBloc>()..add(const GetDashboardData()),
      child: const _DashboardView(),
    );
  }
}

class _DashboardView extends StatefulWidget {
  const _DashboardView();

  @override
  State<_DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<_DashboardView>
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
      body: BlocBuilder<DashboardBloc, DashboardState>(
        builder: (context, state) {
          if (state is DashboardLoading) {
            return _buildLoadingState();
          } else if (state is DashboardError) {
            return _buildErrorState(context, state.message);
          } else if (state is DashboardLoaded) {
            return AnimatedBuilder(
              animation: _fadeAnimation,
              builder: (context, child) {
                return FadeTransition(
                  opacity: _fadeAnimation,
                  child: SlideTransition(
                    position: _slideAnimation,
                    child: Padding(
                      padding: EdgeInsets.all(isMobile ? 16.w : 32.w),
                      child: isMobile 
                        ? _buildMobileLayout(context, state.dashboardData)
                        : _buildWebLayout(context, state.dashboardData),
                    ),
                  ),
                );
              },
            );
          }
          return _buildLoadingState();
        },
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
                    'Loading dashboard data...',
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
                  'Error Loading Dashboard',
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.onBackground,
                  ),
                ),
                SizedBox(height: 12.h),
                Text(
                  message,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: AppColors.onBackground.withValues(alpha: 0.7),
                  ),
                ),
                SizedBox(height: 24.h),
                ElevatedButton.icon(
                  onPressed: () {
                    context.read<DashboardBloc>().add(const GetDashboardData());
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

  Widget _buildMobileLayout(BuildContext context, dashboardData) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
   
          
          // User Metrics - 2 cards per row
          Text(
            'User Metrics',
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.onBackground,
            ),
          ),
          SizedBox(height: 16.h),
          GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            crossAxisSpacing: 12.w,
            mainAxisSpacing: 12.h,
            childAspectRatio: 1.5,
            children: [
              _buildUserMetricCard(
                title: 'Total Users',
                value: dashboardData.users.total.toString(),
                icon: Icons.people,
                color: AppColors.primary,
              ),
              _buildUserMetricCard(
                title: 'Active Users',
                value: dashboardData.users.active.toString(),
                icon: Icons.person_pin,
                color: Colors.green,
              ),
              _buildUserMetricCard(
                title: 'Daily Users',
                value: dashboardData.users.daily.toString(),
                icon: Icons.today,
                color: Colors.blue,
              ),
              _buildUserMetricCard(
                title: 'Monthly Users',
                value: dashboardData.users.monthly.toString(),
                icon: Icons.calendar_month,
                color: Colors.purple,
              ),
            ],
          ),
          
          SizedBox(height: 20.h),
          
          // Screen Share Metrics - 1 card per row
          Text(
            'Screen Share Metrics',
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.onBackground,
            ),
          ),
          SizedBox(height: 12.h),
          Column(
            children: [
              _buildScreenShareCard(
                title: 'Total Screen Shares',
                value: dashboardData.screenShares.total.toString(),
                change: '+0%',
                icon: Icons.screen_share,
                color: Colors.purple,
              ),
              SizedBox(height: 8.h),
              _buildScreenShareCard(
                title: 'Daily Screen Shares',
                value: dashboardData.screenShares.daily.toString(),
                change: '+0%',
                icon: Icons.today,
                color: Colors.indigo,
              ),
              SizedBox(height: 8.h),
              _buildScreenShareCard(
                title: 'Monthly Screen Shares',
                value: dashboardData.screenShares.monthly.toString(),
                change: '+0%',
                icon: Icons.calendar_view_month,
                color: Colors.teal,
              ),
              SizedBox(height: 8.h),
              _buildScreenShareCard(
                title: 'Average Duration',
                value: '${dashboardData.screenShares.averageDuration} min',
                change: '+0%',
                icon: Icons.timer,
                color: Colors.orange,
              ),
            ],
          ),
          
          SizedBox(height: 20.h),
          
          // Geographical Distribution
          Text(
            'Geographical Distribution',
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.onBackground,
            ),
          ),
          SizedBox(height: 12.h),
          _buildGeographicalCard(dashboardData.geographicalDistribution),
        ],
      ),
    );
  }

  Widget _buildWebLayout(BuildContext context, dashboardData) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Main Content
        Expanded(
          flex: 2,
          child: SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: WebResponsive.getMaxContentWidth(context),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                // Header with gradient
                Container(
                  padding: WebResponsive.getWebPadding(context, all: 32),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        AppColors.primary.withValues(alpha: 0.1),
                        AppColors.primary.withValues(alpha: 0.05),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(16.w),
                        decoration: BoxDecoration(
                          color: AppColors.primary,
                          borderRadius: BorderRadius.circular(16.r),
                        ),
                        child: Icon(
                          Icons.dashboard,
                          color: Colors.white,
                          size: 32.w,
                        ),
                      ),
                      SizedBox(width: 20.w),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Dashboard Overview',
                              style: TextStyle(
                                fontSize: WebResponsive.getWebFontSize(36, context),
                                fontWeight: FontWeight.bold,
                                color: AppColors.onBackground,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: 8.h),
                            Text(
                              'Welcome back! Here\'s what\'s happening with your platform.',
                              style: TextStyle(
                                fontSize: WebResponsive.getWebFontSize(16, context),
                                color: AppColors.onBackground.withValues(alpha: 0.7),
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                
                SizedBox(height: 32.h),
                
                // User Metrics - 4 cards per row
                Text(
                  'User Metrics',
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w700,
                    color: AppColors.onBackground,
                  ),
                ),
                SizedBox(height: 20.h),
                GridView.count(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: WebResponsive.getWebGridColumns(
                    context,
                    mobileColumns: 1,
                    tabletColumns: 2,
                    desktopColumns: 3,
                    largeDesktopColumns: 4,
                  ),
                  crossAxisSpacing: WebResponsive.getWebSpacing(20, context),
                  mainAxisSpacing: WebResponsive.getWebHeight(20, context),
                  childAspectRatio: 1.3,
                  children: [
                    _buildUserMetricCard(
                      title: 'Total Users',
                      value: dashboardData.users.total.toString(),
                      icon: Icons.people,
                      color: AppColors.primary,
                    ),
                    _buildUserMetricCard(
                      title: 'Active Users',
                      value: dashboardData.users.active.toString(),
                      icon: Icons.person_pin,
                      color: Colors.green,
                    ),
                    _buildUserMetricCard(
                      title: 'Daily Users',
                      value: dashboardData.users.daily.toString(),
                      icon: Icons.today,
                      color: Colors.blue,
                    ),
                    _buildUserMetricCard(
                      title: 'Monthly Users',
                      value: dashboardData.users.monthly.toString(),
                      icon: Icons.calendar_month,
                      color: Colors.purple,
                    ),
                  ],
                ),
                
                SizedBox(height: 40.h),
                
                // Screen Share Metrics - 4 cards per row
                Text(
                  'Screen Share Metrics',
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w700,
                    color: AppColors.onBackground,
                  ),
                ),
                SizedBox(height: 20.h),
                GridView.count(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: WebResponsive.getWebGridColumns(
                    context,
                    mobileColumns: 1,
                    tabletColumns: 2,
                    desktopColumns: 3,
                    largeDesktopColumns: 4,
                  ),
                  crossAxisSpacing: WebResponsive.getWebSpacing(20, context),
                  mainAxisSpacing: WebResponsive.getWebHeight(20, context),
                  childAspectRatio: 1.3,
                  children: [
                    _buildScreenShareCard(
                      title: 'Total Screen Shares',
                      value: dashboardData.screenShares.total.toString(),
                      change: '+0%',
                      icon: Icons.screen_share,
                      color: Colors.purple,
                    ),
                    _buildScreenShareCard(
                      title: 'Daily Screen Shares',
                      value: dashboardData.screenShares.daily.toString(),
                      change: '+0%',
                      icon: Icons.today,
                      color: Colors.indigo,
                    ),
                    _buildScreenShareCard(
                      title: 'Monthly Screen Shares',
                      value: dashboardData.screenShares.monthly.toString(),
                      change: '+0%',
                      icon: Icons.calendar_view_month,
                      color: Colors.teal,
                    ),
                    _buildScreenShareCard(
                      title: 'Average Duration',
                      value: '${dashboardData.screenShares.averageDuration} min',
                      change: '+0%',
                      icon: Icons.timer,
                      color: Colors.orange,
                    ),
                  ],
                ),
                
                SizedBox(height: 40.h),
                
               
                
                // Geographical Distribution
                Text(
                  'Geographical Distribution',
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w700,
                    color: AppColors.onBackground,
                  ),
                ),
                SizedBox(height: 20.h),
                _buildGeographicalCard(dashboardData.geographicalDistribution),
                ],
              ),
            ),
          ),
        ),
        
        // Only show quick navigation on large screens (desktop and above)
        // if (MediaQuery.of(context).size.width >= 1440) ...[
        //   SizedBox(width: 24.w),
           
        //   // Quick Navigation Sidebar with fixed width
        //   SizedBox(
        //     width: 280.w,
        //     child: _buildQuickNavigationSidebar(context),
        //   ),
        // ],
      ],
    );
  }

  Widget _buildUserMetricCard({
    required String title,
    required String value,
    String? change,
    required IconData icon,
    required Color color,
  }) {
    final isMobile = MediaQuery.of(context).size.width < 900;
    
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
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
        child: isMobile 
          ? _buildMobileUserMetricCard(title, value, change, icon, color)
          : _buildWebUserMetricCard(title, value, change, icon, color),
      ),
    );
  }

  Widget _buildMobileUserMetricCard(
    String title,
    String value,
    String? change,
    IconData icon,
    Color color,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        // First row: Icon and Count
        Row(
          children: [
            // Icon
            Container(
              padding: EdgeInsets.all(10.w),
              decoration: BoxDecoration(
                color: color.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Icon(
                icon,
                color: color,
                size: 20.w,
              ),
            ),
            SizedBox(width: 8.w),
            // Count
            Expanded(
              child: Text(
                value,
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.onBackground,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            if (change != null) ...[
              SizedBox(width: 4.w),
              Flexible(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
                  decoration: BoxDecoration(
                    color: Colors.green.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.trending_up,
                        color: Colors.green,
                        size: 8.w,
                      ),
                      SizedBox(width: 1.w),
                      Flexible(
                        child: Text(
                          change,
                          style: TextStyle(
                            fontSize: 7.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.green,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ],
        ),
        SizedBox(height: 6.h),
        // Second row: Title
        Text(
          title,
          style: TextStyle(
            fontSize: 11.sp,
            color: AppColors.onBackground.withValues(alpha: 0.7),
            fontWeight: FontWeight.w500,
          ),
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
        ),
      ],
    );
  }

  Widget _buildWebUserMetricCard(
    String title,
    String value,
    String? change,
    IconData icon,
    Color color,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
            if (change != null)
              Flexible(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                  decoration: BoxDecoration(
                    color: Colors.green.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.trending_up,
                        color: Colors.green,
                        size: 12.w,
                      ),
                      SizedBox(width: 2.w),
                      Flexible(
                        child: Text(
                          change,
                          style: TextStyle(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.green,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
        SizedBox(height: 12.h),
        Text(
          value,
          style: TextStyle(
            fontSize: 24.sp,
            fontWeight: FontWeight.bold,
            color: AppColors.onBackground,
          ),
          overflow: TextOverflow.ellipsis,
        ),
        SizedBox(height: 4.h),
        Text(
          title,
          style: TextStyle(
            fontSize: 14.sp,
            color: AppColors.onBackground.withValues(alpha: 0.7),
            fontWeight: FontWeight.w500,
          ),
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
        ),
      ],
    );
  }

  Widget _buildScreenShareCard({
    required String title,
    required String value,
    required String change,
    required IconData icon,
    required Color color,
  }) {
    final isMobile = MediaQuery.of(context).size.width < 900;
    
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: EdgeInsets.all(isMobile ? 16.w : 24.w),
        decoration: BoxDecoration(
          color: AppColors.surface,
          borderRadius: BorderRadius.circular(isMobile ? 12.r : 20.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.08),
              blurRadius: isMobile ? 8 : 20,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(isMobile ? 12.w : 16.w),
              decoration: BoxDecoration(
                color: color.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(isMobile ? 8.r : 16.r),
              ),
              child: Icon(
                icon,
                color: color,
                size: isMobile ? 20.w : 28.w,
              ),
            ),
            SizedBox(width: isMobile ? 12.w : 20.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    value,
                    style: TextStyle(
                      fontSize: isMobile ? 18.sp : 24.sp,
                      fontWeight: FontWeight.bold,
                      color: AppColors.onBackground,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: isMobile ? 4.h : 8.h),
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: isMobile ? 12.sp : 14.sp,
                      color: AppColors.onBackground.withValues(alpha: 0.7),
                      fontWeight: FontWeight.w500,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: isMobile ? 8.w : 12.w, 
                vertical: isMobile ? 4.h : 8.h
              ),
              decoration: BoxDecoration(
                color: Colors.green.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(isMobile ? 6.r : 12.r),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.trending_up,
                    color: Colors.green,
                    size: isMobile ? 12.w : 16.w,
                  ),
                  SizedBox(width: isMobile ? 4.w : 6.w),
                  Text(
                    change,
                    style: TextStyle(
                      fontSize: isMobile ? 10.sp : 12.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.green,
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

  Widget _buildGeographicalCard(geographicalDistribution) {
    final isMobile = MediaQuery.of(context).size.width < 900;
    
    return Container(
      padding: EdgeInsets.all(isMobile ? 20.w : 32.w),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(isMobile ? 12.r : 20.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.08),
            blurRadius: isMobile ? 8 : 20,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(isMobile ? 8.w : 12.w),
                decoration: BoxDecoration(
                  color: Colors.blue.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(isMobile ? 8.r : 12.r),
                ),
                child: Icon(
                  Icons.public,
                  color: Colors.blue,
                  size: isMobile ? 20.w : 24.w,
                ),
              ),
              SizedBox(width: isMobile ? 12.w : 16.w),
              Flexible(
                child: Text(
                  'Geographical Distribution',
                  style: TextStyle(
                    fontSize: isMobile ? 16.sp : 20.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.onBackground,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          SizedBox(height: isMobile ? 16.h : 20.h),
          
          // Countries Section
          Text(
            'By Country',
            style: TextStyle(
              fontSize: isMobile ? 14.sp : 16.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.onBackground,
            ),
          ),
          SizedBox(height: isMobile ? 8.h : 12.h),
          ...geographicalDistribution.byCountry.take(3).map((country) => _buildCountryItem(country)).toList(),
          
          if (geographicalDistribution.byCountry.length > 3) ...[
            SizedBox(height: isMobile ? 4.h : 8.h),
            Text(
              '+${geographicalDistribution.byCountry.length - 3} more countries',
              style: TextStyle(
                fontSize: isMobile ? 10.sp : 12.sp,
                color: AppColors.onBackground.withValues(alpha: 0.6),
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
          
          SizedBox(height: isMobile ? 16.h : 20.h),
          
          // Cities Section
          Text(
            'By City',
            style: TextStyle(
              fontSize: isMobile ? 14.sp : 16.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.onBackground,
            ),
          ),
          SizedBox(height: isMobile ? 8.h : 12.h),
          ...geographicalDistribution.byCity.take(3).map((city) => _buildCityItem(city)).toList(),
          
          if (geographicalDistribution.byCity.length > 3) ...[
            SizedBox(height: isMobile ? 4.h : 8.h),
            Text(
              '+${geographicalDistribution.byCity.length - 3} more cities',
              style: TextStyle(
                fontSize: isMobile ? 10.sp : 12.sp,
                color: AppColors.onBackground.withValues(alpha: 0.6),
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildCountryItem(country) {
    return Container(
      margin: EdgeInsets.only(bottom: 8.h),
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(
          color: AppColors.outline.withValues(alpha: 0.1),
        ),
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(6.w),
            decoration: BoxDecoration(
              color: Colors.blue.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(6.r),
            ),
            child: Icon(
              Icons.flag,
              color: Colors.blue,
              size: 16.w,
            ),
          ),
          SizedBox(width: 8.w),
          Expanded(
            child: Text(
              country.country,
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.onBackground,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
            decoration: BoxDecoration(
              color: Colors.blue.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(6.r),
            ),
            child: Text(
              country.count.toString(),
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w600,
                color: Colors.blue,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCityItem(city) {
    return Container(
      margin: EdgeInsets.only(bottom: 8.h),
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(
          color: AppColors.outline.withValues(alpha: 0.1),
        ),
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(6.w),
            decoration: BoxDecoration(
              color: Colors.green.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(6.r),
            ),
            child: Icon(
              Icons.location_city,
              color: Colors.green,
              size: 16.w,
            ),
          ),
          SizedBox(width: 8.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  city.city,
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.onBackground,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 2.h),
                Text(
                  city.country,
                  style: TextStyle(
                    fontSize: 10.sp,
                    color: AppColors.onBackground.withValues(alpha: 0.6),
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
            decoration: BoxDecoration(
              color: Colors.green.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(6.r),
            ),
            child: Text(
              city.count.toString(),
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w600,
                color: Colors.green,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildQuickNavigationSidebar(BuildContext context) {
    final quickNavItems = [
      {
        'title': 'Ticketing',
        'icon': Icons.support_agent,
        'route': AppRoutes.ticketing,
        'color': Colors.blue,
      },
      {
        'title': 'App Management',
        'icon': Icons.apps,
        'route': AppRoutes.appManagement,
        'color': Colors.purple,
      },
      {
        'title': 'Users',
        'icon': Icons.people,
        'route': AppRoutes.userManagement,
        'color': Colors.green,
      },
      {
        'title': 'Settings',
        'icon': Icons.settings,
        'route': AppRoutes.settings,
        'color': Colors.orange,
      },
    ];

    return Container(
      padding: EdgeInsets.all(16.w),
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Quick Navigation',
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w700,
              color: AppColors.onBackground,
            ),
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(height: 16.h),
          ...quickNavItems.map((item) => _buildQuickNavItem(
            context,
            title: item['title'] as String,
            icon: item['icon'] as IconData,
            route: item['route'] as String,
            color: item['color'] as Color,
          )).toList(),
        ],
      ),
    );
  }

  Widget _buildQuickNavItem(
    BuildContext context, {
    required String title,
    required IconData icon,
    required String route,
    required Color color,
  }) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () => context.go(route),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          margin: EdgeInsets.only(bottom: 8.h),
          padding: EdgeInsets.all(12.w),
          decoration: BoxDecoration(
            color: AppColors.background,
            borderRadius: BorderRadius.circular(10.r),
            border: Border.all(
              color: AppColors.outline.withValues(alpha: 0.1),
            ),
          ),
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.all(6.w),
                decoration: BoxDecoration(
                  color: color.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(6.r),
                ),
                child: Icon(
                  icon,
                  color: color,
                  size: 16.w,
                ),
              ),
              SizedBox(width: 8.w),
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.onBackground,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Icon(
                Icons.arrow_forward_ios,
                size: 12.w,
                color: AppColors.onBackground.withValues(alpha: 0.5),
              ),
            ],
          ),
        ),
      ),
    );
  }

}