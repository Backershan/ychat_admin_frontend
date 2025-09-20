import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:y_chat_admin/src/core/constants/constants.dart';
import 'package:y_chat_admin/src/core/utils/responsive.dart';
import 'package:y_chat_admin/src/features/user_management/domain/entities/user_entity.dart';
import 'package:y_chat_admin/src/features/user_management/presentation/bloc/user_bloc.dart';
import 'package:y_chat_admin/src/features/user_management/presentation/bloc/user_event.dart';
import 'package:y_chat_admin/src/features/user_management/presentation/bloc/user_state.dart';
import 'package:y_chat_admin/src/features/user_management/presentation/widgets/user_table_widget.dart';
import 'package:y_chat_admin/src/features/user_management/presentation/widgets/user_create_dialog.dart';
import 'package:y_chat_admin/src/features/user_management/presentation/widgets/user_edit_dialog.dart';
import 'package:y_chat_admin/src/features/user_management/presentation/widgets/user_ban_dialog.dart';
import 'package:y_chat_admin/src/features/user_management/presentation/widgets/user_deactivate_dialog.dart';

class UserManagementPage extends StatefulWidget {
  const UserManagementPage({super.key});

  @override
  State<UserManagementPage> createState() => _UserManagementPageState();
}

class _UserManagementPageState extends State<UserManagementPage> {
  final TextEditingController _searchController = TextEditingController();
  String _selectedStatus = 'all';
  int _currentPage = 1;
  final int _limit = 20;

