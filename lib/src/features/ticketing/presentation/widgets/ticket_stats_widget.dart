import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:y_chat_admin/src/features/ticketing/domain/entities/ticket_entity.dart';
import '../../../../core/constants/constants.dart';

class TicketStatsWidget extends StatelessWidget {
  final TicketStatsEntity stats;

  const TicketStatsWidget({
    super.key,
    required this.stats,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.w),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(12.r),
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
          Text(
            'Ticket Statistics',
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.onBackground,
            ),
          ),
          SizedBox(height: 16.h),
          Wrap(
            spacing: 12.w,
            runSpacing: 12.h,
            children: [
              Expanded(
                child: _buildStatCard(
                  'Total',
                  stats.total.toString(),
                  Icons.support_agent,
                  AppColors.primary,
                ),
              ),
              Expanded(
                child: _buildStatCard(
                  'Opened',
                  stats.opened.toString(),
                  Icons.lock_open,
                  Colors.orange,
                ),
              ),
              Expanded(
                child: _buildStatCard(
                  'Pending',
                  stats.pending.toString(),
                  Icons.schedule,
                  Colors.blue,
                ),
              ),
              Expanded(
                child: _buildStatCard(
                  'Closed',
                  stats.closed.toString(),
                  Icons.check_circle,
                  Colors.green,
                ),
              ),
            ],
          ),
          SizedBox(height: 12.h),
          Wrap(
            spacing: 12.w,
            runSpacing: 12.h,
            children: [
              Expanded(
                child: _buildStatCard(
                  'High Priority',
                  stats.highPriority.toString(),
                  Icons.priority_high,
                  Colors.red,
                ),
              ),
              Expanded(
                child: _buildStatCard(
                  'Urgent',
                  stats.urgent.toString(),
                  Icons.warning,
                  Colors.deepOrange,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildStatCard(
    String label,
    String value,
    IconData icon,
    Color color,
  ) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(
          color: color.withValues(alpha: 0.2),
          width: 1,
        ),
      ),
      child: Column(
        children: [
          Icon(
            icon,
            size: 24.w,
            color: color,
          ),
          SizedBox(height: 8.h),
          Text(
            value,
            style: TextStyle(
              fontSize: 24.sp,
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
          SizedBox(height: 4.h),
          Text(
            label,
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w500,
              color: AppColors.onBackground.withValues(alpha: 0.7),
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
