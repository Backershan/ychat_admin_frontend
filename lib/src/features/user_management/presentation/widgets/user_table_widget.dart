import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:y_chat_admin/src/core/constants/constants.dart';
import 'package:y_chat_admin/src/core/utils/responsive.dart';
import 'package:y_chat_admin/src/features/user_management/domain/entities/user_entity.dart';
import 'package:y_chat_admin/src/features/user_management/presentation/widgets/user_card_widget.dart';
import 'package:y_chat_admin/src/features/user_management/presentation/widgets/user_action_buttons.dart';

class UserTableWidget extends StatefulWidget {
  final List<UserEntity> users;
  final Function(UserEntity user, String status) onStatusChanged;
  final Function(UserEntity user) onDeleteUser;
  final Function(UserEntity user) onEditUser;
  final Function(UserEntity user) onBanUser;
  final Function(UserEntity user) onUnbanUser;
  final Function(UserEntity user) onActivateUser;
  final Function(UserEntity user) onDeactivateUser;

  const UserTableWidget({
    super.key,
    required this.users,
    required this.onStatusChanged,
    required this.onDeleteUser,
    required this.onEditUser,
    required this.onBanUser,
    required this.onUnbanUser,
    required this.onActivateUser,
    required this.onDeactivateUser,
  });

  @override
  State<UserTableWidget> createState() => _UserTableWidgetState();
}

class _UserTableWidgetState extends State<UserTableWidget> {
  final Map<int, bool> _ipAddressVisibility = {};

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 900;
    
    if (isMobile) {
      return _buildMobileView();
    } else {
      return _buildDesktopView();
    }
  }

  Widget _buildMobileView() {
    return ListView.builder(
      padding: WebResponsive.getWebPadding(context),
      itemCount: widget.users.length,
      itemBuilder: (context, index) {
        final user = widget.users[index];
        return Padding(
          padding: EdgeInsets.only(bottom: 12.h),
          child: UserCardWidget(
            user: user,
            onStatusChanged: (status) => widget.onStatusChanged(user, status),
            onDeleteUser: () => widget.onDeleteUser(user),
            onEditUser: () => widget.onEditUser(user),
            onBanUser: () => widget.onBanUser(user),
            onUnbanUser: () => widget.onUnbanUser(user),
            onActivateUser: () => widget.onActivateUser(user),
            onDeactivateUser: () => widget.onDeactivateUser(user),
            onIpAddressToggle: () => _toggleIpAddress(user.id),
            showIpAddress: _ipAddressVisibility[user.id] ?? false,
          ),
        );
      },
    );
  }

  Widget _buildDesktopView() {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: AppColors.border),
      ),
      child: Column(
        children: [
          _buildTableHeader(),
          Expanded(
            child: ListView.builder(
              itemCount: widget.users.length,
              itemBuilder: (context, index) {
                final user = widget.users[index];
                return _buildTableRow(user, index);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTableHeader() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
      decoration: BoxDecoration(
        color: AppColors.primary.withValues(alpha: 0.05),
        borderRadius: BorderRadius.circular(12.r),
        border: Border(
          bottom: BorderSide(color: AppColors.border.withValues(alpha: 0.3)),
        ),
      ),
      child: Row(
        children: [
          Expanded(flex: 2, child: _buildHeaderText('Name')),
          Expanded(flex: 2, child: _buildHeaderText('Email')),
          Expanded(flex: 1, child: _buildHeaderText('Phone')),
          Expanded(flex: 1, child: _buildHeaderText('Status')),
          Expanded(flex: 1, child: _buildHeaderText('IP Address')),
          Expanded(flex: 2, child: _buildHeaderText('Actions')),
        ],
      ),
    );
  }

  Widget _buildHeaderText(String text) {
    return Text(
      text,
      style: TextStyle(
        fontSize: WebResponsive.getWebFontSize(14, context),
        fontWeight: FontWeight.w600,
        color: AppColors.textPrimary,
      ),
    );
  }

  Widget _buildTableRow(UserEntity user, int index) {
    final isEven = index % 2 == 0;
    
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
      decoration: BoxDecoration(
        color: isEven ? AppColors.cardBackground : AppColors.background,
        border: Border(
          bottom: BorderSide(color: AppColors.border.withValues(alpha: 0.2)),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: _buildUserInfo(user),
          ),
          Expanded(
            flex: 2,
            child: Text(
              user.email ?? 'No email',
              style: TextStyle(
                fontSize: WebResponsive.getWebFontSize(14, context),
                color: AppColors.textPrimary,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(
              user.phone ?? 'N/A',
              style: TextStyle(
                fontSize: WebResponsive.getWebFontSize(14, context),
                color: AppColors.textSecondary,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Expanded(
            flex: 1,
            child: _buildStatusChip(user.status ?? 'unknown'),
          ),
          Expanded(
            flex: 1,
            child: _buildIpAddressButton(user),
          ),
          Expanded(
            flex: 2,
            child: UserActionButtons(
              user: user,
              onStatusChanged: (status) => widget.onStatusChanged(user, status),
              onDeleteUser: () => widget.onDeleteUser(user),
              onEditUser: () => widget.onEditUser(user),
              onBanUser: () => widget.onBanUser(user),
              onUnbanUser: () => widget.onUnbanUser(user),
              onActivateUser: () => widget.onActivateUser(user),
              onDeactivateUser: () => widget.onDeactivateUser(user),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildUserInfo(UserEntity user) {
    return Row(
      children: [
        CircleAvatar(
          radius: 20.r,
          backgroundColor: AppColors.primary,
          child: Text(
                   (user.name?.isNotEmpty == true) ? user.name![0].toUpperCase() : 'U',
            style: TextStyle(
              color: Colors.white,
              fontSize: WebResponsive.getWebFontSize(16, context),
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
                     user.name ?? 'Unknown',
                style: TextStyle(
                  fontSize: WebResponsive.getWebFontSize(14, context),
                  fontWeight: FontWeight.w600,
                  color: AppColors.textPrimary,
                ),
                overflow: TextOverflow.ellipsis,
              ),
              if (user.lastname != null)
                Text(
                  user.lastname!,
                  style: TextStyle(
                    fontSize: WebResponsive.getWebFontSize(12, context),
                    color: AppColors.textSecondary,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
            ],
          ),
        ),
      ],
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

  Widget _buildIpAddressButton(UserEntity user) {
    final showIp = _ipAddressVisibility[user.id] ?? false;
    
    return GestureDetector(
      onTap: () => _toggleIpAddress(user.id),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
        decoration: BoxDecoration(
          color: AppColors.primary.withValues(alpha: 0.1),
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(color: AppColors.primary.withValues(alpha: 0.3)),
        ),
        child: Text(
          showIp ? (user.ipAddress ?? 'N/A') : 'IP',
          style: TextStyle(
            fontSize: WebResponsive.getWebFontSize(12, context),
            fontWeight: FontWeight.w500,
            color: AppColors.primary,
          ),
        ),
      ),
    );
  }

  void _toggleIpAddress(int userId) {
    setState(() {
      _ipAddressVisibility[userId] = !(_ipAddressVisibility[userId] ?? false);
    });
  }
}
