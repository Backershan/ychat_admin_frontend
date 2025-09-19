import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:y_chat_admin/src/shared/widgets/loading_widget.dart';
import 'package:y_chat_admin/src/shared/widgets/error_widget.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/utils/web_responsive.dart';
import '../../domain/entities/user_entity.dart';
import '../bloc/user_bloc.dart';
import '../bloc/user_event.dart';
import '../bloc/user_state.dart';
import '../widgets/user_table_widget.dart';

class UserManagementPage extends StatefulWidget {
  const UserManagementPage({super.key});

  @override
  State<UserManagementPage> createState() => _UserManagementPageState();
}

class _UserManagementPageState extends State<UserManagementPage> {
  final TextEditingController _searchController = TextEditingController();
  UserStatus? _selectedStatus;

  @override
  void initState() {
    super.initState();
    context.read<UserBloc>().add(const GetUsers());
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 768;
    
    return Scaffold(
      backgroundColor: AppColors.background,
      body: BlocListener<UserBloc, UserState>(
        listener: (context, state) {
          if (state is UserError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Error: ${state.failure.message}'),
                backgroundColor: Colors.red,
                duration: const Duration(seconds: 3),
              ),
            );
          } else if (state is UserStatusUpdated) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('User status updated successfully'),
                backgroundColor: Colors.green,
                duration: const Duration(seconds: 2),
              ),
            );
          } else if (state is UserDeleted) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('User deleted successfully'),
                backgroundColor: Colors.orange,
                duration: const Duration(seconds: 2),
              ),
            );
          }
        },
        child: Padding(
          padding: WebResponsive.getWebPadding(context, all: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeader(isMobile),
              SizedBox(height: WebResponsive.getWebHeight(24, context)),
              _buildFilters(isMobile),
              SizedBox(height: WebResponsive.getWebHeight(16, context)),
              Expanded(
                child: _buildContent(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(bool isMobile) {
    return Row(
      children: [
        Icon(
          Icons.people,
          size: isMobile ? 24.w : 28.w,
          color: AppColors.primary,
        ),
        SizedBox(width: 12.w),
        Text(
          'User Management',
          style: TextStyle(
            fontSize: isMobile ? 24.sp : 28.sp,
            fontWeight: FontWeight.bold,
            color: AppColors.onBackground,
          ),
        ),
        const Spacer(),
        if (!isMobile) ...[
          IconButton(
            onPressed: () => context.read<UserBloc>().add(const RefreshUsers()),
            icon: Icon(
              Icons.refresh,
              color: AppColors.primary,
              size: 24.w,
            ),
            tooltip: 'Refresh Users',
          ),
        ],
      ],
    );
  }

  Widget _buildFilters(bool isMobile) {
    return Container(
      padding: WebResponsive.getWebPadding(context, all: 16),
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
      child: isMobile ? _buildMobileFilters() : _buildDesktopFilters(),
    );
  }

  Widget _buildMobileFilters() {
    return Column(
      children: [
        // Search Field
        TextField(
          controller: _searchController,
          decoration: InputDecoration(
            hintText: 'Search users...',
            prefixIcon: Icon(Icons.search, size: 20.w),
            suffixIcon: _searchController.text.isNotEmpty
                ? IconButton(
                    onPressed: () {
                      _searchController.clear();
                      context.read<UserBloc>().add(const GetUsers());
                    },
                    icon: Icon(Icons.clear, size: 20.w),
                  )
                : null,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: BorderSide(color: AppColors.onSurface.withValues(alpha: 0.2)),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: BorderSide(color: AppColors.onSurface.withValues(alpha: 0.2)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: BorderSide(color: AppColors.primary, width: 2),
            ),
          ),
          onChanged: (value) {
            if (value.isEmpty) {
              context.read<UserBloc>().add(const GetUsers());
            } else {
              context.read<UserBloc>().add(SearchUsers(query: value));
            }
          },
        ),
        SizedBox(height: 12.h),
        // Status Filter
        Row(
          children: [
            Text(
              'Status:',
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                color: AppColors.onSurface,
              ),
            ),
            SizedBox(width: 8.w),
            Expanded(
              child: DropdownButtonFormField<UserStatus?>(
                value: _selectedStatus,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                    borderSide: BorderSide(color: AppColors.onSurface.withValues(alpha: 0.2)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                    borderSide: BorderSide(color: AppColors.onSurface.withValues(alpha: 0.2)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                    borderSide: BorderSide(color: AppColors.primary, width: 2),
                  ),
                ),
                items: [
                  const DropdownMenuItem(
                    value: null,
                    child: Text('All Status'),
                  ),
                  ...UserStatus.values.map(
                    (status) => DropdownMenuItem(
                      value: status,
                      child: Text(status.displayName),
                    ),
                  ),
                ],
                onChanged: (value) {
                  setState(() {
                    _selectedStatus = value;
                  });
                  context.read<UserBloc>().add(FilterUsersByStatus(status: value));
                },
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildDesktopFilters() {
    return Row(
      children: [
        // Search Field
        Expanded(
          flex: 2,
          child: TextField(
            controller: _searchController,
            decoration: InputDecoration(
              hintText: 'Search users by name, email, or UID...',
              prefixIcon: Icon(Icons.search, size: 20.w),
              suffixIcon: _searchController.text.isNotEmpty
                  ? IconButton(
                      onPressed: () {
                        _searchController.clear();
                        context.read<UserBloc>().add(const GetUsers());
                      },
                      icon: Icon(Icons.clear, size: 20.w),
                    )
                  : null,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.r),
                borderSide: BorderSide(color: AppColors.onSurface.withValues(alpha: 0.2)),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.r),
                borderSide: BorderSide(color: AppColors.onSurface.withValues(alpha: 0.2)),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.r),
                borderSide: BorderSide(color: AppColors.primary, width: 2),
              ),
            ),
            onChanged: (value) {
              if (value.isEmpty) {
                context.read<UserBloc>().add(const GetUsers());
              } else {
                context.read<UserBloc>().add(SearchUsers(query: value));
              }
            },
          ),
        ),
        SizedBox(width: 16.w),
        // Status Filter
        SizedBox(
          width: 200.w,
          child: DropdownButtonFormField<UserStatus?>(
            value: _selectedStatus,
            decoration: InputDecoration(
              labelText: 'Filter by Status',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.r),
                borderSide: BorderSide(color: AppColors.onSurface.withValues(alpha: 0.2)),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.r),
                borderSide: BorderSide(color: AppColors.onSurface.withValues(alpha: 0.2)),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.r),
                borderSide: BorderSide(color: AppColors.primary, width: 2),
              ),
            ),
            items: [
              const DropdownMenuItem(
                value: null,
                child: Text('All Status'),
              ),
              ...UserStatus.values.map(
                (status) => DropdownMenuItem(
                  value: status,
                  child: Text(status.displayName),
                ),
              ),
            ],
            onChanged: (value) {
              setState(() {
                _selectedStatus = value;
              });
              context.read<UserBloc>().add(FilterUsersByStatus(status: value));
            },
          ),
        ),
      ],
    );
  }

  Widget _buildContent() {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        if (state is UserLoading) {
          return const LoadingWidget(message: 'Loading users...');
        }

        if (state is UserError) {
          return CustomErrorWidget(
            message: state.failure.message,
            onRetry: () => context.read<UserBloc>().add(const RefreshUsers()),
          );
        }

        if (state is UserLoaded) {
          if (state.users.users.isEmpty) {
            return _buildEmptyState();
          }

          return UserTableWidget(
            users: state.users.users,
            onStatusChanged: (user, newStatus) {
              context.read<UserBloc>().add(
                UpdateUserStatus(userId: user.id, status: newStatus),
              );
            },
            onDeleteUser: (user) {
              context.read<UserBloc>().add(
                DeleteUser(userId: user.id),
              );
            },
          );
        }

        return const SizedBox.shrink();
      },
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.people_outline,
            size: 64.w,
            color: AppColors.onBackground.withValues(alpha: 0.3),
          ),
          SizedBox(height: 16.h),
          Text(
            'No Users Found',
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.onBackground,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            'There are no users to display. Try adjusting your search or filters.',
            style: TextStyle(
              fontSize: 14.sp,
              color: AppColors.onBackground.withValues(alpha: 0.6),
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 24.h),
          ElevatedButton.icon(
            onPressed: () => context.read<UserBloc>().add(const RefreshUsers()),
            icon: Icon(Icons.refresh, size: 20.w),
            label: const Text('Refresh'),
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary,
              foregroundColor: AppColors.onPrimary,
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
            ),
          ),
        ],
      ),
    );
  }
}
