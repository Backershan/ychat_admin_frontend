import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:y_chat_admin/src/core/constants/constants.dart';
import 'package:y_chat_admin/src/core/utils/responsive.dart';
import 'package:y_chat_admin/src/features/ticketing/data/models/ticket_api_models.dart';
import 'package:y_chat_admin/src/features/ticketing/presentation/bloc/ticket_bloc.dart';
import 'package:y_chat_admin/src/features/ticketing/presentation/bloc/ticket_event.dart';
import 'package:y_chat_admin/src/features/ticketing/presentation/bloc/ticket_state.dart';
import 'package:y_chat_admin/src/features/ticketing/presentation/widgets/ticket_filter_widget.dart';
import 'package:y_chat_admin/src/features/ticketing/presentation/widgets/ticket_list_widget.dart';
import 'package:y_chat_admin/src/features/ticketing/presentation/widgets/ticket_stats_widget.dart';

class TicketingPageNew extends StatefulWidget {
  const TicketingPageNew({super.key});

  @override
  State<TicketingPageNew> createState() => _TicketingPageNewState();
}

class _TicketingPageNewState extends State<TicketingPageNew> {
  String? _selectedCategory;
  String? _selectedStatus;
  String? _selectedPriority;
  String? _searchQuery;
  String? _sortBy;
  String? _sortOrder;
  int _currentPage = 1;
  final int _limit = 20;

  @override
  void initState() {
    super.initState();
    _loadInitialData();
  }

  void _loadInitialData() {
    context.read<TicketBloc>().add(const TicketEvent.getTickets());
    context.read<TicketBloc>().add(const TicketEvent.getTicketStats());
  }

  void _applyFilters() {
    context.read<TicketBloc>().add(TicketEvent.getTickets(
      category: _selectedCategory,
      status: _selectedStatus,
      priority: _selectedPriority,
      search: _searchQuery,
      sortBy: _sortBy,
      sortOrder: _sortOrder,
      page: _currentPage,
      limit: _limit,
    ));
  }

