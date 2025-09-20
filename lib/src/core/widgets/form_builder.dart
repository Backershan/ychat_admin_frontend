import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:y_chat_admin/src/core/utils/responsive.dart';

/// Form field configuration for the FormBuilder
@immutable
class FormFieldConfig {
  final String key;
  final String label;
  final String? hint;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final bool obscureText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final int? maxLines;
  final int? maxLength;
  final String? initialValue;
  final bool enabled;
  final bool required;
  
  const FormFieldConfig({
    required this.key,
    required this.label,
    this.hint,
    this.validator,
    this.keyboardType,
    this.obscureText = false,
    this.prefixIcon,
    this.suffixIcon,
    this.maxLines = 1,
    this.maxLength,
    this.initialValue,
    this.enabled = true,
    this.required = false,
  });
}

/// Reusable form builder widget that follows project standards
@immutable
class FormBuilder extends StatefulWidget {
  final List<FormFieldConfig> fields;
  final Map<String, String> initialValues;
  final Function(Map<String, String> values)? onSubmit;
  final Function(Map<String, String> values)? onChanged;
  final Widget? submitButton;
  final bool autoValidate;
  final EdgeInsetsGeometry? padding;
  
  const FormBuilder({
    super.key,
    required this.fields,
    this.initialValues = const {},
    this.onSubmit,
    this.onChanged,
    this.submitButton,
    this.autoValidate = false,
    this.padding,
  });

  @override
  State<FormBuilder> createState() => _FormBuilderState();
}

class _FormBuilderState extends State<FormBuilder> {
  final _formKey = GlobalKey<FormState>();
  late Map<String, TextEditingController> _controllers;
  late Map<String, String> _values;

  @override
  void initState() {
    super.initState();
    _initializeControllers();
  }

  void _initializeControllers() {
    _controllers = {};
    _values = Map.from(widget.initialValues);
    
    for (final field in widget.fields) {
      _controllers[field.key] = TextEditingController(
        text: field.initialValue ?? widget.initialValues[field.key] ?? '',
      );
    }
  }

  @override
  void dispose() {
    for (final controller in _controllers.values) {
      controller.dispose();
    }
    super.dispose();
  }

  void _onFieldChanged(String key, String value) {
    setState(() {
      _values[key] = value;
    });
    widget.onChanged?.call(_values);
  }


  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      autovalidateMode: widget.autoValidate 
          ? AutovalidateMode.onUserInteraction 
          : AutovalidateMode.disabled,
      child: Padding(
        padding: widget.padding ?? EdgeInsets.all(ResponsiveSpacing.medium),
        child: Column(
          children: [
            ...widget.fields.map((field) => _buildFormField(field)),
            if (widget.submitButton != null) ...[
              SizedBox(height: ResponsiveSpacing.large),
              widget.submitButton!,
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildFormField(FormFieldConfig field) {
    return Padding(
      padding: EdgeInsets.only(bottom: ResponsiveSpacing.medium),
      child: TextFormField(
        key: Key(field.key),
        controller: _controllers[field.key],
        decoration: InputDecoration(
          labelText: field.label,
          hintText: field.hint,
          prefixIcon: field.prefixIcon,
          suffixIcon: field.suffixIcon,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.outline,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.primary,
              width: 2,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.error,
            ),
          ),
        ),
        keyboardType: field.keyboardType,
        obscureText: field.obscureText,
        maxLines: field.maxLines,
        maxLength: field.maxLength,
        enabled: field.enabled,
        validator: field.validator,
        onChanged: (value) => _onFieldChanged(field.key, value),
      ),
    );
  }
}

/// Predefined form field validators following project standards
class FormValidators {
  static String? required(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'This field is required';
    }
    return null;
  }

  static String? email(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Email is required';
    }
    if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
      return 'Please enter a valid email';
    }
    return null;
  }

  static String? password(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Password is required';
    }
    if (value.length < 8) {
      return 'Password must be at least 8 characters';
    }
    return null;
  }

  static String? phoneNumber(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Phone number is required';
    }
    if (!RegExp(r'^\+?[\d\s\-\(\)]+$').hasMatch(value)) {
      return 'Please enter a valid phone number';
    }
    return null;
  }

  static String? Function(String?) minLength(int minLength) {
    return (String? value) {
      if (value == null || value.trim().isEmpty) {
        return 'This field is required';
      }
      if (value.length < minLength) {
        return 'Must be at least $minLength characters';
      }
      return null;
    };
  }

  static String? Function(String?) maxLength(int maxLength) {
    return (String? value) {
      if (value != null && value.length > maxLength) {
        return 'Must be no more than $maxLength characters';
      }
      return null;
    };
  }
}
