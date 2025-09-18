import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:y_chat_admin/src/shared/widgets/loading_widget.dart';
import 'package:y_chat_admin/src/shared/widgets/error_widget.dart';

import '../../../../core/constants/constants.dart';

class UserManagementPage extends StatefulWidget {
  const UserManagementPage({super.key});

  @override
  State<UserManagementPage> createState() => _UserManagementPageState();
}

class _UserManagementPageState extends State<UserManagementPage> {
  final List<Map<String, dynamic>> _users = [
    {
      'id': '1',
      'username': 'john_doe',
      'email': 'john@example.com',
      'firstName': 'John',
      'lastName': 'Doe',
      'role': 'user',
      'isActive': true,
      'createdAt': '2024-01-15',
    },
    {
      'id': '2',
      'username': 'jane_smith',
      'email': 'jane@example.com',
      'firstName': 'Jane',
      'lastName': 'Smith',
      'role': 'admin',
      'isActive': true,
      'createdAt': '2024-01-10',
    },
    {
      'id': '3',
      'username': 'bob_wilson',
      'email': 'bob@example.com',
      'firstName': 'Bob',
      'lastName': 'Wilson',
      'role': 'user',
      'isActive': false,
      'createdAt': '2024-01-05',
    },
  ];

  bool _isLoading = false;
  String? _error;

  @override
  void initState() {
    super.initState();
    _loadUsers();
  }

  Future<void> _loadUsers() async {
    setState(() {
      _isLoading = true;
      _error = null;
    });

    // Simulate API call
    await Future.delayed(const Duration(seconds: 1));

    setState(() {
      _isLoading = false;
    });
  }

  void _toggleUserStatus(String userId) {
    setState(() {
      final userIndex = _users.indexWhere((user) => user['id'] == userId);
      if (userIndex != -1) {
        _users[userIndex]['isActive'] = !_users[userIndex]['isActive'];
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Padding(
        padding: EdgeInsets.all(24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 24.h),
            Expanded(
              child: _buildContent(),
            ),
          ],
        ),
      ),
    );
  }



  Widget _buildContent() {
    if (_isLoading) {
      return const LoadingWidget(message: 'Loading users...');
    }

    if (_error != null) {
      return CustomErrorWidget(
        message: _error!,
        onRetry: _loadUsers,
      );
    }

    if (_users.isEmpty) {
      return EmptyStateWidget(
        title: 'No Users Found',
        message: 'There are no users to display. Add a new user to get started.',
        action: ElevatedButton.icon(
          onPressed: () {
            // TODO: Implement add user
          },
          icon: const Icon(Icons.add),
          label: const Text('Add User'),
        ),
      );
    }

    return _buildUsersList();
  }

  Widget _buildUsersList() {
    return ListView.builder(
      itemCount: _users.length,
      itemBuilder: (context, index) {
        final user = _users[index];
        return _buildUserCard(user);
      },
    );
  }

  Widget _buildUserCard(Map<String, dynamic> user) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
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
      child: Row(
        children: [
          CircleAvatar(
            radius: 24.w,
            backgroundColor: AppColors.primary.withValues(alpha: 0.1),
            child: Text(
              user['firstName'][0] + user['lastName'][0],
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.primaryLight,
              ),
            ),
          ),
          SizedBox(width: 16.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${user['firstName']} ${user['lastName']}',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.onBackground,
                  ),
                ),
                SizedBox(height: 4.h),
                Text(
                  user['email'],
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: AppColors.onBackground.withValues(alpha: 0.7),
                  ),
                ),
                SizedBox(height: 4.h),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                      decoration: BoxDecoration(
                        color: user['role'] == 'admin' 
                            ? AppColors.primaryLight.withValues(alpha: 0.1)
                            : AppColors.secondaryLight.withValues(alpha: 0.1),
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      child: Text(
                        user['role'].toUpperCase(),
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                          color: user['role'] == 'admin' 
                              ? AppColors.primaryLight
                              : AppColors.secondaryLight,
                        ),
                      ),
                    ),
                    SizedBox(width: 8.w),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                      decoration: BoxDecoration(
                        color: user['isActive'] 
                            ? Colors.green.withValues(alpha:(0.1))
                            : Colors.red.withValues(alpha: 0.1),
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      child: Text(
                        user['isActive'] ? 'ACTIVE' : 'INACTIVE',
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                          color: user['isActive'] ? Colors.green : Colors.red,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          PopupMenuButton<String>(
            onSelected: (value) {
              switch (value) {
                case 'toggle':
                  _toggleUserStatus(user['id']);
                  break;
                case 'edit':
                  // TODO: Implement edit user
                  break;
                case 'delete':
                  // TODO: Implement delete user
                  break;
              }
            },
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 'toggle',
                child: Row(
                  children: [
                    Icon(
                      user['isActive'] ? Icons.pause : Icons.play_arrow,
                      size: 16.w,
                    ),
                    SizedBox(width: 8.w),
                    Text(user['isActive'] ? 'Deactivate' : 'Activate'),
                  ],
                ),
              ),
              const PopupMenuItem(
                value: 'edit',
                child: Row(
                  children: [
                    Icon(Icons.edit, size: 16),
                    SizedBox(width: 8),
                    Text('Edit'),
                  ],
                ),
              ),
              const PopupMenuItem(
                value: 'delete',
                child: Row(
                  children: [
                    Icon(Icons.delete, size: 16, color: Colors.red),
                    SizedBox(width: 8),
                    Text('Delete', style: TextStyle(color: Colors.red)),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
