
// Placeholder App Management Page
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:y_chat_admin/src/core/constants/constants.dart';

class AppManagementPage extends StatelessWidget {
  const AppManagementPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.all(24.w),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.apps,
              size: 64.w,
              color: AppColors.primary,
            ),
            SizedBox(height: 16.h),
            Text(
              'App',
              style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.onBackground,
              ),
            ),
            SizedBox(height: 8.h),
            Text(
              'App management page coming soon...',
              style: TextStyle(
                fontSize: 16.sp,
                color: AppColors.onBackground.withValues(alpha: 0.7),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
