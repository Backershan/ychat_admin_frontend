import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/constants.dart';
import '../../domain/entities/app_entity.dart';

class AppCard extends StatelessWidget {
  final AppEntity app;
  final VoidCallback onEdit;
  final VoidCallback onDelete;

  const AppCard({
    super.key,
    required this.app,
    required this.onEdit,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Container(
        padding: EdgeInsets.all(16.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              AppColors.surface,
              AppColors.surface.withValues(alpha: 0.8),
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeader(),
            SizedBox(height: 12.h),
            _buildContent(),
            SizedBox(height: 16.h),
            _buildFooter(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(8.w),
          decoration: BoxDecoration(
            color: AppColors.primary.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(8.r),
          ),
          child: Icon(
            Icons.apps,
            color: AppColors.primary,
            size: 24.w,
          ),
        ),
        SizedBox(width: 12.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                app.name,
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.onBackground,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                app.appKey,
                style: TextStyle(
                  fontSize: 12.sp,
                  color: AppColors.onBackground.withValues(alpha: 0.6),
                ),
              ),
            ],
          ),
        ),
        _buildStatusChip(),
      ],
    );
  }

  Widget _buildStatusChip() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: app.isActive ? Colors.green.withValues(alpha: 0.1) : Colors.red.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(
          color: app.isActive ? Colors.green : Colors.red,
          width: 1,
        ),
      ),
      child: Text(
        app.isActive ? 'Active' : 'Inactive',
        style: TextStyle(
          fontSize: 10.sp,
          fontWeight: FontWeight.w600,
          color: app.isActive ? Colors.green : Colors.red,
        ),
      ),
    );
  }

  Widget _buildContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildInfoRow('Category', app.category),
        SizedBox(height: 8.h),
        _buildInfoRow('Version', app.version),
        SizedBox(height: 8.h),
        Text(
          app.description,
          style: TextStyle(
            fontSize: 14.sp,
            color: AppColors.onBackground.withValues(alpha: 0.7),
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Row(
      children: [
        Text(
          '$label: ',
          style: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.onBackground.withValues(alpha: 0.6),
          ),
        ),
        Expanded(
          child: Text(
            value,
            style: TextStyle(
              fontSize: 12.sp,
              color: AppColors.onBackground,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }

  Widget _buildFooter() {
    return Row(
      children: [
        Expanded(
          child: Text(
            'Created: ${_formatDate(app.createdAt)}',
            style: TextStyle(
              fontSize: 10.sp,
              color: AppColors.onBackground.withValues(alpha: 0.5),
            ),
          ),
        ),
        Row(
          children: [
            IconButton(
              onPressed: onEdit,
              icon: Icon(
                Icons.edit,
                size: 18.w,
                color: AppColors.primary,
              ),
              tooltip: 'Edit App',
            ),
            IconButton(
              onPressed: onDelete,
              icon: Icon(
                Icons.delete,
                size: 18.w,
                color: Colors.red,
              ),
              tooltip: 'Delete App',
            ),
          ],
        ),
      ],
    );
  }

  String _formatDate(DateTime date) {
    return '${date.day}/${date.month}/${date.year}';
  }
}
