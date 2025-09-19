import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/constants.dart';
import '../../domain/entities/user_entity.dart';
import '../bloc/user_bloc.dart';
import '../bloc/user_event.dart';
import '../bloc/user_state.dart';

class UserActionsDialog extends StatefulWidget {
  final UserEntity user;

  const UserActionsDialog({
    super.key,
    required this.user,
  });

  @override
  State<UserActionsDialog> createState() => _UserActionsDialogState();
}

class _UserActionsDialogState extends State<UserActionsDialog> {
  final _reasonController = TextEditingController();
  String _selectedBanType = 'temporary';

  final List<String> _banTypes = [
    'temporary',
    'permanent',
  ];

  @override
  void dispose() {
    _reasonController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<UserBloc, UserState>(
      listener: (context, state) {
        if (state is UserStatusUpdated || 
            state is UserBanned || 
            state is UserUnbanned || 
            state is UserActivated || 
            state is UserDeactivated) {
          Navigator.of(context).pop();
        } else if (state is UserError) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.message),
              backgroundColor: Colors.red,
            ),
          );
        }
      },
      child: Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.9,
          constraints: BoxConstraints(maxWidth: 500.w),
          padding: EdgeInsets.all(24.w),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeader(),
              SizedBox(height: 24.h),
              _buildUserInfo(),
              SizedBox(height: 24.h),
              _buildActions(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      children: [
        Icon(
          Icons.settings,
          size: 24.sp,
          color: AppColors.primary,
        ),
        SizedBox(width: 12.w),
        Text(
          'User Actions',
          style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
            color: AppColors.onSurface,
          ),
        ),
        const Spacer(),
        IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(Icons.close),
        ),
      ],
    );
  }

  Widget _buildUserInfo() {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(
          color: AppColors.outline.withValues(alpha: 0.2),
        ),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 24.r,
            backgroundColor: AppColors.primary.withValues(alpha: 0.1),
            child: Text(
              widget.user.firstname.isNotEmpty ? widget.user.firstname[0].toUpperCase() : 'U',
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.primary,
              ),
            ),
          ),
          SizedBox(width: 16.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${widget.user.firstname} ${widget.user.lastname ?? ''}'.trim(),
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.onSurface,
                  ),
                ),
                Text(
                  widget.user.email,
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: AppColors.onSurface.withValues(alpha: 0.6),
                  ),
                ),
                SizedBox(height: 4.h),
                _buildStatusChip(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatusChip() {
    Color statusColor;
    IconData statusIcon;
    
    switch (widget.user.status.toLowerCase()) {
      case 'active':
        statusColor = Colors.green;
        statusIcon = Icons.check_circle;
        break;
      case 'inactive':
        statusColor = Colors.grey;
        statusIcon = Icons.pause_circle;
        break;
      case 'suspended':
        statusColor = Colors.orange;
        statusIcon = Icons.block;
        break;
      case 'banned':
        statusColor = Colors.red;
        statusIcon = Icons.cancel;
        break;
      default:
        statusColor = Colors.grey;
        statusIcon = Icons.help;
    }

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: statusColor.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(
          color: statusColor.withValues(alpha: 0.3),
          width: 1,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            statusIcon,
            size: 12.sp,
            color: statusColor,
          ),
          SizedBox(width: 4.w),
          Text(
            widget.user.status.toUpperCase(),
            style: TextStyle(
              fontSize: 10.sp,
              fontWeight: FontWeight.bold,
              color: statusColor,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildActions() {
    return Column(
      children: [
        // Status Actions
        if (widget.user.status != 'active') ...[
          _buildActionButton(
            'Activate User',
            Icons.check_circle,
            Colors.green,
            () => _activateUser(),
          ),
          SizedBox(height: 8.h),
        ],
        if (widget.user.status != 'inactive') ...[
          _buildActionButton(
            'Deactivate User',
            Icons.pause_circle,
            Colors.orange,
            () => _showDeactivateDialog(),
          ),
          SizedBox(height: 8.h),
        ],
        if (widget.user.status != 'suspended') ...[
          _buildActionButton(
            'Suspend User',
            Icons.block,
            Colors.orange,
            () => _suspendUser(),
          ),
          SizedBox(height: 8.h),
        ],
        if (widget.user.status != 'banned') ...[
          _buildActionButton(
            'Ban User',
            Icons.cancel,
            Colors.red,
            () => _showBanDialog(),
          ),
          SizedBox(height: 8.h),
        ],
        if (widget.user.status == 'banned') ...[
          _buildActionButton(
            'Unban User',
            Icons.check_circle_outline,
            Colors.green,
            () => _unbanUser(),
          ),
          SizedBox(height: 8.h),
        ],
      ],
    );
  }

  Widget _buildActionButton(String title, IconData icon, Color color, VoidCallback onPressed) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton.icon(
        onPressed: onPressed,
        icon: Icon(icon, size: 18.sp),
        label: Text(title),
        style: ElevatedButton.styleFrom(
          backgroundColor: color.withValues(alpha: 0.1),
          foregroundColor: color,
          side: BorderSide(color: color.withValues(alpha: 0.3)),
          padding: EdgeInsets.symmetric(vertical: 12.h),
        ),
      ),
    );
  }

  void _activateUser() {
    context.read<UserBloc>().add(ActivateUser(widget.user.id));
  }

  void _suspendUser() {
    context.read<UserBloc>().add(
          UpdateUserStatus(
            userId: widget.user.id,
            status: 'suspended',
          ),
        );
  }

  void _unbanUser() {
    context.read<UserBloc>().add(UnbanUser(widget.user.id));
  }

  void _showDeactivateDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Deactivate User'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Please provide a reason for deactivation:'),
            SizedBox(height: 16.h),
            TextField(
              controller: _reasonController,
              decoration: const InputDecoration(
                hintText: 'Enter reason...',
                border: OutlineInputBorder(),
              ),
              maxLines: 3,
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              if (_reasonController.text.isNotEmpty) {
                Navigator.of(context).pop();
                context.read<UserBloc>().add(
                      DeactivateUser(
                        userId: widget.user.id,
                        reason: _reasonController.text,
                      ),
                    );
              }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
              foregroundColor: Colors.white,
            ),
            child: const Text('Deactivate'),
          ),
        ],
      ),
    );
  }

  void _showBanDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Ban User'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Please provide details for banning:'),
            SizedBox(height: 16.h),
            DropdownButtonFormField<String>(
              value: _selectedBanType,
              decoration: const InputDecoration(
                labelText: 'Ban Type',
                border: OutlineInputBorder(),
              ),
              items: _banTypes.map((String type) {
                return DropdownMenuItem<String>(
                  value: type,
                  child: Text(type.toUpperCase()),
                );
              }).toList(),
              onChanged: (String? newValue) {
                if (newValue != null) {
                  setState(() {
                    _selectedBanType = newValue;
                  });
                }
              },
            ),
            SizedBox(height: 16.h),
            TextField(
              controller: _reasonController,
              decoration: const InputDecoration(
                labelText: 'Reason',
                hintText: 'Enter reason for ban...',
                border: OutlineInputBorder(),
              ),
              maxLines: 3,
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              if (_reasonController.text.isNotEmpty) {
                Navigator.of(context).pop();
                context.read<UserBloc>().add(
                      BanUser(
                        userId: widget.user.id,
                        reason: _reasonController.text,
                        banType: _selectedBanType,
                      ),
                    );
              }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
            ),
            child: const Text('Ban User'),
          ),
        ],
      ),
    );
  }
}
