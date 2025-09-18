import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:y_chat_admin/src/shared/widgets/loading_widget.dart';
import 'package:y_chat_admin/src/shared/widgets/error_widget.dart';


import '../../../../core/constants/constants.dart';

class TicketingPage extends StatefulWidget {
  const TicketingPage({super.key});

  @override
  State<TicketingPage> createState() => _TicketingPageState();
}

class _TicketingPageState extends State<TicketingPage> {
  final List<Map<String, dynamic>> _tickets = [
    {
      'id': '1',
      'title': 'Login Issue',
      'description': 'Unable to login with correct credentials',
      'status': 'open',
      'priority': 'high',
      'category': 'technical',
      'userName': 'John Doe',
      'userEmail': 'john@example.com',
      'createdAt': '2024-01-15',
      'assignedTo': 'Support Team',
    },
    {
      'id': '2',
      'title': 'Feature Request',
      'description': 'Add dark mode to the application',
      'status': 'in_progress',
      'priority': 'medium',
      'category': 'feature_request',
      'userName': 'Jane Smith',
      'userEmail': 'jane@example.com',
      'createdAt': '2024-01-14',
      'assignedTo': 'Development Team',
    },
    {
      'id': '3',
      'title': 'Billing Question',
      'description': 'Question about monthly subscription',
      'status': 'resolved',
      'priority': 'low',
      'category': 'billing',
      'userName': 'Bob Wilson',
      'userEmail': 'bob@example.com',
      'createdAt': '2024-01-13',
      'assignedTo': 'Billing Team',
    },
  ];

  bool _isLoading = false;
  String? _error;
  String _selectedFilter = 'all';

  @override
  void initState() {
    super.initState();
    _loadTickets();
  }

  Future<void> _loadTickets() async {
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

  List<Map<String, dynamic>> get _filteredTickets {
    if (_selectedFilter == 'all') return _tickets;
    return _tickets.where((ticket) => ticket['status'] == _selectedFilter).toList();
  }

  Color _getStatusColor(String status) {
    switch (status) {
      case 'open':
        return Colors.orange;
      case 'in_progress':
        return Colors.blue;
      case 'resolved':
        return Colors.green;
      case 'closed':
        return Colors.grey;
      default:
        return Colors.grey;
    }
  }

  Color _getPriorityColor(String priority) {
    switch (priority) {
      case 'high':
        return Colors.red;
      case 'medium':
        return Colors.orange;
      case 'low':
        return Colors.green;
      default:
        return Colors.grey;
    }
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
            _buildFilters(),
            SizedBox(height: 24.h),
            Expanded(
              child: _buildContent(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      children: [
        Text(
          'Ticket Management',
          style: TextStyle(
            fontSize: 32.sp,
            fontWeight: FontWeight.bold,
            color: AppColors.onBackground,
          ),
        ),
        const Spacer(),
        ElevatedButton.icon(
          onPressed: () {
            // TODO: Implement create ticket
          },
          icon: const Icon(Icons.add),
          label: const Text('Create Ticket'),
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primary,
            foregroundColor: AppColors.onPrimary,
          ),
        ),
      ],
    );
  }

  Widget _buildFilters() {
    final filters = [
      {'key': 'all', 'label': 'All'},
      {'key': 'open', 'label': 'Open'},
      {'key': 'in_progress', 'label': 'In Progress'},
      {'key': 'resolved', 'label': 'Resolved'},
      {'key': 'closed', 'label': 'Closed'},
    ];

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: filters.map((filter) {
          final isSelected = _selectedFilter == filter['key'];
          return Container(
            margin: EdgeInsets.only(right: 8.w),
            child: FilterChip(
              label: Text(filter['label']!),
              selected: isSelected,
              onSelected: (selected) {
                setState(() {
                  _selectedFilter = filter['key']!;
                });
              },
              selectedColor: AppColors.primary.withValues(alpha: 0.2),
              checkmarkColor: AppColors.primary,
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildContent() {
    if (_isLoading) {
      return const LoadingWidget(message: 'Loading tickets...');
    }

    if (_error != null) {
      return CustomErrorWidget(
        message: _error!,
        onRetry: _loadTickets,
      );
    }

    if (_filteredTickets.isEmpty) {
      return EmptyStateWidget(
        title: 'No Tickets Found',
        message: _selectedFilter == 'all' 
            ? 'There are no tickets to display.'
            : 'No tickets found with the selected filter.',
        action: ElevatedButton.icon(
          onPressed: () {
            // TODO: Implement create ticket
          },
          icon: const Icon(Icons.add),
          label: const Text('Create Ticket'),
        ),
      );
    }

    return _buildTicketsList();
  }

  Widget _buildTicketsList() {
    return ListView.builder(
      itemCount: _filteredTickets.length,
      itemBuilder: (context, index) {
        final ticket = _filteredTickets[index];
        return _buildTicketCard(ticket);
      },
    );
  }

  Widget _buildTicketCard(Map<String, dynamic> ticket) {
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  ticket['title'],
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.onBackground,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                decoration: BoxDecoration(
                  color: _getStatusColor(ticket['status']).withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Text(
                  ticket['status'].toUpperCase().replaceAll('_', ' '),
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                    color: _getStatusColor(ticket['status']),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 8.h),
          Text(
            ticket['description'],
            style: TextStyle(
              fontSize: 14.sp,
              color: AppColors.onBackground.withValues(alpha: 0.7),
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(height: 12.h),
          Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                decoration: BoxDecoration(
                  color: _getPriorityColor(ticket['priority']).withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Text(
                  ticket['priority'].toUpperCase(),
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                    color: _getPriorityColor(ticket['priority']),
                  ),
                ),
              ),
              SizedBox(width: 8.w),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                decoration: BoxDecoration(
                  color: AppColors.secondary.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Text(
                  ticket['category'].toUpperCase().replaceAll('_', ' '),
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.secondary,
                  ),
                ),
              ),
              const Spacer(),
              Text(
                'By ${ticket['userName']}',
                style: TextStyle(
                  fontSize: 12.sp,
                  color: AppColors.onBackground.withValues(alpha: 0.6),
                ),
              ),
            ],
          ),
          SizedBox(height: 8.h),
          Row(
            children: [
              Icon(
                Icons.person,
                size: 14.w,
                color: AppColors.onBackground.withValues(alpha: 0.6),
              ),
              SizedBox(width: 4.w),
              Text(
                'Assigned to ${ticket['assignedTo']}',
                style: TextStyle(
                  fontSize: 12.sp,
                  color: AppColors.onBackground.withValues(alpha: 0.6),
                ),
              ),
              const Spacer(),
              Text(
                ticket['createdAt'],
                style: TextStyle(
                  fontSize: 12.sp,
                  color: AppColors.onBackground.withValues(alpha: 0.6),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
