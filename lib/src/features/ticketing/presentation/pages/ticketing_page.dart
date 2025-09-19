import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:y_chat_admin/src/features/ticketing/presentation/bloc/ticket_bloc.dart';
import 'package:y_chat_admin/src/features/ticketing/presentation/bloc/ticket_event.dart';
import 'package:y_chat_admin/src/features/ticketing/presentation/bloc/ticket_state.dart';
import 'package:y_chat_admin/src/features/ticketing/presentation/widgets/ticket_card.dart';
import 'package:y_chat_admin/src/features/ticketing/presentation/widgets/ticket_stats_widget.dart';
import 'package:y_chat_admin/src/features/ticketing/presentation/widgets/ticket_detail_dialog.dart';
import 'package:y_chat_admin/src/shared/widgets/loading_widget.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/utils/web_responsive.dart';

class TicketingPage extends StatefulWidget {
  const TicketingPage({super.key});

  @override
  State<TicketingPage> createState() => _TicketingPageState();
}

class _TicketingPageState extends State<TicketingPage> {
  String _selectedFilter = 'all';
  String _selectedPriority = 'all';
  int _currentPage = 1;
  final int _limit = 20;

  @override
  void initState() {
    super.initState();
    _loadTickets();
    _loadStats();
  }

  void _loadTickets() {
    context.read<TicketBloc>().add(
          TicketEvent.getTickets(
            status: _selectedFilter == 'all' ? null : _selectedFilter,
            priority: _selectedPriority == 'all' ? null : _selectedPriority,
            page: _currentPage,
            limit: _limit,
          ),
        );
  }

