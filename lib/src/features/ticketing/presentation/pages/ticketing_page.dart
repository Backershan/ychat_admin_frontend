import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:y_chat_admin/src/features/ticketing/presentation/bloc/ticket_bloc.dart';
import 'package:y_chat_admin/src/features/ticketing/presentation/bloc/ticket_event.dart';
import 'package:y_chat_admin/src/features/ticketing/presentation/bloc/ticket_state.dart';
import 'package:y_chat_admin/src/features/ticketing/presentation/widgets/ticket_card.dart';
import 'package:y_chat_admin/src/features/ticketing/presentation/widgets/ticket_stats_widget.dart';
import 'package:y_chat_admin/src/features/ticketing/presentation/widgets/ticket_detail_dialog.dart';
import 'package:y_chat_admin/src/features/ticketing/data/models/ticket_api_models.dart';
import 'package:y_chat_admin/src/shared/widgets/loading_widget.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/utils/responsive.dart';

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
    // Load data with a slight delay to improve perceived performance
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _loadTickets();
      _loadStats();
    });
  }

  void _loadTickets() {
    // Add loading state before making the request
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
    // Load stats separately to avoid blocking the UI
    Future.delayed(const Duration(milliseconds: 100), () {
      if (mounted) {
        context.read<TicketBloc>().add(const TicketEvent.getTicketStats());
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 768;
    
    return Scaffold(
      backgroundColor: AppColors.background,
      body: isMobile ? _buildMobileLayout() : _buildDesktopLayout(),
      floatingActionButton: _buildFloatingActionButton(),
    );
  }

  Widget _buildMobileLayout() {
    return SafeArea(
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
        // Modern App Bar
        SliverAppBar(
          expandedHeight: 120.h,
          floating: false,
          pinned: true,
          backgroundColor: AppColors.primary,
          flexibleSpace: FlexibleSpaceBar(
            title: Text(
              'Tickets',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            background: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    AppColors.primary,
                    AppColors.primary.withValues(alpha: 0.8),
                  ],
                ),
              ),
              child: SafeArea(
                child: Padding(
                  padding: EdgeInsets.only(top: 60.h, left: 16.w, right: 16.w),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: _loadTickets,
                        icon: Icon(
                          Icons.refresh,
                          color: Colors.white,
                          size: 24.w,
                        ),
                        tooltip: 'Refresh Tickets',
                      ),
                      const Spacer(),
                      Text(
                        '${_getTotalTickets()} tickets',
                        style: TextStyle(
                          color: Colors.white.withValues(alpha: 0.9),
                          fontSize: 14.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        
        // Stats Section
        SliverToBoxAdapter(
          child: Container(
            margin: EdgeInsets.all(16.w),
            child: _buildStatsWithLoading(),
          ),
        ),
        
        // Modern Filter Section
        SliverToBoxAdapter(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 16.w),
            child: _buildModernMobileFilters(),
          ),
        ),
        
        // Tickets List - Use SliverList for proper scrolling
        _buildTicketsSliver(),
        ],
      ),
    );
  }

  Widget _buildDesktopLayout() {
    return Padding(
      padding: WebResponsive.getWebPadding(context, all: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeader(false),
          SizedBox(height: WebResponsive.getWebHeight(24, context)),
          _buildStats(),
          SizedBox(height: WebResponsive.getWebHeight(24, context)),
          _buildFilters(false),
          SizedBox(height: WebResponsive.getWebHeight(16, context)),
          Expanded(
            child: _buildContent(false),
          ),
        ],
      ),
    );
  }

  

  Widget _buildHeader(bool isMobile) {
    return Row(
      children: [
        
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

  Widget _buildStatsWithLoading() {
    return BlocBuilder<TicketBloc, TicketState>(
      builder: (context, state) {
        if (state is TicketStatsLoadedState) {
          return TicketStatsWidget(stats: state.stats.data);
        } else if (state is TicketLoadingState) {
          return Container(
            height: 120.h,
            decoration: BoxDecoration(
              color: AppColors.surface,
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: const Center(
              child: LoadingWidget(message: 'Loading stats...'),
            ),
          );
        }
        return const SizedBox.shrink();
      },
    );
  }

  Widget _buildStats() {
    return BlocBuilder<TicketBloc, TicketState>(
      builder: (context, state) {
        if (state is TicketStatsLoadedState) {
          return TicketStatsWidget(stats: state.stats.data);
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

  Widget _buildModernMobileFilters() {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(16.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.08),
            blurRadius: 20,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          // Filter Header
          Container(
            padding: EdgeInsets.all(16.w),
            decoration: BoxDecoration(
              color: AppColors.primary.withValues(alpha: 0.05),
              borderRadius: BorderRadius.circular(16.r),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.filter_list,
                  color: AppColors.primary,
                  size: 20.w,
                ),
                SizedBox(width: 8.w),
                Text(
                  'Filters',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.onBackground,
                  ),
                ),
                const Spacer(),
                TextButton(
                  onPressed: _clearFilters,
                  child: Text(
                    'Clear All',
                    style: TextStyle(
                      color: AppColors.primary,
                      fontSize: 12.sp,
                    ),
                  ),
                ),
              ],
            ),
          ),
          
          // Filter Content
          Padding(
            padding: EdgeInsets.all(16.w),
            child: Column(
              children: [
                // Search Field
                _buildModernSearchField(),
                SizedBox(height: 16.h),
                
                // Status Filter Chips
                _buildStatusChips(),
                SizedBox(height: 16.h),
                
                // Priority Filter Chips
                _buildPriorityChips(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildModernSearchField() {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(
          color: AppColors.onSurface.withValues(alpha: 0.1),
          width: 1,
        ),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search tickets...',
          hintStyle: TextStyle(
            color: AppColors.onSurface.withValues(alpha: 0.5),
            fontSize: 14.sp,
          ),
          prefixIcon: Icon(
            Icons.search,
            color: AppColors.primary,
            size: 20.w,
          ),
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 16.w,
            vertical: 12.h,
          ),
        ),
        onChanged: (value) {
          // TODO: Implement search functionality
        },
      ),
    );
  }

  Widget _buildStatusChips() {
    final statuses = [
      {'key': 'all', 'label': 'All', 'color': Colors.grey, 'icon': Icons.all_inclusive},
      {'key': 'opened', 'label': 'Opened', 'color': Colors.blue, 'icon': Icons.lock_open},
      {'key': 'pending', 'label': 'Pending', 'color': Colors.orange, 'icon': Icons.schedule},
      {'key': 'closed', 'label': 'Closed', 'color': Colors.green, 'icon': Icons.check_circle},
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Status',
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.onBackground,
          ),
        ),
        SizedBox(height: 8.h),
        Wrap(
          spacing: 8.w,
          runSpacing: 8.h,
          children: statuses.map((status) {
            final isSelected = _selectedFilter == status['key'];
            return GestureDetector(
              onTap: () {
                setState(() {
                  _selectedFilter = status['key'] as String;
                  _currentPage = 1;
                });
                _loadTickets();
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
                decoration: BoxDecoration(
                  color: isSelected 
                    ? (status['color'] as Color).withValues(alpha: 0.1)
                    : AppColors.background,
                  borderRadius: BorderRadius.circular(20.r),
                  border: Border.all(
                    color: isSelected 
                      ? status['color'] as Color
                      : AppColors.onSurface.withValues(alpha: 0.2),
                    width: isSelected ? 2 : 1,
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      status['icon'] as IconData,
                      size: 16.w,
                      color: isSelected 
                        ? status['color'] as Color
                        : AppColors.onSurface.withValues(alpha: 0.6),
                    ),
                    SizedBox(width: 4.w),
                    Text(
                      status['label'] as String,
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
                        color: isSelected 
                          ? status['color'] as Color
                          : AppColors.onSurface.withValues(alpha: 0.7),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }

  Widget _buildPriorityChips() {
    final priorities = [
      {'key': 'all', 'label': 'All Priority', 'color': Colors.grey, 'icon': Icons.flag},
      {'key': 'high', 'label': 'High', 'color': Colors.red, 'icon': Icons.priority_high},
      {'key': 'medium', 'label': 'Medium', 'color': Colors.orange, 'icon': Icons.remove},
      {'key': 'low', 'label': 'Low', 'color': Colors.green, 'icon': Icons.keyboard_arrow_down},
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Priority',
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.onBackground,
          ),
        ),
        SizedBox(height: 8.h),
        Wrap(
          spacing: 8.w,
          runSpacing: 8.h,
          children: priorities.map((priority) {
            final isSelected = _selectedPriority == priority['key'];
            return GestureDetector(
              onTap: () {
                setState(() {
                  _selectedPriority = priority['key'] as String;
                  _currentPage = 1;
                });
                _loadTickets();
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
                decoration: BoxDecoration(
                  color: isSelected 
                    ? (priority['color'] as Color).withValues(alpha: 0.1)
                    : AppColors.background,
                  borderRadius: BorderRadius.circular(20.r),
                  border: Border.all(
                    color: isSelected 
                      ? priority['color'] as Color
                      : AppColors.onSurface.withValues(alpha: 0.2),
                    width: isSelected ? 2 : 1,
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      priority['icon'] as IconData,
                      size: 16.w,
                      color: isSelected 
                        ? priority['color'] as Color
                        : AppColors.onSurface.withValues(alpha: 0.6),
                    ),
                    SizedBox(width: 4.w),
                    Text(
                      priority['label'] as String,
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
                        color: isSelected 
                          ? priority['color'] as Color
                          : AppColors.onSurface.withValues(alpha: 0.7),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ],
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

  Widget _buildTicketsSliver() {
    return BlocBuilder<TicketBloc, TicketState>(
      builder: (context, state) {
        if (state is TicketLoadingState) {
          return SliverToBoxAdapter(
            child: Container(
              height: 200.h,
              margin: EdgeInsets.all(16.w),
              child: const Center(
                child: LoadingWidget(message: 'Loading tickets...'),
              ),
            ),
          );
        }

        if (state is TicketErrorState) {
          return SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.all(16.w),
              child: _buildErrorState(state.failure.message),
            ),
          );
        }

        if (state is TicketLoadedState) {
          return _buildTicketsSliverList(state.tickets);
        }

        return SliverToBoxAdapter(
          child: Container(
            margin: EdgeInsets.all(16.w),
            child: _buildEmptyState(),
          ),
        );
      },
    );
  }

  Widget _buildTicketsSliverList(TicketListResponse tickets) {
    final allTickets = <dynamic>[];
    
    // Use allTickets from the API response if available, otherwise combine from groups
    if (tickets.data.allTickets.isNotEmpty) {
      allTickets.addAll(tickets.data.allTickets);
    } else {
      // Fallback to combining from groups
      allTickets.addAll(tickets.data.tickets.opened);
      allTickets.addAll(tickets.data.tickets.pending);
      allTickets.addAll(tickets.data.tickets.closed);
    }

    if (allTickets.isEmpty) {
      return SliverToBoxAdapter(
        child: Container(
          margin: EdgeInsets.all(16.w),
          child: _buildEmptyState(),
        ),
      );
    }

    return SliverPadding(
      padding: EdgeInsets.only(
        left: 16.w,
        right: 16.w,
        top: 16.h,
        bottom: 110.h, // Bottom padding for FAB + overflow safety margin
      ),
      sliver: SliverList.separated(
        itemCount: allTickets.length,
        separatorBuilder: (context, index) => SizedBox(height: 12.h),
        itemBuilder: (context, index) {
          final ticket = allTickets[index];
          return Container(
            decoration: BoxDecoration(
              color: AppColors.surface,
              borderRadius: BorderRadius.circular(16.r),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.05),
                  blurRadius: 10,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: TicketCard(
              ticket: ticket,
              onTap: () => _showTicketDetail(ticket),
              onStatusUpdate: (status) => _updateTicketStatus(ticket.id, status),
              onDelete: () => _deleteTicket(ticket.id),
            ),
          );
        },
      ),
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

  Widget _buildTicketsList(TicketListResponse tickets, bool isMobile) {
    final allTickets = <dynamic>[];
    
    // Use allTickets from the API response if available, otherwise combine from groups
    if (tickets.data.allTickets.isNotEmpty) {
      allTickets.addAll(tickets.data.allTickets);
    } else {
      // Fallback to combining from groups
      allTickets.addAll(tickets.data.tickets.opened);
      allTickets.addAll(tickets.data.tickets.pending);
      allTickets.addAll(tickets.data.tickets.closed);
    }

    if (allTickets.isEmpty) {
      return _buildEmptyState();
    }

    if (isMobile) {
      return ListView.separated(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        itemCount: allTickets.length,
        separatorBuilder: (context, index) => SizedBox(height: 12.h),
        itemBuilder: (context, index) {
          final ticket = allTickets[index];
          return Container(
            decoration: BoxDecoration(
              color: AppColors.surface,
              borderRadius: BorderRadius.circular(16.r),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.05),
                  blurRadius: 10,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: TicketCard(
              ticket: ticket,
              onTap: () => _showTicketDetail(ticket),
              onStatusUpdate: (status) => _updateTicketStatus(ticket.id, status),
              onDelete: () => _deleteTicket(ticket.id),
            ),
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
          TicketEvent.updateTicket(
            id: ticketId,
            request: TicketUpdateRequest(status: status),
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

  int _getTotalTickets() {
    // This would typically come from the bloc state
    // For now, return a placeholder
    return 0;
  }

  void _clearFilters() {
    setState(() {
      _selectedFilter = 'all';
      _selectedPriority = 'all';
      _currentPage = 1;
    });
    _loadTickets();
  }
}