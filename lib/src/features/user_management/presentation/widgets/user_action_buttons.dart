import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:y_chat_admin/src/core/constants/constants.dart';
import 'package:y_chat_admin/src/core/utils/responsive.dart';
import 'package:y_chat_admin/src/features/user_management/domain/entities/user_entity.dart';

class UserActionButtons extends StatefulWidget {
  final UserEntity user;
  final Function(String status) onStatusChanged;
  final VoidCallback onDeleteUser;
  final VoidCallback onEditUser;
  final VoidCallback onBanUser;
  final VoidCallback onUnbanUser;
  final VoidCallback onActivateUser;
  final VoidCallback onDeactivateUser;
  final bool isCompact;

  const UserActionButtons({
    super.key,
    required this.user,
    required this.onStatusChanged,
    required this.onDeleteUser,
    required this.onEditUser,
    required this.onBanUser,
    required this.onUnbanUser,
    required this.onActivateUser,
    required this.onDeactivateUser,
    this.isCompact = false,
  });

  @override
  State<UserActionButtons> createState() => _UserActionButtonsState();
}

class _UserActionButtonsState extends State<UserActionButtons> {
  @override
  Widget build(BuildContext context) {
    if (widget.isCompact) {
      return _buildCompactButtons(context);
    } else {
      return _buildDesktopButtons(context);
    }
  }

  Widget _buildCompactButtons(BuildContext context) {
    return Wrap(
      spacing: 8.w,
      runSpacing: 8.h,
      children: [
        _buildStatusDropdown(),
        _buildActionButton(
          icon: Icons.edit,
          label: 'Edit',
          color: AppColors.primary,
          onTap: widget.onEditUser,
        ),
        if (_shouldShowBanButton())
          _buildActionButton(
            icon: Icons.block,
            label: 'Ban',
            color: AppColors.error,
            onTap: widget.onBanUser,
          ),
        if (_shouldShowUnbanButton())
          _buildActionButton(
            icon: Icons.check_circle,
            label: 'Unban',
            color: AppColors.success,
            onTap: widget.onUnbanUser,
          ),
        if (_shouldShowActivateButton())
          _buildActionButton(
            icon: Icons.play_arrow,
            label: 'Activate',
            color: AppColors.success,
            onTap: widget.onActivateUser,
          ),
        if (_shouldShowDeactivateButton())
          _buildActionButton(
            icon: Icons.pause,
            label: 'Deactivate',
            color: AppColors.warning,
            onTap: widget.onDeactivateUser,
          ),
        _buildActionButton(
          icon: Icons.delete,
          label: 'Delete',
          color: AppColors.error,
          onTap: widget.onDeleteUser,
        ),
      ],
    );
  }

  Widget _buildDesktopButtons(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildStatusDropdown(),
        SizedBox(width: 8.w),
        _buildActionButton(
          icon: Icons.edit,
          label: 'Edit',
          color: AppColors.primary,
          onTap: widget.onEditUser,
        ),
        SizedBox(width: 8.w),
        if (_shouldShowBanButton())
          _buildActionButton(
            icon: Icons.block,
            label: 'Ban',
            color: AppColors.error,
            onTap: widget.onBanUser,
          ),
        if (_shouldShowUnbanButton()) ...[
          SizedBox(width: 8.w),
          _buildActionButton(
            icon: Icons.check_circle,
            label: 'Unban',
            color: AppColors.success,
            onTap: widget.onUnbanUser,
          ),
        ],
        if (_shouldShowActivateButton()) ...[
          SizedBox(width: 8.w),
          _buildActionButton(
            icon: Icons.play_arrow,
            label: 'Activate',
            color: AppColors.success,
            onTap: widget.onActivateUser,
          ),
        ],
        if (_shouldShowDeactivateButton()) ...[
          SizedBox(width: 8.w),
          _buildActionButton(
            icon: Icons.pause,
            label: 'Deactivate',
            color: AppColors.warning,
            onTap: widget.onDeactivateUser,
          ),
        ],
        SizedBox(width: 8.w),
        _buildActionButton(
          icon: Icons.delete,
          label: 'Delete',
          color: AppColors.error,
          onTap: widget.onDeleteUser,
        ),
      ],
    );
  }

  Widget _buildStatusDropdown() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: AppColors.border),
      ),
      child: DropdownButton<String>(
        value: widget.user.status,
        isDense: true,
        underline: const SizedBox(),
        style: TextStyle(
          fontSize: WebResponsive.getWebFontSize(12, context),
          color: AppColors.textPrimary,
        ),
        items: const [
          DropdownMenuItem(value: 'active', child: Text('Active')),
          DropdownMenuItem(value: 'inactive', child: Text('Inactive')),
          DropdownMenuItem(value: 'suspended', child: Text('Suspended')),
          DropdownMenuItem(value: 'banned', child: Text('Banned')),
        ],
        onChanged: (value) {
          if (value != null && value != widget.user.status) {
            widget.onStatusChanged(value);
          }
        },
      ),
    );
  }

  Widget _buildActionButton({
    required IconData icon,
    required String label,
    required Color color,
    required VoidCallback onTap,
  }) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(8.r),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
          decoration: BoxDecoration(
            color: color.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(8.r),
            border: Border.all(color: color.withValues(alpha: 0.2)),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                icon,
                size: 16.r,
                color: color,
              ),
              SizedBox(width: 6.w),
              Text(
                label,
                style: TextStyle(
                  fontSize: WebResponsive.getWebFontSize(12, context),
                  fontWeight: FontWeight.w600,
                  color: color,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool _shouldShowBanButton() {
    return (widget.user.status?.toLowerCase() ?? '') != 'banned';
  }

  bool _shouldShowUnbanButton() {
    return (widget.user.status?.toLowerCase() ?? '') == 'banned';
  }

  bool _shouldShowActivateButton() {
    return (widget.user.status?.toLowerCase() ?? '') == 'inactive';
  }

  bool _shouldShowDeactivateButton() {
    return (widget.user.status?.toLowerCase() ?? '') == 'active';
  }
}
