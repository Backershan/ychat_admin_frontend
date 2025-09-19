import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/constants.dart';
import '../../domain/entities/app_entity.dart';
import '../bloc/app_bloc.dart';

class EditAppDialog extends StatefulWidget {
  final AppEntity app;
  final VoidCallback onAppUpdated;

  const EditAppDialog({
    super.key,
    required this.app,
    required this.onAppUpdated,
  });

  @override
  State<EditAppDialog> createState() => _EditAppDialogState();
}

class _EditAppDialogState extends State<EditAppDialog> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _descriptionController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _nameController.text = widget.app.name;
    _descriptionController.text = widget.app.description;
  }

  @override
  void dispose() {
    _nameController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AppBloc, AppState>(
      listener: (context, state) {
        if (state is AppUpdated) {
          Navigator.of(context).pop();
          widget.onAppUpdated();
        } else if (state is AppError) {
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
          width: 500.w,
          padding: EdgeInsets.all(24.w),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildHeader(),
                SizedBox(height: 24.h),
                _buildForm(),
                SizedBox(height: 24.h),
                _buildActions(),
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
        Icon(
          Icons.edit,
          size: 24.w,
          color: AppColors.primary,
        ),
        SizedBox(width: 12.w),
        Text(
          'Edit App',
          style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.onBackground,
          ),
        ),
        const Spacer(),
        IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(Icons.close),
        ),
      ],
    );
  }

  Widget _buildForm() {
    return Column(
      children: [
        _buildNameField(),
        SizedBox(height: 16.h),
        _buildDescriptionField(),
        SizedBox(height: 16.h),
        _buildAppInfo(),
      ],
    );
  }

  Widget _buildNameField() {
    return TextFormField(
      controller: _nameController,
      decoration: InputDecoration(
        labelText: 'App Name',
        hintText: 'Enter app name',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
        ),
        prefixIcon: const Icon(Icons.apps),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter app name';
        }
        return null;
      },
    );
  }

  Widget _buildDescriptionField() {
    return TextFormField(
      controller: _descriptionController,
      decoration: InputDecoration(
        labelText: 'Description',
        hintText: 'Enter app description',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
        ),
        prefixIcon: const Icon(Icons.description),
      ),
      maxLines: 3,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter description';
        }
        return null;
      },
    );
  }

  Widget _buildAppInfo() {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: AppColors.surface.withValues(alpha: 0.5),
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(
          color: AppColors.onBackground.withValues(alpha: 0.1),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'App Information',
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.onBackground,
            ),
          ),
          SizedBox(height: 8.h),
          _buildInfoRow('App Key', widget.app.appKey),
          _buildInfoRow('Category', widget.app.category),
          _buildInfoRow('Version', widget.app.version),
          _buildInfoRow('Status', widget.app.isActive ? 'Active' : 'Inactive'),
        ],
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: EdgeInsets.only(bottom: 4.h),
      child: Row(
        children: [
          Text(
            '$label: ',
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.onBackground.withValues(alpha: 0.6),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: TextStyle(
                fontSize: 12.sp,
                color: AppColors.onBackground,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildActions() {
    return BlocBuilder<AppBloc, AppState>(
      builder: (context, state) {
        final isLoading = state is AppLoading;
        
        return Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
              onPressed: isLoading ? null : () => Navigator.of(context).pop(),
              child: const Text('Cancel'),
            ),
            SizedBox(width: 12.w),
            ElevatedButton(
              onPressed: isLoading ? null : _updateApp,
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
                foregroundColor: AppColors.onPrimary,
              ),
              child: isLoading
                  ? SizedBox(
                      width: 16.w,
                      height: 16.w,
                      child: const CircularProgressIndicator(
                        strokeWidth: 2,
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                      ),
                    )
                  : const Text('Update App'),
            ),
          ],
        );
      },
    );
  }

  void _updateApp() {
    if (_formKey.currentState!.validate()) {
      context.read<AppBloc>().add(
            UpdateApp(
              appId: widget.app.id,
              name: _nameController.text,
              description: _descriptionController.text,
            ),
          );
    }
  }
}
