// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter/services.dart';
// import '../../../../core/constants/constants.dart';
// import '../../domain/entities/user_entity.dart';

// class IpAddressDialog extends StatelessWidget {
//   final UserEntity user;

//   const IpAddressDialog({
//     super.key,
//     required this.user,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Dialog(
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(20.r),
//       ),
//       child: Container(
//         padding: EdgeInsets.all(24.w),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(20.r),
//           gradient: LinearGradient(
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//             colors: [
//               AppColors.surface,
//               AppColors.surface.withValues(alpha: 0.95),
//             ],
//           ),
//         ),
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             // Header
//             Row(
//               children: [
//                 Container(
//                   padding: EdgeInsets.all(12.w),
//                   decoration: BoxDecoration(
//                     color: AppColors.primary.withValues(alpha: 0.1),
//                     borderRadius: BorderRadius.circular(12.r),
//                   ),
//                   child: Icon(
//                     Icons.location_on,
//                     color: AppColors.primary,
//                     size: 24.w,
//                   ),
//                 ),
//                 SizedBox(width: 16.w),
//                 Expanded(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         'IP Address Information',
//                         style: TextStyle(
//                           fontSize: 18.sp,
//                           fontWeight: FontWeight.bold,
//                           color: AppColors.onSurface,
//                         ),
//                       ),
//                       Text(
//                         'User: ${user.name}',
//                         style: TextStyle(
//                           fontSize: 14.sp,
//                           color: AppColors.onSurface.withValues(alpha: 0.6),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
            
//             SizedBox(height: 24.h),
            
