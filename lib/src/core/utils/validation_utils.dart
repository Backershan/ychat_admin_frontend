import 'package:y_chat_admin/src/core/constants/app_constants.dart';

/// Validation utilities following project standards
class ValidationUtils {
  /// Validate email address
  static String? validateEmail(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Email is required';
    }
    
    if (value.length > AppConstants.maxEmailLength) {
      return 'Email must be no more than ${AppConstants.maxEmailLength} characters';
    }
    
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegex.hasMatch(value)) {
      return 'Please enter a valid email address';
    }
    
    return null;
  }
  
  /// Validate password
  static String? validatePassword(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Password is required';
    }
    
    if (value.length < AppConstants.minPasswordLength) {
      return 'Password must be at least ${AppConstants.minPasswordLength} characters';
    }
    
    if (value.length > AppConstants.maxPasswordLength) {
      return 'Password must be no more than ${AppConstants.maxPasswordLength} characters';
    }
    
    // Check for at least one uppercase letter
    if (!RegExp(r'[A-Z]').hasMatch(value)) {
      return 'Password must contain at least one uppercase letter';
    }
    
    // Check for at least one lowercase letter
    if (!RegExp(r'[a-z]').hasMatch(value)) {
      return 'Password must contain at least one lowercase letter';
    }
    
    // Check for at least one digit
    if (!RegExp(r'[0-9]').hasMatch(value)) {
      return 'Password must contain at least one number';
    }
    
    // Check for at least one special character
    if (!RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(value)) {
      return 'Password must contain at least one special character';
    }
    
    return null;
  }
  
  /// Validate confirm password
  static String? validateConfirmPassword(String? value, String? password) {
    if (value == null || value.trim().isEmpty) {
      return 'Please confirm your password';
    }
    
    if (value != password) {
      return 'Passwords do not match';
    }
    
    return null;
  }
  
  /// Validate username
  static String? validateUsername(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Username is required';
    }
    
    if (value.length < AppConstants.minUsernameLength) {
      return 'Username must be at least ${AppConstants.minUsernameLength} characters';
    }
    
    if (value.length > AppConstants.maxUsernameLength) {
      return 'Username must be no more than ${AppConstants.maxUsernameLength} characters';
    }
    
    // Check for valid characters (alphanumeric and underscore only)
    if (!RegExp(r'^[a-zA-Z0-9_]+$').hasMatch(value)) {
      return 'Username can only contain letters, numbers, and underscores';
    }
    
    // Check that it doesn't start with a number
    if (RegExp(r'^[0-9]').hasMatch(value)) {
      return 'Username cannot start with a number';
    }
    
    return null;
  }
  
  /// Validate name (first name, last name, etc.)
  static String? validateName(String? value, {String fieldName = 'Name'}) {
    if (value == null || value.trim().isEmpty) {
      return '$fieldName is required';
    }
    
    if (value.length < AppConstants.minNameLength) {
      return '$fieldName must be at least ${AppConstants.minNameLength} characters';
    }
    
    if (value.length > AppConstants.maxNameLength) {
      return '$fieldName must be no more than ${AppConstants.maxNameLength} characters';
    }
    
    // Check for valid characters (letters, spaces, hyphens, apostrophes)
    if (!RegExp(r"^[a-zA-Z\s\-']+$").hasMatch(value)) {
      return '$fieldName can only contain letters, spaces, hyphens, and apostrophes';
    }
    
    return null;
  }
  
  /// Validate phone number
  static String? validatePhoneNumber(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Phone number is required';
    }
    
    if (value.length > AppConstants.maxPhoneLength) {
      return 'Phone number must be no more than ${AppConstants.maxPhoneLength} characters';
    }
    
    // Remove all non-digit characters for validation
    final digitsOnly = value.replaceAll(RegExp(r'[^\d]'), '');
    
    // Check if it contains only digits and has reasonable length
    if (digitsOnly.length < 10 || digitsOnly.length > 15) {
      return 'Please enter a valid phone number';
    }
    
    // Check for valid phone number format
    if (!RegExp(r'^\+?[\d\s\-\(\)]+$').hasMatch(value)) {
      return 'Please enter a valid phone number format';
    }
    
    return null;
  }
  
  /// Validate required field
  static String? validateRequired(String? value, {String fieldName = 'This field'}) {
    if (value == null || value.trim().isEmpty) {
      return '$fieldName is required';
    }
    return null;
  }
  
  /// Validate minimum length
  static String? validateMinLength(String? value, int minLength, {String fieldName = 'This field'}) {
    if (value == null || value.trim().isEmpty) {
      return '$fieldName is required';
    }
    
    if (value.length < minLength) {
      return '$fieldName must be at least $minLength characters';
    }
    
    return null;
  }
  
  /// Validate maximum length
  static String? validateMaxLength(String? value, int maxLength, {String fieldName = 'This field'}) {
    if (value != null && value.length > maxLength) {
      return '$fieldName must be no more than $maxLength characters';
    }
    return null;
  }
  
  /// Validate range
  static String? validateRange(String? value, int min, int max, {String fieldName = 'This field'}) {
    if (value == null || value.trim().isEmpty) {
      return '$fieldName is required';
    }
    
    final intValue = int.tryParse(value);
    if (intValue == null) {
      return '$fieldName must be a valid number';
    }
    
    if (intValue < min || intValue > max) {
      return '$fieldName must be between $min and $max';
    }
    
    return null;
  }
  
  /// Validate URL
  static String? validateUrl(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'URL is required';
    }
    
    final urlRegex = RegExp(
      r'^https?:\/\/(www\.)?[-a-zA-Z0-9@:%._\+~#=]{1,256}\.[a-zA-Z0-9()]{1,6}\b([-a-zA-Z0-9()@:%_\+.~#?&//=]*)$'
    );
    
    if (!urlRegex.hasMatch(value)) {
      return 'Please enter a valid URL';
    }
    
    return null;
  }
  
  /// Validate date
  static String? validateDate(String? value, {String fieldName = 'Date'}) {
    if (value == null || value.trim().isEmpty) {
      return '$fieldName is required';
    }
    
    try {
      DateTime.parse(value);
      return null;
    } catch (e) {
      return 'Please enter a valid $fieldName';
    }
  }
  
  /// Validate future date
  static String? validateFutureDate(String? value, {String fieldName = 'Date'}) {
    final dateError = validateDate(value, fieldName: fieldName);
    if (dateError != null) return dateError;
    
    final date = DateTime.parse(value!);
    if (date.isBefore(DateTime.now())) {
      return '$fieldName must be in the future';
    }
    
    return null;
  }
  
  /// Validate past date
  static String? validatePastDate(String? value, {String fieldName = 'Date'}) {
    final dateError = validateDate(value, fieldName: fieldName);
    if (dateError != null) return dateError;
    
    final date = DateTime.parse(value!);
    if (date.isAfter(DateTime.now())) {
      return '$fieldName must be in the past';
    }
    
    return null;
  }
  
  /// Validate file size
  static String? validateFileSize(int? fileSize, {int maxSize = AppConstants.maxFileSize}) {
    if (fileSize == null) {
      return 'File size is required';
    }
    
    if (fileSize > maxSize) {
      final maxSizeMB = (maxSize / (1024 * 1024)).toStringAsFixed(1);
      return 'File size must be no more than ${maxSizeMB}MB';
    }
    
    return null;
  }
  
  /// Validate file type
  static String? validateFileType(String? fileName, List<String> allowedTypes) {
    if (fileName == null || fileName.trim().isEmpty) {
      return 'File name is required';
    }
    
    final extension = fileName.split('.').last.toLowerCase();
    if (!allowedTypes.contains(extension)) {
      return 'File type not allowed. Allowed types: ${allowedTypes.join(', ')}';
    }
    
    return null;
  }
  
  /// Validate image file
  static String? validateImageFile(String? fileName) {
    return validateFileType(fileName, AppConstants.allowedImageTypes);
  }
  
  /// Validate document file
  static String? validateDocumentFile(String? fileName) {
    return validateFileType(fileName, AppConstants.allowedDocumentTypes);
  }
  
  /// Validate role
  static String? validateRole(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Role is required';
    }
    
    final allowedRoles = [
      AppConstants.superAdminRole,
      AppConstants.adminRole,
      AppConstants.userRole,
      AppConstants.moderatorRole,
    ];
    
    if (!allowedRoles.contains(value)) {
      return 'Please select a valid role';
    }
    
    return null;
  }
  
  /// Validate ticket status
  static String? validateTicketStatus(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Status is required';
    }
    
    final allowedStatuses = [
      AppConstants.ticketOpenStatus,
      AppConstants.ticketInProgressStatus,
      AppConstants.ticketResolvedStatus,
      AppConstants.ticketClosedStatus,
    ];
    
    if (!allowedStatuses.contains(value)) {
      return 'Please select a valid status';
    }
    
    return null;
  }
  
  /// Validate ticket priority
  static String? validateTicketPriority(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Priority is required';
    }
    
    final allowedPriorities = [
      AppConstants.ticketLowPriority,
      AppConstants.ticketMediumPriority,
      AppConstants.ticketHighPriority,
      AppConstants.ticketUrgentPriority,
    ];
    
    if (!allowedPriorities.contains(value)) {
      return 'Please select a valid priority';
    }
    
    return null;
  }
  
  /// Validate ticket category
  static String? validateTicketCategory(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Category is required';
    }
    
    final allowedCategories = [
      AppConstants.ticketTechnicalCategory,
      AppConstants.ticketBillingCategory,
      AppConstants.ticketFeatureRequestCategory,
      AppConstants.ticketBugReportCategory,
      AppConstants.ticketGeneralCategory,
    ];
    
    if (!allowedCategories.contains(value)) {
      return 'Please select a valid category';
    }
    
    return null;
  }
  
  /// Validate app status
  static String? validateAppStatus(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Status is required';
    }
    
    final allowedStatuses = [
      AppConstants.appActiveStatus,
      AppConstants.appInactiveStatus,
      AppConstants.appPendingStatus,
      AppConstants.appSuspendedStatus,
    ];
    
    if (!allowedStatuses.contains(value)) {
      return 'Please select a valid status';
    }
    
    return null;
  }
  
  /// Validate description
  static String? validateDescription(String? value, {String fieldName = 'Description'}) {
    if (value == null || value.trim().isEmpty) {
      return '$fieldName is required';
    }
    
    if (value.length > AppConstants.maxDescriptionLength) {
      return '$fieldName must be no more than ${AppConstants.maxDescriptionLength} characters';
    }
    
    return null;
  }
  
  /// Validate search query
  static String? validateSearchQuery(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Search query is required';
    }
    
    if (value.length < AppConstants.minSearchLength) {
      return 'Search query must be at least ${AppConstants.minSearchLength} characters';
    }
    
    return null;
  }
  
  /// Validate pagination parameters
  static String? validatePagination(int? page, int? pageSize) {
    if (page != null && page < 1) {
      return 'Page must be greater than 0';
    }
    
    if (pageSize != null) {
      if (pageSize < 1) {
        return 'Page size must be greater than 0';
      }
      if (pageSize > AppConstants.maxPageSize) {
        return 'Page size must be no more than ${AppConstants.maxPageSize}';
      }
    }
    
    return null;
  }
}
