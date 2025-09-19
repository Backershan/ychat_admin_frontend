// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:y_chat_admin/src/features/ticketing/presentation/bloc/ticket_bloc.dart';
// import 'package:y_chat_admin/src/features/ticketing/presentation/bloc/ticket_event.dart';
// import 'package:y_chat_admin/src/features/ticketing/presentation/bloc/ticket_state.dart';
// import '../../../../core/constants/constants.dart';

// class CreateTicketDialog extends StatefulWidget {
//   final VoidCallback onTicketCreated;

//   const CreateTicketDialog({
//     super.key,
//     required this.onTicketCreated,
//   });

//   @override
//   State<CreateTicketDialog> createState() => _CreateTicketDialogState();
// }

// class _CreateTicketDialogState extends State<CreateTicketDialog> {
//   final _formKey = GlobalKey<FormState>();
//   final _titleController = TextEditingController();
//   final _descriptionController = TextEditingController();
//   final _userIdController = TextEditingController();
//   String _selectedPriority = 'medium';

//   @override
//   void dispose() {
//     _titleController.dispose();
//     _descriptionController.dispose();
//     _userIdController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return BlocListener<TicketBloc, TicketState>(
//       listener: (context, state) {
//         if (state is TicketCreatedState) {
//           Navigator.of(context).pop();
//           widget.onTicketCreated();
//           ScaffoldMessenger.of(context).showSnackBar(
//             const SnackBar(
//               content: Text('Ticket created successfully'),
//               backgroundColor: Colors.green,
//             ),
//           );r
//         } else if (state is TicketErrorState) {
//           ScaffoldMessenger.of(context).showSnackBar(
//             SnackBar(
//               content: Text(state.failure.message),
//               backgroundColor: Colors.red,
//             ),
//           );
//         }
//       },
//       child: Dialog(
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(16.r),
//         ),
//         child: Container(
//           width: 500.w,
//           padding: EdgeInsets.all(24.w),
//           child: Form(
//             key: _formKey,
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 _buildHeader(),
//                 SizedBox(height: 24.h),
//                 _buildForm(),
//                 SizedBox(height: 24.h),
//                 _buildActions(),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildHeader() {
//     return Row(
//       children: [
//         Icon(
//           Icons.add_circle_outline,
//           size: 24.w,
//           color: AppColors.primary,
//         ),
//         SizedBox(width: 12.w),
//         Text(
//           'Create New Ticket',
//           style: TextStyle(
//             fontSize: 20.sp,
//             fontWeight: FontWeight.w600,
//             color: AppColors.onBackground,
//           ),
//         ),
//         const Spacer(),
//         IconButton(
//           onPressed: () => Navigator.of(context).pop(),
//           icon: const Icon(Icons.close),
//         ),
//       ],
//     );
//   }

//   Widget _buildForm() {
//     return Column(
//       children: [
//         _buildTitleField(),
//         SizedBox(height: 16.h),
//         _buildDescriptionField(),
//         SizedBox(height: 16.h),
//         Row(
//           children: [
//             Expanded(
//               child: _buildPriorityField(),
//             ),
//             SizedBox(width: 16.w),
//             Expanded(
//               child: _buildUserIdField(),
//             ),
//           ],
//         ),
//       ],
//     );
//   }

//   Widget _buildTitleField() {
//     return TextFormField(
//       controller: _titleController,
//       decoration: InputDecoration(
//         labelText: 'Title',
//         hintText: 'Enter ticket title',
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(8.r),
//         ),
//         prefixIcon: const Icon(Icons.title),
//       ),
//       validator: (value) {
//         if (value == null || value.isEmpty) {
//           return 'Please enter a title';
//         }
//         return null;
//       },
//     );
//   }

//   Widget _buildDescriptionField() {
//     return TextFormField(
//       controller: _descriptionController,
//       decoration: InputDecoration(
//         labelText: 'Description',
//         hintText: 'Enter ticket description',
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(8.r),
//         ),
//         prefixIcon: const Icon(Icons.description),
//       ),
//       maxLines: 3,
//       validator: (value) {
//         if (value == null || value.isEmpty) {
//           return 'Please enter a description';
//         }
//         return null;
//       },
//     );
//   }

//   Widget _buildPriorityField() {
//     return DropdownButtonFormField<String>(
//       value: _selectedPriority,
//       decoration: InputDecoration(
//         labelText: 'Priority',
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(8.r),
//         ),
//         prefixIcon: const Icon(Icons.priority_high),
//       ),
//       items: const [
//         DropdownMenuItem(value: 'low', child: Text('Low')),
//         DropdownMenuItem(value: 'medium', child: Text('Medium')),
//         DropdownMenuItem(value: 'high', child: Text('High')),
//       ],
//       onChanged: (value) {
//         setState(() {
//           _selectedPriority = value!;
//         });
//       },
//     );
//   }

//   Widget _buildUserIdField() {
//     return TextFormField(
//       controller: _userIdController,
//       decoration: InputDecoration(
//         labelText: 'User ID',
//         hintText: 'Enter user ID',
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(8.r),
//         ),
//         prefixIcon: const Icon(Icons.person),
//       ),
//       keyboardType: TextInputType.number,
//       validator: (value) {
//         if (value == null || value.isEmpty) {
//           return 'Please enter user ID';
//         }
//         if (int.tryParse(value) == null) {
//           return 'Please enter a valid user ID';
//         }
//         return null;
//       },
//     );
//   }

//   Widget _buildActions() {
//     return BlocBuilder<TicketBloc, TicketState>(
//       builder: (context, state) {
//         final isLoading = state is TicketLoadingState;
        
//         return Row(
//           mainAxisAlignment: MainAxisAlignment.end,
//           children: [
//             TextButton(
//               onPressed: isLoading ? null : () => Navigator.of(context).pop(),
//               child: const Text('Cancel'),
//             ),
//             SizedBox(width: 12.w),
//             ElevatedButton(
//               onPressed: isLoading ? null : _createTicket,
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: AppColors.primary,
//                 foregroundColor: AppColors.onPrimary,
//               ),
//               child: isLoading
//                   ? SizedBox(
//                       width: 16.w,
//                       height: 16.w,
//                       child: const CircularProgressIndicator(
//                         strokeWidth: 2,
//                         valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
//                       ),
//                     )
//                   : const Text('Create Ticket'),
//             ),
//           ],
//         );
//       },
//     );
//   }

//   void _createTicket() {
//     if (_formKey.currentState!.validate()) {
//       context.read<TicketBloc>().add(
//             TicketEvent.createTicket(
//               title: _titleController.text,
//               description: _descriptionController.text,
//               priority: _selectedPriority,
//               userId: int.parse(_userIdController.text),
//             ),
//           );
//     }
//   }
// }
