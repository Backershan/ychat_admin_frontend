import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:y_chat_admin/src/features/ticketing/domain/entities/ticket_entity.dart';
import '../../../../core/constants/constants.dart';

class TicketCard extends StatelessWidget {
  final TicketEntity ticket;
  final VoidCallback? onTap;
  final Function(String)? onStatusUpdate;
  final VoidCallback? onDelete;

  const TicketCard({
    super.key,
    required this.ticket,
    this.onTap,
    this.onStatusUpdate,
    this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(12.r),
          child: Padding(
            padding: EdgeInsets.all(20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildHeader(),
                SizedBox(height: 12.h),
                _buildDescription(),
                SizedBox(height: 16.h),
                _buildTags(),
                SizedBox(height: 12.h),
                _buildFooter(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      children: [
        Expanded(
          child: Text(
            ticket.title,
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.onBackground,
            ),
          ),
        ),
        _buildStatusChip(),
        SizedBox(width: 8.w),
        PopupMenuButton<String>(
          onSelected: (status) => onStatusUpdate?.call(status),
          itemBuilder: (context) => [
            const PopupMenuItem(
              value: 'opened',
              child: Text('Mark as Opened'),
            ),
            const PopupMenuItem(
              value: 'pending',
              child: Text('Mark as Pending'),
            ),
            const PopupMenuItem(
              value: 'closed',
              child: Text('Mark as Closed'),
            ),
          ],
          child: Icon(
            Icons.more_vert,
            color: AppColors.onBackground.withValues(alpha: 0.6),
          ),
        ),
      ],
    );
  }

  Widget _buildStatusChip() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
      decoration: BoxDecoration(
        color: _getStatusColor(ticket.status).withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(
          color: _getStatusColor(ticket.status),
          width: 1,
        ),
      ),
      child: Text(
        ticket.status.toUpperCase(),
        style: TextStyle(
          fontSize: 12.sp,
          fontWeight: FontWeight.w600,
          color: _getStatusColor(ticket.status),
        ),
      ),
    );
  }

  Widget _buildDescription() {
    return Text(
      ticket.description,
      style: TextStyle(
        fontSize: 14.sp,
        color: AppColors.onBackground.withValues(alpha: 0.7),
        height: 1.4,
      ),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }

  Widget _buildTags() {
    return Row(
      children: [
        _buildPriorityChip(),
        SizedBox(width: 8.w),
        if (ticket.attachments.isNotEmpty) ...[
          _buildAttachmentChip(),
          SizedBox(width: 8.w),
        ],
        if (ticket.replies.isNotEmpty) ...[
          _buildRepliesChip(),
          SizedBox(width: 8.w),
        ],
      ],
    );
  }

  Widget _buildPriorityChip() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: _getPriorityColor(ticket.priority).withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Text(
        ticket.priority.toUpperCase(),
        style: TextStyle(
          fontSize: 11.sp,
          fontWeight: FontWeight.w600,
          color: _getPriorityColor(ticket.priority),
        ),
      ),
    );
  }

  Widget _buildAttachmentChip() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: AppColors.secondary.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.attach_file,
            size: 12.w,
            color: AppColors.secondary,
          ),
          SizedBox(width: 4.w),
          Text(
            '${ticket.attachments.length}',
            style: TextStyle(
              fontSize: 11.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.secondary,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRepliesChip() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: AppColors.primary.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.chat_bubble_outline,
            size: 12.w,
            color: AppColors.primary,
          ),
          SizedBox(width: 4.w),
          Text(
            '${ticket.replies.length}',
            style: TextStyle(
              fontSize: 11.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.primary,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFooter() {
    return Row(
      children: [
        CircleAvatar(
          radius: 16.r,
          backgroundColor: AppColors.primary.withValues(alpha: 0.1),
          child: Text(
            ticket.user.firstname.isNotEmpty 
                ? ticket.user.firstname[0].toUpperCase()
                : 'U',
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.primary,
            ),
          ),
        ),
        SizedBox(width: 8.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                ticket.user.firstname,
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.onBackground,
                ),
              ),
              Text(
                ticket.user.email,
                style: TextStyle(
                  fontSize: 11.sp,
                  color: AppColors.onBackground.withValues(alpha: 0.6),
                ),
              ),
            ],
          ),
        ),
        Text(
          _formatDate(ticket.createdAt),
          style: TextStyle(
            fontSize: 11.sp,
            color: AppColors.onBackground.withValues(alpha: 0.6),
          ),
        ),
        SizedBox(width: 8.w),
        if (onDelete != null)
          IconButton(
            onPressed: onDelete,
            icon: Icon(
              Icons.delete_outline,
              size: 18.w,
              color: Colors.red.withValues(alpha: 0.7),
            ),
          ),
      ],
    );
  }

  Color _getStatusColor(String status) {
    switch (status.toLowerCase()) {
      case 'opened':
        return Colors.orange;
      case 'pending':
        return Colors.blue;
      case 'closed':
        return Colors.green;
      default:
        return Colors.grey;
    }
  }

  Color _getPriorityColor(String priority) {
    switch (priority.toLowerCase()) {
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

  String _formatDate(DateTime date) {
    final now = DateTime.now();
    final difference = now.difference(date);

    if (difference.inDays > 0) {
      return '${difference.inDays}d ago';
    } else if (difference.inHours > 0) {
      return '${difference.inHours}h ago';
    } else if (difference.inMinutes > 0) {
      return '${difference.inMinutes}m ago';
    } else {
      return 'Just now';
    }
  }
}
