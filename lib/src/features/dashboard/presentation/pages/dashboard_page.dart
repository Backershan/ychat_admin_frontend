import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_colors.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightBackground,
      body: Padding(
        padding: EdgeInsets.all(24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Dashboard',
              style: TextStyle(
                fontSize: 32.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.lightOnBackground,
              ),
            ),
            SizedBox(height: 24.h),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16.w,
                mainAxisSpacing: 16.h,
                children: [
                  _buildStatCard(
                    title: 'Total Users',
                    value: '1,234',
                    icon: Icons.people,
                    color: AppColors.lightPrimary,
                  ),
                  _buildStatCard(
                    title: 'Active Tickets',
                    value: '56',
                    icon: Icons.support_agent,
                    color: AppColors.lightSecondary,
                  ),
                  _buildStatCard(
                    title: 'Total Apps',
                    value: '12',
                    icon: Icons.apps,
                    color: AppColors.lightTertiary,
                  ),
                  _buildStatCard(
                    title: 'Revenue',
                    value: '\$12,345',
                    icon: Icons.attach_money,
                    color: AppColors.lightError,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatCard({
    required String title,
    required String value,
    required IconData icon,
    required Color color,
  }) {
    return Container(
      padding: EdgeInsets.all(24.w),
      decoration: BoxDecoration(
        color: AppColors.lightSurface,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
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
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Icon(
                  icon,
                  color: color,
                  size: 24.w,
                ),
              ),
               Spacer(),
              Icon(
                Icons.trending_up,
                color: Colors.green,
                size: 20.w,
               ),
            ],
          ),
          SizedBox(height: 16.h),
          Text(
            value,
            style: TextStyle(
              fontSize: 28.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.lightOnBackground,
            ),
          ),
          SizedBox(height: 4.h),
          Text(
            title,
            style: TextStyle(
              fontSize: 14.sp,
              color: AppColors.lightOnBackground.withValues(alpha: 0.7),
            ),
          ),
        ],
      ),
    );
  }
}
