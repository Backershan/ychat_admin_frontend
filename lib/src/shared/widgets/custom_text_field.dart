import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constants/app_colors.dart';

enum TextFieldType {
  text,
  email,
  password,
  number,
  multiline,
}

class CustomTextField extends StatefulWidget {
  final String label;
  final String? hint;
  final TextEditingController? controller;
  final TextFieldType type;
  final bool enabled;
  final bool obscureText;
  final TextInputAction? textInputAction;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final void Function()? onTap;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final int? maxLines;
  final int? maxLength;
  final bool isRequired;
  final String? errorText;
  final FocusNode? focusNode;

  const CustomTextField({
    super.key,
    required this.label,
    this.hint,
    this.controller,
    this.type = TextFieldType.text,
    this.enabled = true,
    this.obscureText = false,
    this.textInputAction,
    this.keyboardType,
    this.validator,
    this.onChanged,
    this.onTap,
    this.prefixIcon,
    this.suffixIcon,
    this.maxLines,
    this.maxLength,
    this.isRequired = false,
    this.errorText,
    this.focusNode,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late bool _obscureText;
  late FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.obscureText || widget.type == TextFieldType.password;
    _focusNode = widget.focusNode ?? FocusNode();
  }

  @override
  void dispose() {
    if (widget.focusNode == null) {
      _focusNode.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildLabel(),
        SizedBox(height: 8.h),
        _buildTextField(),
        if (widget.errorText != null) ...[
          SizedBox(height: 4.h),
          _buildErrorText(),
        ],
      ],
    );
  }

  Widget _buildLabel() {
    return RichText(
      text: TextSpan(
        text: widget.label,
        style: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
          color: AppColors.lightOnBackground,
        ),
        children: [
          if (widget.isRequired)
            TextSpan(
              text: ' *',
              style: TextStyle(
                color: AppColors.lightError,
                fontWeight: FontWeight.bold,
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildTextField() {
    return TextFormField(
      controller: widget.controller,
      focusNode: _focusNode,
      enabled: widget.enabled,
      obscureText: _obscureText,
      textInputAction: widget.textInputAction ?? _getTextInputAction(),
      keyboardType: widget.keyboardType ?? _getKeyboardType(),
      validator: widget.validator,
      onChanged: widget.onChanged,
      onTap: widget.onTap,
      maxLines: widget.maxLines ?? _getMaxLines(),
      maxLength: widget.maxLength,
      style: TextStyle(
        fontSize: 14.sp,
        color: AppColors.lightOnBackground,
      ),
      decoration: InputDecoration(
        hintText: widget.hint,
        prefixIcon: widget.prefixIcon,
        suffixIcon: _buildSuffixIcon(),
        filled: true,
        fillColor: widget.enabled
            ? AppColors.lightSurface
            : AppColors.lightOnBackground.withOpacity(0.1),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(
            color: AppColors.lightOnBackground.withOpacity(0.2),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(
            color: AppColors.lightOnBackground.withOpacity(0.2),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(
            color: AppColors.lightPrimary,
            width: 2,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(
            color: AppColors.lightError,
            width: 2,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(
            color: AppColors.lightError,
            width: 2,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(
            color: AppColors.lightOnBackground.withOpacity(0.1),
          ),
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 16.w,
          vertical: 12.h,
        ),
        hintStyle: TextStyle(
          fontSize: 14.sp,
          color: AppColors.lightOnBackground.withOpacity(0.5),
        ),
      ),
    );
  }

  Widget? _buildSuffixIcon() {
    if (widget.suffixIcon != null) {
      return widget.suffixIcon;
    }

    if (widget.type == TextFieldType.password) {
      return IconButton(
        icon: Icon(
          _obscureText ? Icons.visibility : Icons.visibility_off,
          color: AppColors.lightOnBackground.withOpacity(0.6),
        ),
        onPressed: () {
          setState(() {
            _obscureText = !_obscureText;
          });
        },
      );
    }

    return null;
  }

  Widget _buildErrorText() {
    return Text(
      widget.errorText!,
      style: TextStyle(
        fontSize: 12.sp,
        color: AppColors.lightError,
      ),
    );
  }

  TextInputAction _getTextInputAction() {
    switch (widget.type) {
      case TextFieldType.multiline:
        return TextInputAction.newline;
      case TextFieldType.email:
        return TextInputAction.next;
      case TextFieldType.password:
        return TextInputAction.done;
      default:
        return TextInputAction.next;
    }
  }

  TextInputType _getKeyboardType() {
    switch (widget.type) {
      case TextFieldType.email:
        return TextInputType.emailAddress;
      case TextFieldType.number:
        return TextInputType.number;
      case TextFieldType.multiline:
        return TextInputType.multiline;
      default:
        return TextInputType.text;
    }
  }

  int _getMaxLines() {
    switch (widget.type) {
      case TextFieldType.multiline:
        return 4;
      default:
        return 1;
    }
  }
}
