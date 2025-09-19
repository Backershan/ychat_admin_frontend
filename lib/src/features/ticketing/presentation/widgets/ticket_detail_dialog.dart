import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:y_chat_admin/src/features/ticketing/presentation/bloc/ticket_bloc.dart';
import 'package:y_chat_admin/src/features/ticketing/presentation/bloc/ticket_event.dart';
import 'package:y_chat_admin/src/features/ticketing/presentation/bloc/ticket_state.dart';
import 'package:y_chat_admin/src/features/ticketing/domain/entities/ticket_entity.dart';
import '../../../../core/constants/constants.dart';

class TicketDetailDialog extends StatefulWidget {
  final TicketEntity ticket;
  final VoidCallback onTicketUpdated;

  const TicketDetailDialog({
    super.key,
    required this.ticket,
    required this.onTicketUpdated,
  });

  @override
  State<TicketDetailDialog> createState() => _TicketDetailDialogState();
}

class _TicketDetailDialogState extends State<TicketDetailDialog> {
  final _replyController = TextEditingController();
  String _selectedStatus = '';

  @override
  void initState() {
    super.initState();
    _selectedStatus = widget.ticket.status;
  }

  @override
  void dispose() {
    _replyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<TicketBloc, TicketState>(
      listener: (context, state) {
        if (state is TicketUpdatedState) {
          widget.onTicketUpdated();
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Ticket updated successfully'),
              backgroundColor: Colors.green,
            ),
          );
        } else if (state is TicketErrorState) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.failure.message),
              backgroundColor: Colors.red,
            ),
          );
        }
      },
      child: Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Container(
          width: 600.w,
          height: 600.h,
          padding: EdgeInsets.all(24.w),
          child: Column(
            children: [
              _buildHeader(),
              SizedBox(height: 16.h),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildTicketInfo(),
                      SizedBox(height: 24.h),
                      _buildReplies(),
                      SizedBox(height: 24.h),
                      _buildAddReply(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      children: [
        Icon(
          Icons.support_agent,
          size: 24.w,
          color: AppColors.primary,
        ),
        SizedBox(width: 12.w),
        Expanded(
          child: Text(
            widget.ticket.title,
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.onBackground,
            ),
          ),
        ),
        _buildStatusDropdown(),
        SizedBox(width: 12.w),
        IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(Icons.close),
        ),
      ],
    );
  }

  Widget _buildStatusDropdown() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
      decoration: BoxDecoration(
        color: _getStatusColor(_selectedStatus).withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(
          color: _getStatusColor(_selectedStatus),
          width: 1,
        ),
      ),
      child: DropdownButton<String>(
        value: _selectedStatus,
        underline: const SizedBox(),
        items: const [
          DropdownMenuItem(value: 'opened', child: Text('Opened')),
          DropdownMenuItem(value: 'pending', child: Text('Pending')),
          DropdownMenuItem(value: 'closed', child: Text('Closed')),
        ],
        onChanged: (value) {
          if (value != null) {
            setState(() {
              _selectedStatus = value;
            });
            _updateTicketStatus(value);
          }
        },
      ),
    );
  }

  Widget _buildTicketInfo() {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(
          color: AppColors.onBackground.withValues(alpha: 0.1),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              _buildPriorityChip(),
              SizedBox(width: 8.w),
              _buildDateChip(),
            ],
          ),
          SizedBox(height: 12.h),
          Text(
            'Description',
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.onBackground,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            widget.ticket.description,
            style: TextStyle(
              fontSize: 14.sp,
              color: AppColors.onBackground.withValues(alpha: 0.7),
              height: 1.4,
            ),
          ),
          SizedBox(height: 16.h),
          _buildUserInfo(),
          if (widget.ticket.attachments.isNotEmpty) ...[
            SizedBox(height: 16.h),
            _buildAttachments(),
          ],
        ],
      ),
    );
  }

  Widget _buildPriorityChip() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: _getPriorityColor(widget.ticket.priority).withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Text(
        widget.ticket.priority.toUpperCase(),
        style: TextStyle(
          fontSize: 11.sp,
          fontWeight: FontWeight.w600,
          color: _getPriorityColor(widget.ticket.priority),
        ),
      ),
    );
  }

  Widget _buildDateChip() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: AppColors.onBackground.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Text(
        _formatDate(widget.ticket.createdAt),
        style: TextStyle(
          fontSize: 11.sp,
          fontWeight: FontWeight.w600,
          color: AppColors.onBackground.withValues(alpha: 0.7),
        ),
      ),
    );
  }

  Widget _buildUserInfo() {
    return Row(
      children: [
        CircleAvatar(
          radius: 20.r,
          backgroundColor: AppColors.primary.withValues(alpha: 0.1),
          child: Text(
            widget.ticket.user.firstname.isNotEmpty 
                ? widget.ticket.user.firstname[0].toUpperCase()
                : 'U',
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.primary,
            ),
          ),
        ),
        SizedBox(width: 12.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.ticket.user.firstname,
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.onBackground,
                ),
              ),
              Text(
                widget.ticket.user.email,
                style: TextStyle(
                  fontSize: 12.sp,
                  color: AppColors.onBackground.withValues(alpha: 0.6),
                ),
              ),
              if (widget.ticket.user.phone != null)
                Text(
                  widget.ticket.user.phone!,
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: AppColors.onBackground.withValues(alpha: 0.6),
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildAttachments() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Attachments',
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
          children: widget.ticket.attachments.map((attachment) {
            return Container(
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
              decoration: BoxDecoration(
                color: AppColors.secondary.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    _getAttachmentIcon(attachment.type),
                    size: 14.w,
                    color: AppColors.secondary,
                  ),
                  SizedBox(width: 4.w),
                  Text(
                    attachment.filename ?? 'Attachment',
                    style: TextStyle(
                      fontSize: 11.sp,
                      color: AppColors.secondary,
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ],
    );
  }

  Widget _buildReplies() {
    if (widget.ticket.replies.isEmpty) {
      return const SizedBox.shrink();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Replies',
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.onBackground,
          ),
        ),
        SizedBox(height: 12.h),
        ...widget.ticket.replies.map((reply) => _buildReplyItem(reply)),
      ],
    );
  }

  Widget _buildReplyItem(TicketReplyEntity reply) {
    return Container(
      margin: EdgeInsets.only(bottom: 12.h),
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(
          color: AppColors.onBackground.withValues(alpha: 0.1),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 2.h),
                decoration: BoxDecoration(
                  color: reply.from == 'user' 
                      ? AppColors.primary.withValues(alpha: 0.1)
                      : AppColors.secondary.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(4.r),
                ),
                child: Text(
                  reply.from.toUpperCase(),
                  style: TextStyle(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w600,
                    color: reply.from == 'user' ? AppColors.primary : AppColors.secondary,
                  ),
                ),
              ),
              SizedBox(width: 8.w),
              Text(
                _formatDate(reply.createdAt),
                style: TextStyle(
                  fontSize: 11.sp,
                  color: AppColors.onBackground.withValues(alpha: 0.6),
                ),
              ),
            ],
          ),
          SizedBox(height: 8.h),
          Text(
            reply.text,
            style: TextStyle(
              fontSize: 13.sp,
              color: AppColors.onBackground.withValues(alpha: 0.8),
              height: 1.4,
            ),
          ),
          if (reply.image != null) ...[
            SizedBox(height: 8.h),
            Container(
              height: 100.h,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                image: DecorationImage(
                  image: NetworkImage(reply.image!),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildAddReply() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Add Reply',
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.onBackground,
          ),
        ),
        SizedBox(height: 12.h),
        TextField(
          controller: _replyController,
          decoration: InputDecoration(
            hintText: 'Type your reply...',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
            ),
            suffixIcon: IconButton(
              onPressed: _addReply,
              icon: const Icon(Icons.send),
            ),
          ),
          maxLines: 3,
        ),
      ],
    );
  }

  void _updateTicketStatus(String status) {
    context.read<TicketBloc>().add(
          TicketEvent.updateTicketStatus(
            id: widget.ticket.id,
            status: status,
          ),
        );
  }

  void _addReply() {
    if (_replyController.text.isNotEmpty) {
      context.read<TicketBloc>().add(
            TicketEvent.addReplyToTicket(
              id: widget.ticket.id,
              text: _replyController.text,
              from: 'super_admin',
            ),
          );
      _replyController.clear();
    }
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

  IconData _getAttachmentIcon(String type) {
    switch (type.toLowerCase()) {
      case 'image':
        return Icons.image;
      case 'pdf':
        return Icons.picture_as_pdf;
      case 'document':
        return Icons.description;
      default:
        return Icons.attach_file;
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