  void _loadStats() {
    context.read<TicketBloc>().add(const TicketEvent.getTicketStats());
  }


  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 768;
    
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Padding(
        padding: WebResponsive.getWebPadding(context, all: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeader(isMobile),
            SizedBox(height: WebResponsive.getWebHeight(24, context)),
            _buildStats(),
            SizedBox(height: WebResponsive.getWebHeight(24, context)),
            _buildFilters(isMobile),
            SizedBox(height: WebResponsive.getWebHeight(16, context)),
            Expanded(
              child: _buildContent(isMobile),
            ),
          ],
        ),
      ),
      floatingActionButton: _buildFloatingActionButton(),
    );
  }

  

  Widget _buildHeader(bool isMobile) {
    return Row(
      children: [
        Icon(
          Icons.support_agent,
          size: isMobile ? 24.w : 28.w,
          color: AppColors.primary,
        ),
        SizedBox(width: 12.w),
        Text(
          'Ticket Management',
          style: TextStyle(
            fontSize: isMobile ? 24.sp : 28.sp,
            fontWeight: FontWeight.bold,
            color: AppColors.onBackground,
          ),
        ),
        const Spacer(),
        if (!isMobile) ...[
          IconButton(
            onPressed: _loadTickets,
            icon: Icon(
              Icons.refresh,
              color: AppColors.primary,
              size: 24.w,
            ),
            tooltip: 'Refresh Tickets',
          ),
        ],
      ],
    );
  }

  Widget _buildStats() {
    return BlocBuilder<TicketBloc, TicketState>(
      builder: (context, state) {
        if (state is TicketStatsLoadedState) {
          return TicketStatsWidget(stats: state.stats);
        }
        return const SizedBox.shrink();
      },
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Filters',
            style: TextStyle(
              fontSize: WebResponsive.getWebFontSize(18, context),
              fontWeight: FontWeight.w600,
              color: AppColors.onBackground,
            ),
          ),
          SizedBox(height: WebResponsive.getWebHeight(12, context)),
          isMobile ? _buildMobileFilters() : _buildDesktopFilters(),
        ],
      ),
    );
  }

  Widget _buildMobileFilters() {
    return Column(
      children: [
        _buildStatusFilter(),
        SizedBox(height: 12.h),
        _buildPriorityFilter(),
        SizedBox(height: 12.h),
        _buildSearchField(),
      ],
    );
  }

  Widget _buildDesktopFilters() {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: _buildSearchField(),
        ),
        SizedBox(width: 16.w),
        Expanded(
          child: _buildStatusFilter(),
        ),
        SizedBox(width: 16.w),
        Expanded(
          child: _buildPriorityFilter(),
        ),
      ],
    );
  }

  Widget _buildSearchField() {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search tickets...',
        prefixIcon: Icon(Icons.search, size: 20.w),
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
        // TODO: Implement search functionality
      },
    );
  }

  Widget _buildStatusFilter() {
    final statuses = [
      {'key': 'all', 'label': 'All Status'},
      {'key': 'opened', 'label': 'Opened'},
      {'key': 'pending', 'label': 'Pending'},
      {'key': 'closed', 'label': 'Closed'},
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Status',
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            color: AppColors.onBackground,
          ),
        ),
        SizedBox(height: 8.h),
        DropdownButtonFormField<String>(
          value: _selectedFilter,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
          ),
          items: statuses.map((status) {
            return DropdownMenuItem<String>(
              value: status['key'],
              child: Text(status['label']!),
            );
          }).toList(),
          onChanged: (value) {
            setState(() {
              _selectedFilter = value!;
              _currentPage = 1;
            });
            _loadTickets();
          },
        ),
      ],
    );
  }

  Widget _buildPriorityFilter() {
    final priorities = [
      {'key': 'all', 'label': 'All Priority'},
      {'key': 'high', 'label': 'High'},
      {'key': 'medium', 'label': 'Medium'},
      {'key': 'low', 'label': 'Low'},
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Priority',
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            color: AppColors.onBackground,
          ),
        ),
        SizedBox(height: 8.h),
        DropdownButtonFormField<String>(
          value: _selectedPriority,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
          ),
          items: priorities.map((priority) {
            return DropdownMenuItem<String>(
              value: priority['key'],
              child: Text(priority['label']!),
            );
          }).toList(),
          onChanged: (value) {
            setState(() {
              _selectedPriority = value!;
              _currentPage = 1;
            });
            _loadTickets();
          },
        ),
      ],
    );
  }

  Widget _buildContent(bool isMobile) {
    return BlocBuilder<TicketBloc, TicketState>(
      builder: (context, state) {
        if (state is TicketLoadingState) {
          return const LoadingWidget(message: 'Loading tickets...');
        }

        if (state is TicketErrorState) {
          return _buildErrorState(state.failure.message);
        }

        if (state is TicketLoadedState) {
          return _buildTicketsList(state.tickets, isMobile);
        }

        return _buildEmptyState();
      },
    );
  }

  Widget _buildErrorState(String message) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(24.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.error_outline,
              size: 64.w,
              color: Colors.red.withValues(alpha: 0.6),
            ),
            SizedBox(height: 16.h),
            Text(
              'Unable to Load Tickets',
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.onBackground,
              ),
            ),
            SizedBox(height: 8.h),
            Text(
              message.contains('404') 
                  ? 'Ticket management API is not available. Please check if the backend server is running and the ticket endpoints are implemented.'
                  : message.contains('500')
                  ? 'Internal server error. The backend server is running but there\'s an issue with the ticket endpoints. Please check the server logs or contact the backend team.'
                  : message,
              style: TextStyle(
                fontSize: 14.sp,
                color: AppColors.onBackground.withValues(alpha: 0.6),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 24.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: _loadTickets,
                  icon: const Icon(Icons.refresh),
                  label: const Text('Retry'),
                ),
                SizedBox(width: 12.w),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTicketsList(tickets, bool isMobile) {
    final allTickets = <dynamic>[];
    tickets.tickets.forEach((status, ticketList) {
      allTickets.addAll(ticketList);
    });

    if (allTickets.isEmpty) {
      return _buildEmptyState();
    }

    if (isMobile) {
      return ListView.builder(
        itemCount: allTickets.length,
        itemBuilder: (context, index) {
          final ticket = allTickets[index];
          return TicketCard(
            ticket: ticket,
            onTap: () => _showTicketDetail(ticket),
            onStatusUpdate: (status) => _updateTicketStatus(ticket.id, status),
            onDelete: () => _deleteTicket(ticket.id),
          );
        },
      );
    } else {
      // Desktop: Use responsive grid layout
      return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: WebResponsive.getWebGridColumns(
            context,
            mobileColumns: 1,
            tabletColumns: 2,
            desktopColumns: 3,
            largeDesktopColumns: 4,
          ),
          crossAxisSpacing: WebResponsive.getWebSpacing(16, context),
          mainAxisSpacing: WebResponsive.getWebHeight(16, context),
          childAspectRatio: 1.2,
        ),
        itemCount: allTickets.length,
        itemBuilder: (context, index) {
          final ticket = allTickets[index];
          return TicketCard(
            ticket: ticket,
            onTap: () => _showTicketDetail(ticket),
            onStatusUpdate: (status) => _updateTicketStatus(ticket.id, status),
            onDelete: () => _deleteTicket(ticket.id),
          );
        },
      );
    }
  }

  Widget _buildFloatingActionButton() {
    return FloatingActionButton.extended(
      onPressed: _showCreateTicketDialog,
      backgroundColor: AppColors.primary,
      foregroundColor: AppColors.onPrimary,
      icon: Icon(Icons.add, size: 20.w),
      label: Text(
        'Create Ticket',
        style: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.support_agent,
            size: 64.w,
            color: AppColors.onBackground.withValues(alpha: 0.3),
          ),
          SizedBox(height: 16.h),
          Text(
            'No Tickets Found',
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.onBackground,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            _selectedFilter == 'all' 
                ? 'There are no tickets to display.'
                : 'No tickets found with the selected filter.',
            style: TextStyle(
              fontSize: 14.sp,
              color: AppColors.onBackground.withValues(alpha: 0.6),
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 24.h),
        ]
      ),
    );
  }

 
  void _showTicketDetail(ticket) {
    showDialog(
      context: context,
      builder: (context) => TicketDetailDialog(
        ticket: ticket,
        onTicketUpdated: () {
          _loadTickets();
          _loadStats();
        },
      ),
    );
  }

  void _updateTicketStatus(int ticketId, String status) {
    context.read<TicketBloc>().add(
          TicketEvent.updateTicketStatus(
            id: ticketId,
            status: status,
          ),
        );
  }

  void _deleteTicket(int ticketId) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Delete Ticket'),
        content: const Text('Are you sure you want to delete this ticket?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              context.read<TicketBloc>().add(
                    TicketEvent.deleteTicket(ticketId),
                  );
            },
            child: const Text('Delete'),
          ),
        ],
      ),
    );
  }

  void _showCreateTicketDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
        title: Row(
          children: [
            Icon(
              Icons.add_circle_outline,
              color: AppColors.primary,
              size: 24.w,
            ),
            SizedBox(width: 12.w),
            const Text('Create New Ticket'),
          ],
        ),
        content: SizedBox(
          width: 400.w,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: 'Title',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                ),
              ),
              SizedBox(height: 16.h),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Description',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                ),
                maxLines: 3,
              ),
              SizedBox(height: 16.h),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  labelText: 'Priority',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                ),
                items: ['low', 'medium', 'high', 'urgent']
                    .map((priority) => DropdownMenuItem(
                          value: priority,
                          child: Text(priority.toUpperCase()),
                        ))
                    .toList(),
                onChanged: (value) {},
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
              // TODO: Implement create ticket functionality
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Create ticket functionality will be implemented'),
                  backgroundColor: Colors.orange,
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary,
              foregroundColor: AppColors.onPrimary,
            ),
            child: const Text('Create'),
          ),
        ],
      ),
    );
  }
}