//             // IP Address Card
//             Container(
//               width: double.infinity,
//               padding: EdgeInsets.all(20.w),
//               decoration: BoxDecoration(
//                 color: AppColors.primary.withValues(alpha: 0.05),
//                 borderRadius: BorderRadius.circular(16.r),
//                 border: Border.all(
//                   color: AppColors.primary.withValues(alpha: 0.2),
//                   width: 1,
//                 ),
//               ),
//               child: Column(
//                 children: [
//                   Icon(
//                     Icons.computer,
//                     size: 32.w,
//                     color: AppColors.primary,
//                   ),
//                   SizedBox(height: 12.h),
//                   Text(
//                     'Current IP Address',
//                     style: TextStyle(
//                       fontSize: 14.sp,
//                       fontWeight: FontWeight.w500,
//                       color: AppColors.onSurface.withValues(alpha: 0.7),
//                     ),
//                   ),
//                   SizedBox(height: 8.h),
//                   Container(
//                     padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
//                     decoration: BoxDecoration(
//                       color: AppColors.background,
//                       borderRadius: BorderRadius.circular(12.r),
//                       border: Border.all(
//                         color: AppColors.primary.withValues(alpha: 0.3),
//                         width: 1,
//                       ),
//                     ),
//                     child: Row(
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         Icon(
//                           Icons.copy,
//                           size: 16.w,
//                           color: AppColors.primary,
//                         ),
//                         SizedBox(width: 8.w),
//                         Text(
//                           user.ipAddress,
//                           style: TextStyle(
//                             fontSize: 16.sp,
//                             fontWeight: FontWeight.w600,
//                             color: AppColors.primary,
//                             fontFamily: 'monospace',
//                           ),
//                         ),
//                         SizedBox(width: 8.w),
//                         InkWell(
//                           onTap: () => _copyToClipboard(context, user.ipAddress),
//                           borderRadius: BorderRadius.circular(6.r),
//                           child: Container(
//                             padding: EdgeInsets.all(4.w),
//                             decoration: BoxDecoration(
//                               color: AppColors.primary.withValues(alpha: 0.1),
//                               borderRadius: BorderRadius.circular(6.r),
//                             ),
//                             child: Icon(
//                               Icons.copy,
//                               size: 14.w,
//                               color: AppColors.primary,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
            
//             SizedBox(height: 20.h),
            
//             // Additional Information
//             if (user.deviceInfo != null) ...[
//               Container(
//                 width: double.infinity,
//                 padding: EdgeInsets.all(16.w),
//                 decoration: BoxDecoration(
//                   color: AppColors.surface,
//                   borderRadius: BorderRadius.circular(12.r),
//                   border: Border.all(
//                     color: AppColors.onSurface.withValues(alpha: 0.1),
//                     width: 1,
//                   ),
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Row(
//                       children: [
//                         Icon(
//                           Icons.device_hub,
//                           size: 16.w,
//                           color: AppColors.onSurface.withValues(alpha: 0.6),
//                         ),
//                         SizedBox(width: 8.w),
//                         Text(
//                           'Device Information',
//                           style: TextStyle(
//                             fontSize: 12.sp,
//                             fontWeight: FontWeight.w600,
//                             color: AppColors.onSurface.withValues(alpha: 0.6),
//                           ),
//                         ),
//                       ],
//                     ),
//                     SizedBox(height: 8.h),
//                     Text(
//                       user.deviceInfo!,
//                       style: TextStyle(
//                         fontSize: 12.sp,
//                         color: AppColors.onSurface.withValues(alpha: 0.8),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(height: 16.h),
//             ],
            
//             // Last Login Information
//             if (user.lastLoginAt != null) ...[
//               Container(
//                 width: double.infinity,
//                 padding: EdgeInsets.all(16.w),
//                 decoration: BoxDecoration(
//                   color: AppColors.surface,
//                   borderRadius: BorderRadius.circular(12.r),
//                   border: Border.all(
//                     color: AppColors.onSurface.withValues(alpha: 0.1),
//                     width: 1,
//                   ),
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Row(
//                       children: [
//                         Icon(
//                           Icons.access_time,
//                           size: 16.w,
//                           color: AppColors.onSurface.withValues(alpha: 0.6),
//                         ),
//                         SizedBox(width: 8.w),
//                         Text(
//                           'Last Login',
//                           style: TextStyle(
//                             fontSize: 12.sp,
//                             fontWeight: FontWeight.w600,
//                             color: AppColors.onSurface.withValues(alpha: 0.6),
//                           ),
//                         ),
//                       ],
//                     ),
//                     SizedBox(height: 8.h),
//                     Text(
//                       _formatDateTime(user.lastLoginAt!),
//                       style: TextStyle(
//                         fontSize: 12.sp,
//                         color: AppColors.onSurface.withValues(alpha: 0.8),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(height: 16.h),
//             ],
            
//             // Close Button
//             SizedBox(
//               width: double.infinity,
//               child: ElevatedButton(
//                 onPressed: () => Navigator.of(context).pop(),
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: AppColors.primary,
//                   foregroundColor: AppColors.onPrimary,
//                   padding: EdgeInsets.symmetric(vertical: 12.h),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(12.r),
//                   ),
//                 ),
//                 child: Text(
//                   'Close',
//                   style: TextStyle(
//                     fontSize: 14.sp,
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   void _copyToClipboard(BuildContext context, String text) {
//     Clipboard.setData(ClipboardData(text: text));
//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(
//         content: Row(
//           children: [
//             Icon(
//               Icons.check_circle,
//               color: Colors.white,
//               size: 16.w,
//             ),
//             SizedBox(width: 8.w),
//             Text('IP address copied to clipboard'),
//           ],
//         ),
//         backgroundColor: Colors.green,
//         duration: const Duration(seconds: 2),
//         behavior: SnackBarBehavior.floating,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(8.r),
//         ),
//       ),
//     );
//   }

//   String _formatDateTime(String dateTimeString) {
//     try {
//       final dateTime = DateTime.parse(dateTimeString);
//       final now = DateTime.now();
//       final difference = now.difference(dateTime);
      
//       if (difference.inDays > 0) {
//         return '${difference.inDays} day${difference.inDays == 1 ? '' : 's'} ago';
//       } else if (difference.inHours > 0) {
//         return '${difference.inHours} hour${difference.inHours == 1 ? '' : 's'} ago';
//       } else if (difference.inMinutes > 0) {
//         return '${difference.inMinutes} minute${difference.inMinutes == 1 ? '' : 's'} ago';
//       } else {
//         return 'Just now';
//       }
//     } catch (e) {
//       return dateTimeString;
//     }
//   }
// }
