import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/constants.dart';
import '../bloc/app_bloc.dart';

class CreateAppDialog extends StatefulWidget {
  final VoidCallback onAppCreated;

  const CreateAppDialog({
    super.key,
    required this.onAppCreated,
  });

  @override
  State<CreateAppDialog> createState() => _CreateAppDialogState();
}

class _CreateAppDialogState extends State<CreateAppDialog> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _appKeyController = TextEditingController();
  final _iconUrlController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _versionController = TextEditingController();
  bool _isActive = true;
  bool _isIntegrated = false;
  String _selectedCategory = 'general';
  final List<String> _permissions = ['read'];
  final Map<String, dynamic> _integrationConfig = {};

  @override
  void dispose() {
    _nameController.dispose();
    _appKeyController.dispose();
    _iconUrlController.dispose();
    _descriptionController.dispose();
    _versionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AppBloc, AppState>(
      listener: (context, state) {
        print('🔧 CreateAppDialog: BlocListener received state: $state');
        print('🔧 CreateAppDialog: State type: ${state.runtimeType}');
        
        if (state is AppCreated) {
          print('🔧 CreateAppDialog: AppCreated state received, closing dialog');
          Navigator.of(context).pop();
          widget.onAppCreated();
        } else if (state is AppError) {
          print('🔧 CreateAppDialog: AppError state received: ${state.failure.message}');
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.failure.message),
              backgroundColor: Colors.red,
            ),
          );
        } else if (state is AppLoading) {
          print('🔧 CreateAppDialog: AppLoading state received');
        } else {
          print('🔧 CreateAppDialog: Other state received: ${state.runtimeType}');
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
          Icons.add_circle_outline,
          size: 24.w,
          color: AppColors.primary,
        ),
        SizedBox(width: 12.w),
        Text(
          'Create New App',
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
        _buildAppKeyField(),
        SizedBox(height: 16.h),
        Row(
          children: [
            Expanded(
              child: _buildCategoryField(),
            ),
            SizedBox(width: 16.w),
            Expanded(
              child: _buildVersionField(),
            ),
          ],
        ),
        SizedBox(height: 16.h),
        _buildDescriptionField(),
        SizedBox(height: 16.h),
        _buildIconUrlField(),
        SizedBox(height: 16.h),
        _buildSwitches(),
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

  Widget _buildAppKeyField() {
    return TextFormField(
      controller: _appKeyController,
      decoration: InputDecoration(
        labelText: 'App Key',
        hintText: 'Enter app key (e.g., test_app)',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
        ),
        prefixIcon: const Icon(Icons.key),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter app key';
        }
        if (!RegExp(r'^[a-z_]+$').hasMatch(value)) {
          return 'App key should contain only lowercase letters and underscores';
        }
        return null;
      },
    );
  }

  Widget _buildCategoryField() {
    final availableCategories = [
      'social',
      'productivity',
      'entertainment',
      'communication',
      'health',
      'education',
      'business',
      'finance',
      'shopping',
      'travel',
      'general'
    ];

    return DropdownButtonFormField<String>(
      value: _selectedCategory,
      decoration: InputDecoration(
        labelText: 'Category',
        hintText: 'Select category',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
        ),
        prefixIcon: const Icon(Icons.category),
      ),
      items: availableCategories.map((String category) {
        return DropdownMenuItem<String>(
          value: category,
          child: Text(category),
        );
      }).toList(),
      onChanged: (String? newValue) {
        if (newValue != null) {
          setState(() {
            _selectedCategory = newValue;
          });
        }
      },
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please select a category';
        }
        return null;
      },
    );
  }

  Widget _buildVersionField() {
    return TextFormField(
      controller: _versionController,
      decoration: InputDecoration(
        labelText: 'Version',
        hintText: '1.0.0',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
        ),
        prefixIcon: const Icon(Icons.tag),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter version';
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

  Widget _buildIconUrlField() {
    return TextFormField(
      controller: _iconUrlController,
      decoration: InputDecoration(
        labelText: 'Icon URL (Optional)',
        hintText: 'https://example.com/icon.png',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
        ),
        prefixIcon: const Icon(Icons.image),
      ),
    );
  }

  Widget _buildSwitches() {
    return Column(
      children: [
        Row(
          children: [
            Switch(
              value: _isActive,
              onChanged: (value) {
                setState(() {
                  _isActive = value;
                });
              },
              activeColor: AppColors.primary,
            ),
            SizedBox(width: 12.w),
            Text(
              'Active',
              style: TextStyle(
                fontSize: 16.sp,
                color: AppColors.onBackground,
              ),
            ),
          ],
        ),
        SizedBox(height: 12.h),
        Row(
          children: [
            Switch(
              value: _isIntegrated,
              onChanged: (value) {
                setState(() {
                  _isIntegrated = value;
                });
              },
              activeColor: AppColors.primary,
            ),
            SizedBox(width: 12.w),
            Text(
              'Integrated',
              style: TextStyle(
                fontSize: 16.sp,
                color: AppColors.onBackground,
              ),
            ),
          ],
        ),
      ],
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
              onPressed: isLoading ? null : _createApp,
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
                  : const Text('Create App'),
            ),
          ],
        );
      },
    );
  }

  void _createApp() {
    print('🔧 CreateAppDialog: _createApp called');
    print('🔧 Form validation: ${_formKey.currentState?.validate()}');
    
    if (_formKey.currentState!.validate()) {
      final createAppData = {
        'name': _nameController.text,
        'appKey': _appKeyController.text,
        'category': [_selectedCategory],
        'description': _descriptionController.text,
        'isActive': _isActive,
        'version': _versionController.text,
      };
      
      print('🔧 CreateAppDialog: Sending CreateApp event with data: $createAppData');
      
      context.read<AppBloc>().add(
            CreateApp(
              name: _nameController.text,
              appKey: _appKeyController.text,
              iconUrl: _iconUrlController.text.isNotEmpty ? _iconUrlController.text : null,
              category: [_selectedCategory],
              description: _descriptionController.text,
              isActive: _isActive,
              isIntegrated: _isIntegrated,
              version: _versionController.text,
              permissions: _permissions,
              integrationConfig: _integrationConfig.isNotEmpty ? _integrationConfig : null,
            ),
          );
    } else {
      print('🔧 CreateAppDialog: Form validation failed');
    }
  }
}
