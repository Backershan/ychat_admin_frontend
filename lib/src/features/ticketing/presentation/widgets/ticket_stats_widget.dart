import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:y_chat_admin/src/core/constants/constants.dart';
import 'package:y_chat_admin/src/core/utils/responsive.dart';
import 'package:y_chat_admin/src/features/ticketing/data/models/ticket_api_models.dart';

class TicketStatsWidget extends StatelessWidget {
  final TicketStatsData stats;
  final bool isLoading;

  const TicketStatsWidget({
    super.key,
    required this.stats,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return _buildLoadingState();
    }

    return _buildStatsGrid(context);
  }

  Widget _buildLoadingState() {
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 16.w,
      mainAxisSpacing: 16.h,
      childAspectRatio: 2.5,
      children: List.generate(6, (index) => _buildShimmerCard()),
    );
  }

  Widget _buildShimmerCard() {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: AppColors.border.withValues(alpha: 0.2)),
      ),
      child: Center(
        child: CircularProgressIndicator(
          color: AppColors.primary,
          strokeWidth: 2.w,
        ),
      ),
    );
  }

  Widget _buildStatsGrid(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 16.w,
      mainAxisSpacing: 16.h,
      childAspectRatio: 2.5,
      children: [
        _buildStatCard(
          context,
          title: 'Total Tickets',
          value: stats.total.toString(),
          icon: Icons.assignment,
          color: AppColors.primary,
        ),
        _buildStatCard(
          context,
          title: 'Opened',
          value: stats.opened.toString(),
          icon: Icons.open_in_new,
          color: AppColors.info,
        ),
        _buildStatCard(
          context,
          title: 'Pending',
          value: stats.pending.toString(),
          icon: Icons.schedule,
          color: AppColors.warning,
        ),
        _buildStatCard(
          context,
          title: 'Closed',
          value: stats.closed.toString(),
          icon: Icons.check_circle,
          color: AppColors.success,
        ),
        _buildStatCard(
          context,
          title: 'High Priority',
          value: stats.highPriority.toString(),
          icon: Icons.priority_high,
          color: AppColors.error,
        ),
        _buildStatCard(
          context,
          title: 'Urgent',
          value: stats.urgent.toString(),
          icon: Icons.warning,
          color: AppColors.error,
        ),
      ],
    );
  }

  Widget _buildStatCard(BuildContext context, {
    required String title,
    required String value,
    required IconData icon,
    required Color color,
  }) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: AppColors.border.withValues(alpha: 0.2)),
        boxShadow: [
          BoxShadow(
            color: AppColors.shadow.withValues(alpha: 0.08),
            blurRadius: 8.r,
            offset: Offset(0, 2.h),
          ),
        ],
      ),
      child: Row(
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
              size: 24.r,
            ),
          ),
          SizedBox(width: 12.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  value,
                  style: TextStyle(
                    fontSize: WebResponsive.getWebFontSize(24, context),
                    fontWeight: FontWeight.bold,
                    color: AppColors.textPrimary,
                  ),
                ),
                SizedBox(height: 4.h),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: WebResponsive.getWebFontSize(14, context),
                    color: AppColors.textSecondary,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}