  void _clearFilters() {
    setState(() {
      _selectedCategory = null;
      _selectedStatus = null;
      _selectedPriority = null;
      _searchQuery = null;
      _sortBy = null;
      _sortOrder = null;
      _currentPage = 1;
    });
    _applyFilters();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: BlocConsumer<TicketBloc, TicketState>(
        listener: (context, state) {
          state.whenOrNull(
            error: (failure) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(failure.message),
                  backgroundColor: AppColors.error,
                ),
              );
            },
          );
        },
        builder: (context, state) {
          return _buildBody(state);
        },
      ),
    );
  }

  Widget _buildBody(TicketState state) {
    return state.when(
      initial: () => _buildLoadingState(),
      loading: () => _buildLoadingState(),
      loaded: (tickets, stats) => _buildLoadedState(tickets, stats),
      ticketDetailLoaded: (ticket) => _buildTicketDetailState(ticket),
      ticketCreated: (ticket) => _buildLoadingState(),
      ticketUpdated: (ticket) => _buildLoadingState(),
      ticketDeleted: () => _buildLoadingState(),
      statsLoaded: (stats) => _buildLoadingState(),
      error: (failure) => _buildErrorState(failure),
    );
  }

  Widget _buildLoadingState() {
    return Padding(
      padding: WebResponsive.getWebPadding(context),
      
        child: Column(
        children: [
          _buildHeader(),
          SizedBox(height: 24.h),
          _buildStatsSection(isLoading: true),
          SizedBox(height: 24.h),
          _buildFiltersSection(),
          SizedBox(height: 24.h),
          Expanded(child: _buildTicketsSection(isLoading: true)),
        ],
      ),
    );
  }

  Widget _buildLoadedState(TicketListResponse? tickets, TicketStatsResponse? stats) {
    return Padding(
      padding: WebResponsive.getWebPadding(context),
      child: Column(
        children: [
          _buildHeader(),
          SizedBox(height: 24.h),
          _buildStatsSection(stats: stats?.data, isLoading: false),
          SizedBox(height: 24.h),
          _buildFiltersSection(),
          SizedBox(height: 24.h),
          Expanded(
            child: tickets != null
                ? _buildTicketsSection(tickets: tickets.data.tickets, isLoading: false)
                : _buildTicketsSection(isLoading: true),
          ),
        ],
      ),
    );
  }

  Widget _buildTicketDetailState(ticket) {
    // TODO: Implement ticket detail view
    return Center(
      child: Text(
        'Ticket Detail View',
        style: TextStyle(
          fontSize: WebResponsive.getWebFontSize(24, context),
          color: AppColors.textPrimary,
        ),
      ),
    );
  }

  Widget _buildErrorState(failure) {
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
              fontSize: WebResponsive.getWebFontSize(24, context),
              color: AppColors.textPrimary,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            failure.message,
            style: TextStyle(
              fontSize: WebResponsive.getWebFontSize(16, context),
              color: AppColors.textSecondary,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 24.h),
          ElevatedButton(
            onPressed: _loadInitialData,
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.r),
              ),
            ),
            child: Text(
              'Retry',
              style: TextStyle(
                fontSize: WebResponsive.getWebFontSize(16, context),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      children: [
      
      
        const Spacer(),
        ElevatedButton.icon(
          onPressed: () {
            // TODO: Implement create ticket
          },
          icon: Icon(
            Icons.add,
            size: 20.r,
            color: Colors.white,
          ),
          label: Text(
            'Create Ticket',
            style: TextStyle(
              fontSize: WebResponsive.getWebFontSize(16, context),
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.r),
            ),
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
          ),
        ),
      ],
    );
  }

  Widget _buildStatsSection({
    TicketStatsData? stats,
    required bool isLoading,
  }) {
    if (stats == null && !isLoading) return const SizedBox.shrink();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Overview',
          style: TextStyle(
            fontSize: WebResponsive.getWebFontSize(20, context),
            fontWeight: FontWeight.w600,
            color: AppColors.textPrimary,
          ),
        ),
        SizedBox(height: 16.h),
        SizedBox(
          height: 120.h,
          child: isLoading
              ? TicketStatsWidget(
                  stats: TicketStatsData(
                    total: 0,
                    opened: 0,
                    pending: 0,
                    closed: 0,
                    highPriority: 0,
                    urgent: 0,
                  ),
                  isLoading: true,
                )
              : TicketStatsWidget(stats: stats!),
        ),
      ],
    );
  }

  Widget _buildFiltersSection() {
    return TicketFilterWidget(
      selectedCategory: _selectedCategory,
      selectedStatus: _selectedStatus,
      selectedPriority: _selectedPriority,
      searchQuery: _searchQuery,
      sortBy: _sortBy,
      sortOrder: _sortOrder,
      onCategoryChanged: (category) {
        setState(() {
          _selectedCategory = category;
          _currentPage = 1;
        });
        _applyFilters();
      },
      onStatusChanged: (status) {
        setState(() {
          _selectedStatus = status;
          _currentPage = 1;
        });
        _applyFilters();
      },
      onPriorityChanged: (priority) {
        setState(() {
          _selectedPriority = priority;
          _currentPage = 1;
        });
        _applyFilters();
      },
      onSearchChanged: (search) {
        setState(() {
          _searchQuery = search;
          _currentPage = 1;
        });
        _applyFilters();
      },
      onSortByChanged: (sortBy) {
        setState(() {
          _sortBy = sortBy;
        });
        _applyFilters();
      },
      onSortOrderChanged: (sortOrder) {
        setState(() {
          _sortOrder = sortOrder;
        });
        _applyFilters();
      },
      onClearFilters: _clearFilters,
    );
  }

  Widget _buildTicketsSection({
    TicketGroups? tickets,
    required bool isLoading,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Tickets',
          style: TextStyle(
            fontSize: WebResponsive.getWebFontSize(20, context),
            fontWeight: FontWeight.w600,
            color: AppColors.textPrimary,
          ),
        ),
        SizedBox(height: 16.h),
        Expanded(
          child: isLoading
              ? TicketListWidget(
                  tickets: const TicketGroups(
                    opened: [],
                    pending: [],
                    closed: [],
                  ),
                  isLoading: true,
                )
              : TicketListWidget(
                  tickets: tickets!,
                  onTicketTap: (ticket) {
                    // TODO: Navigate to ticket detail
                  },
                  onEditTicket: (ticket) {
                    // TODO: Show edit ticket dialog
                  },
                  onDeleteTicket: (ticket) {
                    // TODO: Show delete confirmation dialog
                  },
                ),
        ),
      ],
    );
  }
}