  @override
  void initState() {
    super.initState();
    _loadUsers();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _loadUsers() {
    context.read<UserBloc>().add(UserEvent.getUsers(
      search: _searchController.text.isNotEmpty ? _searchController.text : null,
      status: _selectedStatus != 'all' ? _selectedStatus : null,
      page: _currentPage,
      limit: _limit,
    ));
  }

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 900;
    
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Padding(
        padding: WebResponsive.getWebPadding(context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeader(isMobile),
            SizedBox(height: 24.h),
            _buildFilters(isMobile),
            SizedBox(height: 24.h),
            Expanded(
              child: BlocConsumer<UserBloc, UserState>(
                listener: (context, state) {
                  state.when(
                    initial: () {},
                    loading: () {},
                    loaded: (userListResponse, users, currentPage, totalPages, totalUsers, searchQuery, statusFilter) {},
                    error: (message) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(message),
                          backgroundColor: AppColors.error,
                        ),
                      );
                    },
                    actionSuccess: (message, updatedUser) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(message),
                          backgroundColor: AppColors.success,
                        ),
                      );
                      _loadUsers(); // Refresh the list
                    },
                    actionLoading: () {},
                  );
                },
                builder: (context, state) {
                  return state.when(
                    initial: () => _buildLoadingState(),
                    loading: () => _buildLoadingState(),
                    loaded: (userListResponse, users, currentPage, totalPages, totalUsers, searchQuery, statusFilter) {
                      if (users.isEmpty) {
                        return _buildEmptyState();
                      }
                      return Column(
                        children: [
                          _buildStats(totalUsers, currentPage, totalPages),
                          SizedBox(height: 16.h),
                          Expanded(
                            child: UserTableWidget(
                              users: users,
                              onStatusChanged: _onStatusChanged,
                              onDeleteUser: _onDeleteUser,
                              onEditUser: _onEditUser,
                              onBanUser: _onBanUser,
                              onUnbanUser: _onUnbanUser,
                              onActivateUser: _onActivateUser,
                              onDeactivateUser: _onDeactivateUser,
                            ),
                          ),
                          if (totalPages > 1) _buildPagination(currentPage, totalPages),
                        ],
                      );
                    },
                    error: (message) => _buildErrorState(message),
                    actionSuccess: (message, updatedUser) => const SizedBox(),
                    actionLoading: () => const Center(child: CircularProgressIndicator()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _showCreateUserDialog,
        backgroundColor: AppColors.primary,
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }

  Widget _buildHeader(bool isMobile) {
    return Row(
      children: [
        Icon(
          Icons.people,
          size: isMobile ? 24.r : 32.r,
          color: AppColors.primary,
        ),
        SizedBox(width: 12.w),
        Text(
          'User Management',
          style: TextStyle(
            fontSize: WebResponsive.getWebFontSize(isMobile ? 24 : 32, context),
            fontWeight: FontWeight.bold,
            color: AppColors.textPrimary,
          ),
        ),
      ],
    );
  }

  Widget _buildFilters(bool isMobile) {
    return Container(
      padding: WebResponsive.getWebPadding(context),
      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: AppColors.border),
      ),
      child: isMobile ? _buildMobileFilters() : _buildDesktopFilters(),
    );
  }

  Widget _buildMobileFilters() {
    return Column(
      children: [
        _buildSearchField(),
        SizedBox(height: 12.h),
        _buildStatusFilter(),
        SizedBox(height: 12.h),
        _buildFilterButtons(),
      ],
    );
  }

  Widget _buildDesktopFilters() {
    return Row(
      children: [
        Expanded(flex: 2, child: _buildSearchField()),
        SizedBox(width: 16.w),
        Expanded(flex: 1, child: _buildStatusFilter()),
        SizedBox(width: 16.w),
        _buildFilterButtons(),
      ],
    );
  }

  Widget _buildSearchField() {
    return TextField(
      controller: _searchController,
      decoration: InputDecoration(
        hintText: 'Search users...',
        prefixIcon: const Icon(Icons.search),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(color: AppColors.border),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(color: AppColors.border),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(color: AppColors.primary),
        ),
      ),
      onSubmitted: (_) => _loadUsers(),
    );
  }

  Widget _buildStatusFilter() {
    return DropdownButtonFormField<String>(
      value: _selectedStatus,
      decoration: InputDecoration(
        labelText: 'Status',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(color: AppColors.border),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(color: AppColors.border),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(color: AppColors.primary),
        ),
      ),
      items: const [
        DropdownMenuItem(value: 'all', child: Text('All Status')),
        DropdownMenuItem(value: 'active', child: Text('Active')),
        DropdownMenuItem(value: 'inactive', child: Text('Inactive')),
        DropdownMenuItem(value: 'suspended', child: Text('Suspended')),
        DropdownMenuItem(value: 'banned', child: Text('Banned')),
      ],
      onChanged: (value) {
        setState(() {
          _selectedStatus = value ?? 'all';
        });
        _loadUsers();
      },
    );
  }

  Widget _buildFilterButtons() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        ElevatedButton.icon(
          onPressed: _loadUsers,
          icon: const Icon(Icons.refresh),
          label: const Text('Refresh'),
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primary,
            foregroundColor: Colors.white,
          ),
        ),
        SizedBox(width: 8.w),
        OutlinedButton.icon(
          onPressed: _clearFilters,
          icon: const Icon(Icons.clear),
          label: const Text('Clear'),
        ),
      ],
    );
  }

  Widget _buildStats(int totalUsers, int currentPage, int totalPages) {
    return Container(
      padding: WebResponsive.getWebPadding(context),
      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: AppColors.border),
      ),
      child: Row(
        children: [
          _buildStatItem('Total Users', totalUsers.toString(), AppColors.primary),
          SizedBox(width: 24.w),
          _buildStatItem('Current Page', '$currentPage of $totalPages', AppColors.textSecondary),
        ],
      ),
    );
  }

  Widget _buildStatItem(String label, String value, Color color) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: WebResponsive.getWebFontSize(14, context),
            color: AppColors.textSecondary,
          ),
        ),
        SizedBox(height: 4.h),
        Text(
          value,
          style: TextStyle(
            fontSize: WebResponsive.getWebFontSize(20, context),
            fontWeight: FontWeight.bold,
            color: color,
          ),
        ),
      ],
    );
  }

  Widget _buildPagination(int currentPage, int totalPages) {
    return Container(
      padding: WebResponsive.getWebPadding(context),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: currentPage > 1 ? () => _changePage(currentPage - 1) : null,
            icon: const Icon(Icons.chevron_left),
          ),
          ...List.generate(
            totalPages,
            (index) => Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.w),
              child: GestureDetector(
                onTap: () => _changePage(index + 1),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
                  decoration: BoxDecoration(
                    color: currentPage == index + 1 ? AppColors.primary : AppColors.background,
                    borderRadius: BorderRadius.circular(8.r),
                    border: Border.all(color: AppColors.border),
                  ),
                  child: Text(
                    '${index + 1}',
                    style: TextStyle(
                      color: currentPage == index + 1 ? Colors.white : AppColors.textPrimary,
                      fontWeight: currentPage == index + 1 ? FontWeight.bold : FontWeight.normal,
                    ),
                  ),
                ),
              ),
            ),
          ),
          IconButton(
            onPressed: currentPage < totalPages ? () => _changePage(currentPage + 1) : null,
            icon: const Icon(Icons.chevron_right),
          ),
        ],
      ),
    );
  }

  void _clearFilters() {
    setState(() {
      _searchController.clear();
      _selectedStatus = 'all';
      _currentPage = 1;
    });
    _loadUsers();
  }

  void _changePage(int page) {
    setState(() {
      _currentPage = page;
    });
    _loadUsers();
  }

  void _onStatusChanged(UserEntity user, String status) {
    context.read<UserBloc>().add(UserEvent.updateUserStatus(
      userId: user.id,
      status: status,
    ));
  }

  void _onDeleteUser(UserEntity user) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Delete User'),
        content: Text('Are you sure you want to delete ${user.firstname}?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
              context.read<UserBloc>().add(UserEvent.deleteUser(user.id));
            },
            style: ElevatedButton.styleFrom(backgroundColor: AppColors.error),
            child: const Text('Delete'),
          ),
        ],
      ),
    );
  }

  void _onEditUser(UserEntity user) {
    showDialog(
      context: context,
      builder: (context) => UserEditDialog(
        user: user,
        onUserUpdated: () => _loadUsers(),
      ),
    );
  }

  void _onBanUser(UserEntity user) {
    showDialog(
      context: context,
      builder: (context) => UserBanDialog(
        user: user,
        onUserBanned: () => _loadUsers(),
      ),
    );
  }

  void _onUnbanUser(UserEntity user) {
    context.read<UserBloc>().add(UserEvent.unbanUser(user.id));
  }

  void _onActivateUser(UserEntity user) {
    context.read<UserBloc>().add(UserEvent.activateUser(user.id));
  }

  void _onDeactivateUser(UserEntity user) {
    showDialog(
      context: context,
      builder: (context) => UserDeactivateDialog(
        user: user,
        onUserDeactivated: () => _loadUsers(),
      ),
    );
  }

  void _showCreateUserDialog() {
    showDialog(
      context: context,
      builder: (context) => UserCreateDialog(
        onUserCreated: () => _loadUsers(),
      ),
    );
  }

  Widget _buildLoadingState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(AppColors.primary),
          ),
          SizedBox(height: 16.h),
          Text(
            'Loading users...',
            style: TextStyle(
              fontSize: WebResponsive.getWebFontSize(16, context),
              color: AppColors.textSecondary,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.people_outline,
            size: 64.r,
            color: AppColors.textSecondary.withValues(alpha: 0.5),
          ),
          SizedBox(height: 16.h),
          Text(
            'No users found',
            style: TextStyle(
              fontSize: WebResponsive.getWebFontSize(18, context),
              fontWeight: FontWeight.w600,
              color: AppColors.textPrimary,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            'Try adjusting your search or filter criteria',
            style: TextStyle(
              fontSize: WebResponsive.getWebFontSize(14, context),
              color: AppColors.textSecondary,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildErrorState(String message) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.error_outline,
            size: 64.r,
            color: AppColors.error,
          ),
          SizedBox(height: 16.h),
          Text(
            'Something went wrong',
            style: TextStyle(
              fontSize: WebResponsive.getWebFontSize(18, context),
              fontWeight: FontWeight.w600,
              color: AppColors.textPrimary,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            message,
            style: TextStyle(
              fontSize: WebResponsive.getWebFontSize(14, context),
              color: AppColors.textSecondary,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 24.h),
          ElevatedButton.icon(
            onPressed: _loadUsers,
            icon: Icon(Icons.refresh),
            label: Text('Retry'),
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary,
              foregroundColor: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.r),
              ),
            ),
          ),
        ],
      ),
    );
  }
}