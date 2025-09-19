import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/utils/web_responsive.dart';
import '../../domain/entities/user_entity.dart';
import 'ip_address_dialog.dart';

class UserTableWidget extends StatefulWidget {
  final List<UserEntity> users;
  final Function(UserEntity user, UserStatus newStatus) onStatusChanged;
  final Function(UserEntity user) onDeleteUser;

  const UserTableWidget({
    super.key,
    required this.users,
    required this.onStatusChanged,
    required this.onDeleteUser,
  });

  @override
  State<UserTableWidget> createState() => _UserTableWidgetState();
}

class _UserTableWidgetState extends State<UserTableWidget> {
  final Map<String, bool> _ipAddressVisibility = {};

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 768;
    
    if (isMobile) {
      return _buildMobileView(context);
    }
    
    return _buildDesktopTable(context);
  }

  Widget _buildDesktopTable(BuildContext context) {
    return Container(
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
        children: [
          _buildTableHeader(context),
          Divider(height: 1.h, color: AppColors.onSurface.withValues(alpha: 0.1)),
          Expanded(
            child: widget.users.isEmpty
                ? _buildEmptyState()
                : ListView.builder(
                    itemCount: widget.users.length,
                    itemBuilder: (context, index) {
                      final user = widget.users[index];
                      return _buildTableRow(context, user);
                    },
                  ),
          ),
        ],
      ),
    );
  }

  Widget _buildTableHeader(BuildContext context) {
    return Container(
      padding: WebResponsive.getWebPadding(context, all: 16),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Text(
              'Name',
              style: TextStyle(
                fontSize: WebResponsive.getWebFontSize(14, context),
                fontWeight: FontWeight.w600,
                color: AppColors.onSurface,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(
              'Phone',
              style: TextStyle(
                fontSize: WebResponsive.getWebFontSize(14, context),
                fontWeight: FontWeight.w600,
                color: AppColors.onSurface,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(
              'UID',
              style: TextStyle(
                fontSize: WebResponsive.getWebFontSize(14, context),
                fontWeight: FontWeight.w600,
                color: AppColors.onSurface,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(
              'Status',
              style: TextStyle(
                fontSize: WebResponsive.getWebFontSize(14, context),
                fontWeight: FontWeight.w600,
                color: AppColors.onSurface,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(
              'IP Address',
              style: TextStyle(
                fontSize: WebResponsive.getWebFontSize(14, context),
                fontWeight: FontWeight.w600,
                color: AppColors.onSurface,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(
              'Actions',
              style: TextStyle(
                fontSize: WebResponsive.getWebFontSize(14, context),
                fontWeight: FontWeight.w600,
                color: AppColors.onSurface,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTableRow(BuildContext context, UserEntity user) {
    return Container(
      padding: WebResponsive.getWebPadding(context, all: 16),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: AppColors.onSurface.withValues(alpha: 0.05),
            width: 1,
          ),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: _buildUserInfo(user),
          ),
          Expanded(
            flex: 1,
            child: Text(
              user.phone,
              style: TextStyle(
                fontSize: WebResponsive.getWebFontSize(12, context),
                color: AppColors.onSurface.withValues(alpha: 0.8),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(
              user.uid,
              style: TextStyle(
                fontSize: WebResponsive.getWebFontSize(12, context),
                color: AppColors.onSurface.withValues(alpha: 0.8),
                fontFamily: 'monospace',
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: _buildStatusChip(user.status),
          ),
          Expanded(
            flex: 1,
            child: _buildIpAddressButton(context, user),
          ),
          Expanded(
            flex: 1,
            child: _buildActionButtons(context, user),
          ),
        ],
      ),
    );
  }

  Widget _buildUserInfo(UserEntity user) {
    return Row(
      children: [
        CircleAvatar(
          radius: 20.w,
          backgroundColor: AppColors.primary.withValues(alpha: 0.1),
          backgroundImage: user.avatar != null ? NetworkImage(user.avatar!) : null,
          child: user.avatar == null
              ? Text(
                  user.name.isNotEmpty ? user.name[0].toUpperCase() : 'U',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primary,
                  ),
                )
              : null,
        ),
        SizedBox(width: 12.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                user.name,
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.onSurface,
                ),
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                user.email,
                style: TextStyle(
                  fontSize: 12.sp,
                  color: AppColors.onSurface.withValues(alpha: 0.6),
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildStatusChip(UserStatus status) {
    Color backgroundColor;
    Color textColor;
    
    switch (status) {
      case UserStatus.active:
        backgroundColor = Colors.green.withValues(alpha: 0.1);
        textColor = Colors.green;
        break;
      case UserStatus.inactive:
        backgroundColor = Colors.orange.withValues(alpha: 0.1);
        textColor = Colors.orange;
        break;
      case UserStatus.suspended:
        backgroundColor = Colors.red.withValues(alpha: 0.1);
        textColor = Colors.red;
        break;
      case UserStatus.banned:
        backgroundColor = Colors.red.withValues(alpha: 0.2);
        textColor = Colors.red.shade700;
        break;
    }

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Text(
        status.displayName,
        style: TextStyle(
          fontSize: 11.sp,
          fontWeight: FontWeight.w600,
          color: textColor,
        ),
      ),
    );
  }

  Widget _buildIpAddressButton(BuildContext context, UserEntity user) {
    final isVisible = _ipAddressVisibility[user.id] ?? false;
    final displayText = isVisible ? user.ipAddress : 'IP';
    
    return InkWell(
      onTap: () => _toggleIpAddress(user.id),
      borderRadius: BorderRadius.circular(8.r),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
        decoration: BoxDecoration(
          color: AppColors.primary.withValues(alpha: 0.1),
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(
            color: AppColors.primary.withValues(alpha: 0.3),
            width: 1,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.location_on,
              size: 14.w,
              color: AppColors.primary,
            ),
            SizedBox(width: 4.w),
            Text(
              displayText,
              style: TextStyle(
                fontSize: 11.sp,
                fontWeight: FontWeight.w500,
                color: AppColors.primary,
                fontFamily: isVisible ? 'monospace' : null,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildActionButtons(BuildContext context, UserEntity user) {
    return Row(
      children: [
        // Status toggle button
        InkWell(
          onTap: () {
            final newStatus = user.status == UserStatus.active 
                ? UserStatus.inactive 
                : UserStatus.active;
            widget.onStatusChanged(user, newStatus);
          },
          borderRadius: BorderRadius.circular(6.r),
          child: Container(
            padding: EdgeInsets.all(6.w),
            decoration: BoxDecoration(
              color: user.status == UserStatus.active 
                  ? Colors.red.withValues(alpha: 0.1)
                  : Colors.green.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(6.r),
            ),
            child: Icon(
              user.status == UserStatus.active ? Icons.pause : Icons.play_arrow,
              size: 16.w,
              color: user.status == UserStatus.active ? Colors.red : Colors.green,
            ),
          ),
        ),
        SizedBox(width: 8.w),
        // Delete button
        InkWell(
          onTap: () => _showDeleteConfirmation(context, user),
          borderRadius: BorderRadius.circular(6.r),
          child: Container(
            padding: EdgeInsets.all(6.w),
            decoration: BoxDecoration(
              color: Colors.red.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(6.r),
            ),
            child: Icon(
              Icons.delete,
              size: 16.w,
              color: Colors.red,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildMobileView(BuildContext context) {
    return ListView.builder(
      itemCount: widget.users.length,
      itemBuilder: (context, index) {
        final user = widget.users[index];
        return _buildMobileCard(context, user);
      },
    );
  }

  Widget _buildMobileCard(BuildContext context, UserEntity user) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      padding: EdgeInsets.all(16.w),
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
          Row(
            children: [
              CircleAvatar(
                radius: 24.w,
                backgroundColor: AppColors.primary.withValues(alpha: 0.1),
                backgroundImage: user.avatar != null ? NetworkImage(user.avatar!) : null,
                child: user.avatar == null
                    ? Text(
                        user.name.isNotEmpty ? user.name[0].toUpperCase() : 'U',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                          color: AppColors.primary,
                        ),
                      )
                    : null,
              ),
              SizedBox(width: 12.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      user.name,
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColors.onSurface,
                      ),
                    ),
                    Text(
                      user.email,
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: AppColors.onSurface.withValues(alpha: 0.6),
                      ),
                    ),
                  ],
                ),
              ),
              _buildStatusChip(user.status),
            ],
          ),
          SizedBox(height: 12.h),
          _buildMobileInfoRow('Phone', user.phone),
          _buildMobileInfoRow('UID', user.uid),
          _buildMobileInfoRow('IP Address', user.ipAddress, isClickable: true, onTap: () => _toggleIpAddress(user.id)),
          SizedBox(height: 12.h),
          Row(
            children: [
              Expanded(
                child: ElevatedButton.icon(
                  onPressed: () {
                    final newStatus = user.status == UserStatus.active 
                        ? UserStatus.inactive 
                        : UserStatus.active;
                    widget.onStatusChanged(user, newStatus);
                  },
                  icon: Icon(
                    user.status == UserStatus.active ? Icons.pause : Icons.play_arrow,
                    size: 16.w,
                  ),
                  label: Text(
                    user.status == UserStatus.active ? 'Deactivate' : 'Activate',
                    style: TextStyle(fontSize: 12.sp),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: user.status == UserStatus.active 
                        ? Colors.red.withValues(alpha: 0.1)
                        : Colors.green.withValues(alpha: 0.1),
                    foregroundColor: user.status == UserStatus.active ? Colors.red : Colors.green,
                    elevation: 0,
                    padding: EdgeInsets.symmetric(vertical: 8.h),
                  ),
                ),
              ),
              SizedBox(width: 8.w),
              Expanded(
                child: ElevatedButton.icon(
                  onPressed: () => _showDeleteConfirmation(context, user),
                  icon: Icon(Icons.delete, size: 16.w),
                  label: Text('Delete', style: TextStyle(fontSize: 12.sp)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red.withValues(alpha: 0.1),
                    foregroundColor: Colors.red,
                    elevation: 0,
                    padding: EdgeInsets.symmetric(vertical: 8.h),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildMobileInfoRow(String label, String value, {bool isClickable = false, VoidCallback? onTap}) {
    // For IP Address, show "IP" or actual IP based on toggle state
    String displayValue = value;
    if (label == 'IP Address' && isClickable) {
      final userId = _getUserIdFromValue(value);
      if (userId != null) {
        displayValue = _ipAddressVisibility[userId] == true ? value : 'IP';
      }
    }

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.h),
      child: Row(
        children: [
          SizedBox(
            width: 80.w,
            child: Text(
              '$label:',
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
                color: AppColors.onSurface.withValues(alpha: 0.6),
              ),
            ),
          ),
          Expanded(
            child: isClickable
                ? InkWell(
                    onTap: onTap,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                      decoration: BoxDecoration(
                        color: AppColors.primary.withValues(alpha: 0.1),
                        borderRadius: BorderRadius.circular(6.r),
                        border: Border.all(
                          color: AppColors.primary.withValues(alpha: 0.3),
                          width: 1,
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.location_on,
                            size: 12.w,
                            color: AppColors.primary,
                          ),
                          SizedBox(width: 4.w),
                          Text(
                            displayValue,
                            style: TextStyle(
                              fontSize: 12.sp,
                              color: AppColors.primary,
                              fontFamily: label == 'UID' ? 'monospace' : null,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                : Text(
                    displayValue,
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: AppColors.onSurface,
                      fontFamily: label == 'UID' ? 'monospace' : null,
                    ),
                  ),
          ),
        ],
      ),
    );
  }

  void _toggleIpAddress(String userId) {
    setState(() {
      _ipAddressVisibility[userId] = !(_ipAddressVisibility[userId] ?? false);
    });
  }

  String? _getUserIdFromValue(String value) {
    // Find the user ID that corresponds to this IP address
    for (final user in widget.users) {
      if (user.ipAddress == value) {
        return user.id;
      }
    }
    return null;
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.people_outline,
            size: 64.w,
            color: AppColors.onSurface.withValues(alpha: 0.3),
          ),
          SizedBox(height: 16.h),
          Text(
            'No Users Found',
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.onSurface,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            'There are no users to display',
            style: TextStyle(
              fontSize: 14.sp,
              color: AppColors.onSurface.withValues(alpha: 0.6),
            ),
          ),
        ],
      ),
    );
  }

  // void _showIpAddressDialog(BuildContext context, UserEntity user) {
  //   showDialog(
  //     context: context,
  //     builder: (context) => IpAddressDialog(user: user),
  //   );
  // }

  void _showDeleteConfirmation(BuildContext context, UserEntity user) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
        title: Row(
          children: [
            Icon(
              Icons.warning_amber_rounded,
              color: Colors.red,
              size: 24.w,
            ),
            SizedBox(width: 12.w),
            const Text('Delete User'),
          ],
        ),
        content: Text(
          'Are you sure you want to delete ${user.name}? This action cannot be undone.',
          style: TextStyle(fontSize: 16.sp),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
              widget.onDeleteUser(user);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
            ),
            child: const Text('Delete'),
          ),
        ],
      ),
    );
  }
}
