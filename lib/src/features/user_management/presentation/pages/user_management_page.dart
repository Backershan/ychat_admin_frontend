import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/constants.dart';
import '../bloc/user_bloc.dart';
import '../bloc/user_event.dart';
import '../bloc/user_state.dart';
import '../widgets/user_card.dart';
import '../widgets/create_user_dialog.dart';
import '../widgets/user_actions_dialog.dart';

class UserManagementPage extends StatefulWidget {
  const UserManagementPage({super.key});

  @override
  State<UserManagementPage> createState() => _UserManagementPageState();
}

class _UserManagementPageState extends State<UserManagementPage> {
  String _selectedStatus = 'All';
  String _searchQuery = '';
  final TextEditingController _searchController = TextEditingController();

  final List<String> _statusOptions = [
    'All',
    'active',
    'inactive',
    'suspended',
    'banned',
  ];

  @override
  void initState() {
    super.initState();
    // Load users on page initialization
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<UserBloc>().add(const GetUsers());
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: BlocListener<UserBloc, UserState>(
        listener: (context, state) {
          if (state is UserError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.message),
                backgroundColor: Colors.red,
              ),
            );
          } else if (state is UserCreated) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('User created successfully'),
                backgroundColor: Colors.green,
              ),
            );
          } else if (state is UserUpdated) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('User updated successfully'),
                backgroundColor: Colors.green,
              ),
            );
          } else if (state is UserDeleted) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('User deleted successfully'),
                backgroundColor: Colors.green,
              ),
            );
          } else if (state is UserStatusUpdated) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('User status updated to ${state.status}'),
                backgroundColor: Colors.green,
              ),
            );
          } else if (state is UserBanned) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('User banned successfully'),
                backgroundColor: Colors.orange,
              ),
            );
          } else if (state is UserUnbanned) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('User unbanned successfully'),
                backgroundColor: Colors.green,
              ),
            );
          } else if (state is UserActivated) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('User activated successfully'),
                backgroundColor: Colors.green,
              ),
            );
          } else if (state is UserDeactivated) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('User deactivated successfully'),
                backgroundColor: Colors.orange,
              ),
            );
          }
        },
        child: MediaQuery.of(context).size.width < 900 
          ? _buildMobileLayout()
          : _buildDesktopLayout(),
      ),
    );
  }

  Widget _buildMobileLayout() {
    return Column(
      children: [
        _buildHeader(),
        Expanded(
          child: BlocBuilder<UserBloc, UserState>(
            builder: (context, state) {
              print('🔧 UserManagementPage: Current state: $state');
              
              if (state is UserLoading) {
                print('🔧 UserManagementPage: Showing loading state');
                return const Center(child: CircularProgressIndicator());
              } else if (state is UsersLoaded) {
                print('🔧 UserManagementPage: Showing users loaded state with ${state.users.users.length} users');
                return _buildUsersList(state.users);
              } else if (state is UserError) {
                print('🔧 UserManagementPage: Showing error state: ${state.message}');
                return _buildErrorState(state.message);
              } else {
                print('🔧 UserManagementPage: Showing initial state');
                return const Center(
                  child: Text('No users loaded. Pull to refresh.'),
                );
              }
            },
          ),
        ),
      ],
    );
  }

  Widget _buildDesktopLayout() {
    return Padding(
      padding: EdgeInsets.all(24.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeader(),
          SizedBox(height: 24.h),
          Expanded(
            child: BlocBuilder<UserBloc, UserState>(
              builder: (context, state) {
                print('🔧 UserManagementPage: Current state: $state');
                
                if (state is UserLoading) {
                  print('🔧 UserManagementPage: Showing loading state');
                  return const Center(child: CircularProgressIndicator());
                } else if (state is UsersLoaded) {
                  print('🔧 UserManagementPage: Showing users loaded state with ${state.users.users.length} users');
                  return _buildUsersList(state.users);
                } else if (state is UserError) {
                  print('🔧 UserManagementPage: Showing error state: ${state.message}');
                  return _buildErrorState(state.message);
                } else {
                  print('🔧 UserManagementPage: Showing initial state');
                  return const Center(
                    child: Text('No users loaded. Click refresh to load users.'),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
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
        children: [
          Row(
            children: [
              Icon(
                Icons.people_outline,
                size: 24.sp,
                color: AppColors.primary,
              ),
              SizedBox(width: 12.w),
              Text(
                'User Management',
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.onSurface,
                ),
              ),
              const Spacer(),
              IconButton(
                onPressed: () {
                  context.read<UserBloc>().add(const RefreshUsers());
                },
                icon: const Icon(Icons.refresh),
                tooltip: 'Refresh',
              ),
              SizedBox(width: 8.w),
              ElevatedButton.icon(
                onPressed: () {
                  _showCreateUserDialog();
                },
                icon: const Icon(Icons.add),
                label: const Text('Add User'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  foregroundColor: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: TextField(
                  controller: _searchController,
                  decoration: InputDecoration(
                    hintText: 'Search users...',
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 12.w,
                      vertical: 8.h,
                    ),
                  ),
                  onChanged: (value) {
                    setState(() {
                      _searchQuery = value;
                    });
                    _performSearch();
                  },
                ),
              ),
              SizedBox(width: 12.w),
              Expanded(
                child: DropdownButtonFormField<String>(
                  value: _selectedStatus,
                  decoration: InputDecoration(
                    labelText: 'Status',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 12.w,
                      vertical: 8.h,
                    ),
                  ),
                  items: _statusOptions.map((String status) {
                    return DropdownMenuItem<String>(
                      value: status,
                      child: Text(status),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    if (newValue != null) {
                      setState(() {
                        _selectedStatus = newValue;
                      });
                      _performSearch();
                    }
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildUsersList(users) {
    List<dynamic> filteredUsers = users.users;
    
    // Apply search filter
    if (_searchQuery.isNotEmpty) {
      filteredUsers = users.users.where((user) {
        return user.firstname.toLowerCase().contains(_searchQuery.toLowerCase()) ||
               user.email.toLowerCase().contains(_searchQuery.toLowerCase()) ||
               (user.lastname?.toLowerCase().contains(_searchQuery.toLowerCase()) ?? false);
      }).toList();
    }
    
    // Apply status filter
    if (_selectedStatus != 'All') {
      filteredUsers = filteredUsers.where((user) => user.status == _selectedStatus).toList();
    }

    if (filteredUsers.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.people_outline,
              size: 64.sp,
              color: Colors.grey[400],
            ),
            SizedBox(height: 16.h),
            Text(
              'No users found',
              style: TextStyle(
                fontSize: 18.sp,
                color: Colors.grey[600],
              ),
            ),
            if (_searchQuery.isNotEmpty || _selectedStatus != 'All')
              Text(
                'Try adjusting your search criteria',
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.grey[500],
                ),
              ),
          ],
        ),
      );
    }

    return GridView.builder(
      padding: EdgeInsets.all(16.w),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: MediaQuery.of(context).size.width > 1200 ? 3 : 2,
        childAspectRatio: 1.2,
        crossAxisSpacing: 16.w,
        mainAxisSpacing: 16.h,
      ),
      itemCount: filteredUsers.length,
      itemBuilder: (context, index) {
        final user = filteredUsers[index];
        return UserCard(
          user: user,
          onEdit: () => _showEditUserDialog(user),
          onDelete: () => _showDeleteUserDialog(user),
          onActions: () => _showUserActionsDialog(user),
        );
      },
    );
  }

  Widget _buildErrorState(String message) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.error_outline,
            size: 64.sp,
            color: Colors.red[400],
          ),
          SizedBox(height: 16.h),
          Text(
            'Error loading users',
            style: TextStyle(
              fontSize: 18.sp,
              color: Colors.red[600],
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            message,
            style: TextStyle(
              fontSize: 14.sp,
              color: Colors.grey[600],
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 16.h),
          ElevatedButton(
            onPressed: () {
              context.read<UserBloc>().add(const GetUsers());
            },
            child: const Text('Retry'),
          ),
        ],
      ),
    );
  }

  void _performSearch() {
    context.read<UserBloc>().add(
          GetUsers(
            search: _searchQuery.isNotEmpty ? _searchQuery : null,
            status: _selectedStatus != 'All' ? _selectedStatus : null,
          ),
        );
  }

  void _showCreateUserDialog() {
    showDialog(
      context: context,
      builder: (context) => const CreateUserDialog(),
    );
  }

  void _showEditUserDialog(user) {
    // TODO: Implement edit user dialog
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Edit user functionality coming soon'),
        backgroundColor: Colors.orange,
      ),
    );
  }

  void _showDeleteUserDialog(user) {
    // Check if user can be deleted based on status
    if (user.status == 'active') {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Cannot delete active users. Please deactivate or suspend first.'),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

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
              context.read<UserBloc>().add(DeleteUser(user.id));
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

  void _showUserActionsDialog(user) {
    showDialog(
      context: context,
      builder: (context) => UserActionsDialog(user: user),
    );
  }
}