import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:y_chat_admin/src/core/constants/constants.dart';
import 'package:y_chat_admin/src/core/utils/responsive.dart';
import 'package:y_chat_admin/src/features/ticketing/data/models/ticket_model.dart';

class TicketDetailWidget extends StatelessWidget {
  final TicketModel ticket;
  final List<TicketReplyModel> replies;
  final bool isLoading;
  final Function(String text, String? image)? onReplyAdded;

  const TicketDetailWidget({
    super.key,
    required this.ticket,
    required this.replies,
    this.isLoading = false,
    this.onReplyAdded,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTicketHeader(context),
          SizedBox(height: 24.h),
          _buildTicketContent(context),
          SizedBox(height: 24.h),
          _buildRepliesSection(context),
        ],
      ),
    );
  }

  Widget _buildTicketHeader(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.w),
      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: AppColors.border.withValues(alpha: 0.2)),
        boxShadow: [
          BoxShadow(
            color: AppColors.shadow.withValues(alpha: 0.08),
            blurRadius: 12.r,
            offset: Offset(0, 4.h),
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
                  ticket.title,
                  style: TextStyle(
                    fontSize: WebResponsive.getWebFontSize(24, context),
                    fontWeight: FontWeight.bold,
                    color: AppColors.textPrimary,
                  ),
                ),
              ),
              _buildStatusChip(context, ticket.status),
            ],
          ),
          SizedBox(height: 12.h),
          Row(
            children: [
              _buildInfoChip(
                context,
                icon: Icons.person,
                label: 'User',
                value: ticket.user.firstname,
              ),
              SizedBox(width: 12.w),
              _buildInfoChip(
                context,
                icon: Icons.priority_high,
                label: 'Priority',
                value: ticket.priority.toUpperCase(),
              ),
              SizedBox(width: 12.w),
              _buildInfoChip(
                context,
                icon: Icons.access_time,
                label: 'Created',
                value: _formatDate(ticket.createdAt),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTicketContent(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.w),
      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: AppColors.border.withValues(alpha: 0.2)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Description',
            style: TextStyle(
              fontSize: WebResponsive.getWebFontSize(18, context),
              fontWeight: FontWeight.w600,
              color: AppColors.textPrimary,
            ),
          ),
          SizedBox(height: 12.h),
          Text(
            ticket.description,
            style: TextStyle(
              fontSize: WebResponsive.getWebFontSize(16, context),
              color: AppColors.textPrimary,
              height: 1.5,
            ),
          ),
          if (ticket.attachments.isNotEmpty) ...[
            SizedBox(height: 20.h),
            Text(
              'Attachments',
              style: TextStyle(
                fontSize: WebResponsive.getWebFontSize(16, context),
                fontWeight: FontWeight.w600,
                color: AppColors.textPrimary,
              ),
            ),
            SizedBox(height: 12.h),
            _buildAttachmentsList(context),
          ],
        ],
      ),
    );
  }

  Widget _buildAttachmentsList(BuildContext context) {
    return Wrap(
      spacing: 8.w,
      runSpacing: 8.h,
      children: ticket.attachments.map((attachment) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
          decoration: BoxDecoration(
            color: AppColors.background,
            borderRadius: BorderRadius.circular(8.r),
            border: Border.all(color: AppColors.border),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                _getAttachmentIcon(attachment.filename ?? 'file'),
                size: 16.r,
                color: AppColors.primary,
              ),
              SizedBox(width: 8.w),
              Text(
                attachment.filename ?? 'Unknown file',
                style: TextStyle(
                  fontSize: WebResponsive.getWebFontSize(14, context),
                  color: AppColors.textPrimary,
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }

  Widget _buildRepliesSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.w),
      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: AppColors.border.withValues(alpha: 0.2)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Replies (${replies.length})',
            style: TextStyle(
              fontSize: WebResponsive.getWebFontSize(18, context),
              fontWeight: FontWeight.w600,
              color: AppColors.textPrimary,
            ),
          ),
          SizedBox(height: 16.h),
          if (replies.isEmpty)
            _buildEmptyReplies(context)
          else
            _buildRepliesList(context),
          SizedBox(height: 20.h),
          _buildReplyInput(context),
        ],
      ),
    );
  }

  Widget _buildEmptyReplies(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Icon(
            Icons.chat_bubble_outline,
            size: 48.r,
            color: AppColors.textSecondary.withValues(alpha: 0.5),
          ),
          SizedBox(height: 12.h),
          Text(
            'No replies yet',
            style: TextStyle(
              fontSize: WebResponsive.getWebFontSize(16, context),
              color: AppColors.textSecondary,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRepliesList(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: replies.length,
      separatorBuilder: (context, index) => SizedBox(height: 16.h),
      itemBuilder: (context, index) {
        final reply = replies[index];
        return _buildReplyItem(context, reply);
      },
    );
  }

  Widget _buildReplyItem(BuildContext context, TicketReplyModel reply) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: AppColors.border.withValues(alpha: 0.2)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 16.r,
                backgroundColor: AppColors.primary,
                child: Text(
                  reply.from[0].toUpperCase(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: WebResponsive.getWebFontSize(12, context),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(width: 8.w),
              Text(
                reply.from,
                style: TextStyle(
                  fontSize: WebResponsive.getWebFontSize(14, context),
                  fontWeight: FontWeight.w600,
                  color: AppColors.textPrimary,
                ),
              ),
              const Spacer(),
              Text(
                _formatDate(reply.createdAt),
                style: TextStyle(
                  fontSize: WebResponsive.getWebFontSize(12, context),
                  color: AppColors.textSecondary,
                ),
              ),
            ],
          ),
          SizedBox(height: 8.h),
          Text(
            reply.text,
            style: TextStyle(
              fontSize: WebResponsive.getWebFontSize(14, context),
              color: AppColors.textPrimary,
              height: 1.4,
            ),
          ),
          if (reply.image != null) ...[
            SizedBox(height: 12.h),
            ClipRRect(
              borderRadius: BorderRadius.circular(8.r),
              child: Image.network(
                reply.image!,
                width: 200.w,
                height: 150.h,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    width: 200.w,
                    height: 150.h,
                    color: AppColors.border.withValues(alpha: 0.3),
                    child: Icon(
                      Icons.broken_image,
                      color: AppColors.textSecondary,
                      size: 32.r,
                    ),
                  );
                },
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildReplyInput(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: AppColors.border),
      ),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: 'Add a reply...',
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
            maxLines: 3,
            onSubmitted: (text) {
              if (text.trim().isNotEmpty) {
                onReplyAdded?.call(text.trim(), null);
              }
            },
          ),
          SizedBox(height: 12.h),
          Row(
            children: [
              IconButton(
                onPressed: () {
                  // TODO: Implement image picker
                },
                icon: Icon(
                  Icons.attach_file,
                  color: AppColors.textSecondary,
                  size: 20.r,
                ),
                tooltip: 'Attach image',
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () {
                  // TODO: Implement send reply
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                ),
                child: Text(
                  'Send Reply',
                  style: TextStyle(
                    fontSize: WebResponsive.getWebFontSize(14, context),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildStatusChip(BuildContext context, String status) {
    Color backgroundColor;
    Color textColor;
    switch (status.toLowerCase()) {
      case 'opened':
        backgroundColor = AppColors.info.withValues(alpha: 0.1);
        textColor = AppColors.info;
        break;
      case 'pending':
        backgroundColor = AppColors.warning.withValues(alpha: 0.1);
        textColor = AppColors.warning;
        break;
      case 'closed':
        backgroundColor = AppColors.success.withValues(alpha: 0.1);
        textColor = AppColors.success;
        break;
      default:
        backgroundColor = AppColors.textSecondary.withValues(alpha: 0.1);
        textColor = AppColors.textSecondary;
    }

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Text(
        status.toUpperCase(),
        style: TextStyle(
          fontSize: WebResponsive.getWebFontSize(12, context),
          color: textColor,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  Widget _buildInfoChip(BuildContext context, {
    required IconData icon,
    required String label,
    required String value,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
      decoration: BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: AppColors.border),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 16.r,
            color: AppColors.textSecondary,
          ),
          SizedBox(width: 8.w),
          Text(
            '$label: ',
            style: TextStyle(
              fontSize: WebResponsive.getWebFontSize(12, context),
              color: AppColors.textSecondary,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: WebResponsive.getWebFontSize(12, context),
              color: AppColors.textPrimary,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  IconData _getAttachmentIcon(String fileName) {
    final extension = fileName.split('.').last.toLowerCase();
    switch (extension) {
      case 'pdf':
        return Icons.picture_as_pdf;
      case 'doc':
      case 'docx':
        return Icons.description;
      case 'jpg':
      case 'jpeg':
      case 'png':
      case 'gif':
        return Icons.image;
      case 'zip':
      case 'rar':
        return Icons.archive;
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
