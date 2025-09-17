import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:y_chat_admin/src/core/constants/constants.dart';

/// Input field component following design system
class InputField extends StatefulWidget {
  const InputField({
    super.key,
    required this.label,
    this.controller,
    this.hint,
    this.helperText,
    this.errorText,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.textInputAction = TextInputAction.done,
    this.maxLines = 1,
    this.maxLength,
    this.validator,
    this.onChanged,
    this.onSubmitted,
    this.onTap,
    this.readOnly = false,
    this.enabled = true,
    this.autofocus = false,
    this.textCapitalization = TextCapitalization.none,
    this.inputFormatters,
    this.semanticsLabel,
  });

  final String label;
  final TextEditingController? controller;
  final String? hint;
  final String? helperText;
  final String? errorText;
  final IconData? prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final int maxLines;
  final int? maxLength;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final void Function(String)? onSubmitted;
  final VoidCallback? onTap;
  final bool readOnly;
  final bool enabled;
  final bool autofocus;
  final TextCapitalization textCapitalization;
  final List<TextInputFormatter>? inputFormatters;
  final String? semanticsLabel;

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  late bool _obscureText;
  late FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.obscureText;
    _focusNode = FocusNode();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final hasError = widget.errorText != null;
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Label
        Text(
          widget.label,
          style: TextStyles.labelLarge.copyWith(
            color: hasError ? AppColors.error : AppColors.onSurface,
          ),
        ),
        const SizedBox(height: Spacing.xs),
        
        // Input field
        TextFormField(
          controller: widget.controller,
          focusNode: _focusNode,
          obscureText: _obscureText,
          keyboardType: widget.keyboardType,
          textInputAction: widget.textInputAction,
          maxLines: widget.maxLines,
          maxLength: widget.maxLength,
          validator: widget.validator,
          onChanged: widget.onChanged,
          onFieldSubmitted: widget.onSubmitted,
          onTap: widget.onTap,
          readOnly: widget.readOnly,
          enabled: widget.enabled,
          autofocus: widget.autofocus,
          textCapitalization: widget.textCapitalization,
          inputFormatters: widget.inputFormatters,
          style: TextStyles.bodyMedium,
          decoration: InputDecoration(
            hintText: widget.hint,
            helperText: widget.helperText,
            errorText: widget.errorText,
            prefixIcon: widget.prefixIcon != null
                ? Icon(
                    widget.prefixIcon,
                    color: hasError 
                        ? AppColors.error 
                        : AppColors.onSurface.withValues(alpha: 0.6),
                  )
                : null,
            suffixIcon: _buildSuffixIcon(),
            filled: true,
            fillColor: widget.enabled 
                ? theme.cardColor 
                : theme.disabledColor.withValues(alpha: 0.1),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Radius.md),
              borderSide: BorderSide(
                color: hasError 
                    ? AppColors.error 
                    : AppColors.onSurface.withValues(alpha: 0.2),
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Radius.md),
              borderSide: BorderSide(
                color: AppColors.onSurface.withValues(alpha: 0.2),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Radius.md),
              borderSide: const BorderSide(
                color: AppColors.primary,
                width: 2,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Radius.md),
              borderSide: const BorderSide(
                color: AppColors.error,
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Radius.md),
              borderSide: const BorderSide(
                color: AppColors.error,
                width: 2,
              ),
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Radius.md),
              borderSide: BorderSide(
                color: AppColors.onSurface.withValues(alpha: 0.1),
              ),
            ),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: Spacing.md,
              vertical: Spacing.sm,
            ),
          ),
        ),
      ],
    );
  }

  Widget? _buildSuffixIcon() {
    if (widget.obscureText) {
      return IconButton(
        icon: Icon(
          _obscureText ? Icons.visibility_off : Icons.visibility,
          color: AppColors.onSurface.withValues(alpha: 0.6),
        ),
        onPressed: () {
          setState(() {
            _obscureText = !_obscureText;
          });
        },
      );
    }
    
    return widget.suffixIcon;
  }
}

/// Search input field
class SearchInputField extends StatelessWidget {
  const SearchInputField({
    super.key,
    required this.onChanged,
    this.controller,
    this.hint = 'Search...',
    this.prefixIcon = Icons.search,
    this.clearIcon = Icons.clear,
    this.onClear,
  });

  final void Function(String) onChanged;
  final TextEditingController? controller;
  final String hint;
  final IconData prefixIcon;
  final IconData clearIcon;
  final VoidCallback? onClear;

  @override
  Widget build(BuildContext context) {
    return InputField(
      controller: controller,
      label: '',
      hint: hint,
      prefixIcon: prefixIcon,
      suffixIcon: controller?.text.isNotEmpty == true
          ? IconButton(
              icon: Icon(clearIcon),
              onPressed: () {
                controller?.clear();
                onClear?.call();
              },
            )
          : null,
      onChanged: onChanged,
    );
  }
}

/// Password input field
class PasswordInputField extends StatelessWidget {
  const PasswordInputField({
    super.key,
    required this.label,
    this.controller,
    this.hint,
    this.helperText,
    this.errorText,
    this.validator,
    this.onChanged,
    this.onSubmitted,
    this.enabled = true,
    this.semanticsLabel,
  });

  final String label;
  final TextEditingController? controller;
  final String? hint;
  final String? helperText;
  final String? errorText;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final void Function(String)? onSubmitted;
  final bool enabled;
  final String? semanticsLabel;

  @override
  Widget build(BuildContext context) {
    return InputField(
      label: label,
      controller: controller,
      hint: hint,
      helperText: helperText,
      errorText: errorText,
      validator: validator,
      onChanged: onChanged,
      onSubmitted: onSubmitted,
      enabled: enabled,
      semanticsLabel: semanticsLabel,
      obscureText: true,
      textInputAction: TextInputAction.done,
    );
  }
}
