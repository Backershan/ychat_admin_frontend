import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/routes/app_routes.dart';
import '../../../../core/di/injection.dart';
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
            childAspectRatio: 1.2,
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
          
          SizedBox(height: 24.h),
          
          // Screen Share Metrics - 1 card per row
          Text(
            'Screen Share Metrics',
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.onBackground,
            ),
          ),
          SizedBox(height: 16.h),
          Column(
            children: [
              _buildScreenShareCard(
                title: 'Total Screen Shares',
                value: dashboardData.screenShares.total.toString(),
                change: '+0%',
                icon: Icons.screen_share,
                color: Colors.purple,
              ),
              SizedBox(height: 12.h),
              _buildScreenShareCard(
                title: 'Daily Screen Shares',
                value: dashboardData.screenShares.daily.toString(),
                change: '+0%',
                icon: Icons.today,
                color: Colors.indigo,
              ),
              SizedBox(height: 12.h),
              _buildScreenShareCard(
                title: 'Monthly Screen Shares',
                value: dashboardData.screenShares.monthly.toString(),
                change: '+0%',
                icon: Icons.calendar_view_month,
                color: Colors.teal,
              ),
              SizedBox(height: 12.h),
              _buildScreenShareCard(
                title: 'Average Duration',
                value: '${dashboardData.screenShares.averageDuration} min',
                change: '+0%',
                icon: Icons.timer,
                color: Colors.orange,
              ),
            ],
          ),
          
          SizedBox(height: 24.h),
          
      
          
          // Geographical Distribution
          Text(
            'Geographical Distribution',
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.onBackground,
            ),
          ),
          SizedBox(height: 16.h),
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header with gradient
                Container(
                  padding: EdgeInsets.all(32.w),
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
          children: [
            Text(
                              'Dashboard Overview',
                              style: TextStyle(
                                fontSize: 36.sp,
                                fontWeight: FontWeight.bold,
                                color: AppColors.onBackground,
                              ),
                            ),
                            SizedBox(height: 8.h),
                            Text(
                              'Welcome back! Here\'s what\'s happening with your platform.',
                              style: TextStyle(
                                fontSize: 16.sp,
                                color: AppColors.onBackground.withValues(alpha: 0.7),
                              ),
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
                  crossAxisCount: 4,
                  crossAxisSpacing: 20.w,
                  mainAxisSpacing: 20.h,
                  childAspectRatio: 1.1,
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
                  crossAxisCount: 4,
                  crossAxisSpacing: 20.w,
                  mainAxisSpacing: 20.h,
                  childAspectRatio: 1.1,
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
        
        SizedBox(width: 32.w),
        
        // Quick Navigation Sidebar
        Expanded(
          flex: 1,
          child: _buildQuickNavigationSidebar(context),
        ),
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
      children: [
        // First row: Icon and Count
        Row(
          children: [
            // Icon
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
            SizedBox(width: 12.w),
            // Count
            Text(
              value,
              style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.onBackground,
              ),
            ),
            if (change != null) ...[
              SizedBox(width: 8.w),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 3.h),
                decoration: BoxDecoration(
                  color: Colors.green.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(6.r),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.trending_up,
                      color: Colors.green,
                      size: 10.w,
                    ),
                    SizedBox(width: 2.w),
                    Text(
                      change,
                      style: TextStyle(
                        fontSize: 8.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ],
        ),
        SizedBox(height: 8.h),
        // Second row: Title
        Text(
          title,
          style: TextStyle(
            fontSize: 12.sp,
            color: AppColors.onBackground.withValues(alpha: 0.7),
            fontWeight: FontWeight.w500,
          ),
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
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.all(16.w),
              decoration: BoxDecoration(
                color: color.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(16.r),
              ),
              child: Icon(
                icon,
                color: color,
                size: 28.w,
              ),
            ),
            if (change != null)
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
                decoration: BoxDecoration(
                  color: Colors.green.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.trending_up,
                      color: Colors.green,
                      size: 16.w,
                    ),
                    SizedBox(width: 4.w),
                    Text(
                      change,
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
        SizedBox(height: 20.h),
        Text(
          value,
              style: TextStyle(
                fontSize: 32.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.onBackground,
              ),
            ),
        SizedBox(height: 8.h),
        Text(
          title,
          style: TextStyle(
            fontSize: 16.sp,
            color: AppColors.onBackground.withValues(alpha: 0.7),
            fontWeight: FontWeight.w500,
          ),
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
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(16.w),
              decoration: BoxDecoration(
                color: color.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(16.r),
              ),
              child: Icon(
                icon,
                color: color,
                size: 28.w,
              ),
            ),
            SizedBox(width: 20.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    value,
                    style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.bold,
                      color: AppColors.onBackground,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: AppColors.onBackground.withValues(alpha: 0.7),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
              decoration: BoxDecoration(
                color: Colors.green.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.trending_up,
                    color: Colors.green,
                    size: 16.w,
                  ),
                  SizedBox(width: 6.w),
                  Text(
                    change,
                    style: TextStyle(
                      fontSize: 12.sp,
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
    return Container(
      padding: EdgeInsets.all(32.w),
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
                  color: Colors.blue.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Icon(
                  Icons.public,
                  color: Colors.blue,
                  size: 24.w,
                ),
              ),
              SizedBox(width: 16.w),
              Text(
                'Geographical ',
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.onBackground,
                ),
              ),
            ],
          ),
          SizedBox(height: 24.h),
          
          // Countries Section
          Text(
            'By Country',
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.onBackground,
            ),
          ),
          SizedBox(height: 16.h),
          ...geographicalDistribution.byCountry.map((country) => _buildCountryItem(country)).toList(),
          
          SizedBox(height: 24.h),
          
          // Cities Section
          Text(
            'By City',
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.onBackground,
            ),
          ),
          SizedBox(height: 16.h),
          ...geographicalDistribution.byCity.map((city) => _buildCityItem(city)).toList(),
        ],
      ),
    );
  }

  Widget _buildCountryItem(country) {
    return Container(
      margin: EdgeInsets.only(bottom: 12.h),
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(
          color: AppColors.outline.withValues(alpha: 0.1),
        ),
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(8.w),
            decoration: BoxDecoration(
              color: Colors.blue.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Icon(
              Icons.flag,
              color: Colors.blue,
              size: 20.w,
            ),
          ),
          SizedBox(width: 12.w),
          Expanded(
            child: Text(
              country.country,
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.onBackground,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
            decoration: BoxDecoration(
              color: Colors.blue.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Text(
              country.count.toString(),
              style: TextStyle(
                fontSize: 14.sp,
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
      margin: EdgeInsets.only(bottom: 12.h),
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(
          color: AppColors.outline.withValues(alpha: 0.1),
        ),
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(8.w),
            decoration: BoxDecoration(
              color: Colors.green.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Icon(
              Icons.location_city,
                color: Colors.green,
                size: 20.w,
               ),
          ),
          SizedBox(width: 12.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
          Text(
                  city.city,
            style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
              color: AppColors.onBackground,
            ),
          ),
          SizedBox(height: 4.h),
          Text(
                  city.country,
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: AppColors.onBackground.withValues(alpha: 0.6),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
            decoration: BoxDecoration(
              color: Colors.green.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Text(
              city.count.toString(),
            style: TextStyle(
              fontSize: 14.sp,
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
            'Quick Navigation',
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.w700,
              color: AppColors.onBackground,
            ),
          ),
          SizedBox(height: 24.h),
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
          margin: EdgeInsets.only(bottom: 12.h),
          padding: EdgeInsets.all(16.w),
          decoration: BoxDecoration(
            color: AppColors.background,
            borderRadius: BorderRadius.circular(12.r),
            border: Border.all(
              color: AppColors.outline.withValues(alpha: 0.1),
            ),
          ),
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

}