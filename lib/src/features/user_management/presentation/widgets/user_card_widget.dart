import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:y_chat_admin/src/core/constants/constants.dart';
import 'package:y_chat_admin/src/core/utils/responsive.dart';
import 'package:y_chat_admin/src/features/user_management/domain/entities/user_entity.dart';
import 'package:y_chat_admin/src/features/user_management/presentation/widgets/user_action_buttons.dart';

class UserCardWidget extends StatefulWidget {
  final UserEntity user;
  final Function(String status) onStatusChanged;
  final VoidCallback onDeleteUser;
  final VoidCallback onEditUser;
  final VoidCallback onBanUser;
  final VoidCallback onUnbanUser;
  final VoidCallback onActivateUser;
  final VoidCallback onDeactivateUser;
  final VoidCallback onIpAddressToggle;
  final bool showIpAddress;

  const UserCardWidget({
    super.key,
    required this.user,
    required this.onStatusChanged,
    required this.onDeleteUser,
    required this.onEditUser,
    required this.onBanUser,
    required this.onUnbanUser,
    required this.onActivateUser,
    required this.onDeactivateUser,
    required this.onIpAddressToggle,
    required this.showIpAddress,
  });

  @override
  State<UserCardWidget> createState() => _UserCardWidgetState();
}

class _UserCardWidgetState extends State<UserCardWidget> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(color: AppColors.border.withValues(alpha: 0.2)),
        boxShadow: [
          BoxShadow(
            color: AppColors.shadow.withValues(alpha: 0.08),
            blurRadius: 12.r,
            offset: Offset(0, 4.h),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildUserHeader(),
          SizedBox(height: 12.h),
          _buildUserDetails(),
          SizedBox(height: 12.h),
          _buildStatusAndIp(),
          SizedBox(height: 16.h),
          UserActionButtons(
            user: widget.user,
            onStatusChanged: widget.onStatusChanged,
            onDeleteUser: widget.onDeleteUser,
            onEditUser: widget.onEditUser,
            onBanUser: widget.onBanUser,
            onUnbanUser: widget.onUnbanUser,
            onActivateUser: widget.onActivateUser,
            onDeactivateUser: widget.onDeactivateUser,
            isCompact: true,
          ),
        ],
      ),
    );
  }

  Widget _buildUserHeader() {
    return Row(
      children: [
        CircleAvatar(
          radius: 24.r,
          backgroundColor: AppColors.primary,
          child: Text(
            (widget.user.name?.isNotEmpty == true) ? widget.user.name![0].toUpperCase() : 'U',
            style: TextStyle(
              color: Colors.white,
              fontSize: WebResponsive.getWebFontSize(18, context),
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        SizedBox(width: 12.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.user.name ?? 'Unknown',
                style: TextStyle(
                  fontSize: WebResponsive.getWebFontSize(16, context),
                  fontWeight: FontWeight.w600,
                  color: AppColors.textPrimary,
                ),
                overflow: TextOverflow.ellipsis,
              ),
              if (widget.user.lastname != null)
                Text(
                  widget.user.lastname!,
                  style: TextStyle(
                    fontSize: WebResponsive.getWebFontSize(14, context),
                    color: AppColors.textSecondary,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
            ],
          ),
        ),
        _buildStatusChip(widget.user.status ?? 'unknown'),
      ],
    );
  }

  Widget _buildUserDetails() {
    return Column(
      children: [
        _buildDetailRow('Email', widget.user.email ?? 'No email'),
        if (widget.user.phone != null) _buildDetailRow('Phone', widget.user.phone!),
        if (widget.user.role != null) _buildDetailRow('Role', widget.user.role!),
        if (widget.user.uid != null) _buildDetailRow('UID', widget.user.uid!),
      ],
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 80.w,
            child: Text(
              '$label:',
              style: TextStyle(
                fontSize: WebResponsive.getWebFontSize(14, context),
                fontWeight: FontWeight.w500,
                color: AppColors.textSecondary,
              ),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: TextStyle(
                fontSize: WebResponsive.getWebFontSize(14, context),
                color: AppColors.textPrimary,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatusAndIp() {
    return Row(
      children: [
        Expanded(
          child: _buildIpAddressButton(),
        ),
        SizedBox(width: 12.w),
        if (widget.user.lastLoginAt != null)
          Expanded(
            child: _buildLastLogin(),
          ),
      ],
    );
  }

  Widget _buildIpAddressButton() {
    return GestureDetector(
      onTap: widget.onIpAddressToggle,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
        decoration: BoxDecoration(
          color: AppColors.primary.withValues(alpha: 0.1),
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(color: AppColors.primary.withValues(alpha: 0.3)),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.location_on,
              size: 16.r,
              color: AppColors.primary,
            ),
            SizedBox(width: 4.w),
            Text(
              widget.showIpAddress ? (widget.user.ipAddress ?? 'N/A') : 'Show IP',
              style: TextStyle(
                fontSize: WebResponsive.getWebFontSize(12, context),
                fontWeight: FontWeight.w500,
                color: AppColors.primary,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLastLogin() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
      decoration: BoxDecoration(
        color: AppColors.textSecondary.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.access_time,
            size: 16.r,
            color: AppColors.textSecondary,
          ),
          SizedBox(width: 4.w),
          Expanded(
            child: Text(
              'Last login',
              style: TextStyle(
                fontSize: WebResponsive.getWebFontSize(12, context),
                fontWeight: FontWeight.w500,
                color: AppColors.textSecondary,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatusChip(String status) {
    Color backgroundColor;
    Color textColor;
    
    switch (status.toLowerCase()) {
      case 'active':
        backgroundColor = AppColors.success.withValues(alpha: 0.1);
        textColor = AppColors.success;
        break;
      case 'inactive':
        backgroundColor = AppColors.warning.withValues(alpha: 0.1);
        textColor = AppColors.warning;
        break;
      case 'suspended':
        backgroundColor = AppColors.error.withValues(alpha: 0.1);
        textColor = AppColors.error;
        break;
      case 'banned':
        backgroundColor = AppColors.error.withValues(alpha: 0.2);
        textColor = AppColors.error;
        break;
      default:
        backgroundColor = AppColors.textSecondary.withValues(alpha: 0.1);
        textColor = AppColors.textSecondary;
    }

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Text(
        status.toUpperCase(),
        style: TextStyle(
          fontSize: WebResponsive.getWebFontSize(12, context),
          fontWeight: FontWeight.w600,
          color: textColor,
        ),
      ),
    );
  }
}
