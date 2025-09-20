import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/constants.dart';

/// A quick actions sidebar widget for settings
class QuickActionsSidebar extends StatelessWidget {
  const QuickActionsSidebar({
    super.key,
    required this.onResetToDefault,
    required this.onExportSettings,
    required this.onImportSettings,
  });

  final VoidCallback onResetToDefault;
  final VoidCallback onExportSettings;
  final VoidCallback onImportSettings;

  @override
  Widget build(BuildContext context) {
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
          
          _QuickActionItem(
            title: 'Reset to Default',
            icon: Icons.restore,
            color: Colors.orange,
            onTap: onResetToDefault,
          ),
          
          SizedBox(height: 12.h),
          
          _QuickActionItem(
            title: 'Export Settings',
            icon: Icons.download,
            color: Colors.blue,
            onTap: onExportSettings,
          ),
          
          SizedBox(height: 12.h),
          
          _QuickActionItem(
            title: 'Import Settings',
            icon: Icons.upload,
            color: Colors.green,
            onTap: onImportSettings,
          ),
        ],
      ),
    );
  }
}

class _QuickActionItem extends StatelessWidget {
  const _QuickActionItem({
    required this.title,
    required this.icon,
    required this.color,
    required this.onTap,
  });

  final String title;
  final IconData icon;
  final Color color;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12.r),
        child: Container(
          padding: EdgeInsets.all(16.w),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            border: Border.all(
              color: color.withValues(alpha: 0.2),
              width: 1,
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
                    fontWeight: FontWeight.w500,
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
