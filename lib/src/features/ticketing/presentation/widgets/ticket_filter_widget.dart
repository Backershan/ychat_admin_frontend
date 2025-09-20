import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:y_chat_admin/src/core/constants/constants.dart';
import 'package:y_chat_admin/src/core/utils/responsive.dart';

class TicketFilterWidget extends StatefulWidget {
  final String? selectedCategory;
  final String? selectedStatus;
  final String? selectedPriority;
  final String? searchQuery;
  final String? sortBy;
  final String? sortOrder;
  final Function(String? category)? onCategoryChanged;
  final Function(String? status)? onStatusChanged;
  final Function(String? priority)? onPriorityChanged;
  final Function(String? search)? onSearchChanged;
  final Function(String? sortBy)? onSortByChanged;
  final Function(String? sortOrder)? onSortOrderChanged;
  final VoidCallback? onClearFilters;

  const TicketFilterWidget({
    super.key,
    this.selectedCategory,
    this.selectedStatus,
    this.selectedPriority,
    this.searchQuery,
    this.sortBy,
    this.sortOrder,
    this.onCategoryChanged,
    this.onStatusChanged,
    this.onPriorityChanged,
    this.onSearchChanged,
    this.onSortByChanged,
    this.onSortOrderChanged,
    this.onClearFilters,
  });

  @override
  State<TicketFilterWidget> createState() => _TicketFilterWidgetState();
}

class _TicketFilterWidgetState extends State<TicketFilterWidget> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _searchController.text = widget.searchQuery ?? '';
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: AppColors.border.withValues(alpha: 0.2)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeader(),
          SizedBox(height: 16.h),
          _buildFilters(),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      children: [
        Icon(
          Icons.filter_list,
          color: AppColors.primary,
          size: 24.r,
        ),
        SizedBox(width: 8.w),
        Text(
          'Filters',
          style: TextStyle(
            fontSize: WebResponsive.getWebFontSize(18, context),
            fontWeight: FontWeight.w600,
            color: AppColors.textPrimary,
          ),
        ),
        const Spacer(),
        if (widget.onClearFilters != null)
          TextButton.icon(
            onPressed: widget.onClearFilters,
            icon: Icon(
              Icons.clear,
              size: 16.r,
              color: AppColors.textSecondary,
            ),
            label: Text(
              'Clear',
              style: TextStyle(
                fontSize: WebResponsive.getWebFontSize(14, context),
                color: AppColors.textSecondary,
              ),
            ),
          ),
      ],
    );
  }

  Widget _buildFilters() {
    return Wrap(
      spacing: 16.w,
      runSpacing: 16.h,
      children: [
        _buildSearchField(),
        _buildCategoryFilter(),
        _buildStatusFilter(),
        _buildPriorityFilter(),
        _buildSortByFilter(),
        _buildSortOrderFilter(),
      ],
    );
  }

  Widget _buildSearchField() {
    return SizedBox(
      width: 300.w,
      child: TextField(
        controller: _searchController,
        decoration: InputDecoration(
          hintText: 'Search tickets...',
          prefixIcon: Icon(
            Icons.search,
            color: AppColors.textSecondary,
            size: 20.r,
          ),
          suffixIcon: _searchController.text.isNotEmpty
              ? IconButton(
                  onPressed: () {
                    _searchController.clear();
                    widget.onSearchChanged?.call(null);
                  },
                  icon: Icon(
                    Icons.clear,
                    color: AppColors.textSecondary,
                    size: 20.r,
                  ),
                )
              : null,
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
            borderSide: BorderSide(color: AppColors.primary, width: 2),
          ),
        ),
        onChanged: (value) {
          widget.onSearchChanged?.call(value.isEmpty ? null : value);
        },
      ),
    );
  }

  Widget _buildCategoryFilter() {
    return _buildDropdown(
      value: widget.selectedCategory,
      hint: 'Category',
      items: const [
        DropdownMenuItem(value: null, child: Text('All Categories')),
        DropdownMenuItem(value: 'technical', child: Text('Technical')),
        DropdownMenuItem(value: 'billing', child: Text('Billing')),
        DropdownMenuItem(value: 'general', child: Text('General')),
        DropdownMenuItem(value: 'feature_request', child: Text('Feature Request')),
      ],
      onChanged: widget.onCategoryChanged,
    );
  }

  Widget _buildStatusFilter() {
    return _buildDropdown(
      value: widget.selectedStatus,
      hint: 'Status',
      items: const [
        DropdownMenuItem(value: null, child: Text('All Status')),
        DropdownMenuItem(value: 'opened', child: Text('Opened')),
        DropdownMenuItem(value: 'pending', child: Text('Pending')),
        DropdownMenuItem(value: 'closed', child: Text('Closed')),
      ],
      onChanged: widget.onStatusChanged,
    );
  }

  Widget _buildPriorityFilter() {
    return _buildDropdown(
      value: widget.selectedPriority,
      hint: 'Priority',
      items: const [
        DropdownMenuItem(value: null, child: Text('All Priority')),
        DropdownMenuItem(value: 'low', child: Text('Low')),
        DropdownMenuItem(value: 'medium', child: Text('Medium')),
        DropdownMenuItem(value: 'high', child: Text('High')),
        DropdownMenuItem(value: 'urgent', child: Text('Urgent')),
      ],
      onChanged: widget.onPriorityChanged,
    );
  }

  Widget _buildSortByFilter() {
    return _buildDropdown(
      value: widget.sortBy,
      hint: 'Sort By',
      items: const [
        DropdownMenuItem(value: null, child: Text('Default')),
        DropdownMenuItem(value: 'created_at', child: Text('Created Date')),
        DropdownMenuItem(value: 'updated_at', child: Text('Updated Date')),
        DropdownMenuItem(value: 'priority', child: Text('Priority')),
        DropdownMenuItem(value: 'status', child: Text('Status')),
        DropdownMenuItem(value: 'title', child: Text('Title')),
      ],
      onChanged: widget.onSortByChanged,
    );
  }

  Widget _buildSortOrderFilter() {
    return _buildDropdown(
      value: widget.sortOrder,
      hint: 'Order',
      items: const [
        DropdownMenuItem(value: null, child: Text('Default')),
        DropdownMenuItem(value: 'asc', child: Text('Ascending')),
        DropdownMenuItem(value: 'desc', child: Text('Descending')),
      ],
      onChanged: widget.onSortOrderChanged,
    );
  }

  Widget _buildDropdown({
    required String? value,
    required String hint,
    required List<DropdownMenuItem<String?>> items,
    required Function(String?)? onChanged,
  }) {
    return Container(
      width: 150.w,
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.border),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String?>(
          value: value,
          hint: Text(
            hint,
            style: TextStyle(
              fontSize: WebResponsive.getWebFontSize(14, context),
              color: AppColors.textSecondary,
            ),
          ),
          isExpanded: true,
          items: items,
          onChanged: onChanged,
          style: TextStyle(
            fontSize: WebResponsive.getWebFontSize(14, context),
            color: AppColors.textPrimary,
          ),
        ),
      ),
    );
  }
}
