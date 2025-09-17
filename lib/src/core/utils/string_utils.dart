import 'package:y_chat_admin/src/core/constants/app_constants.dart';

/// String utilities following project standards
class StringUtils {
  /// Check if string is null or empty
  static bool isNullOrEmpty(String? value) {
    return value == null || value.trim().isEmpty;
  }
  
  /// Check if string is not null and not empty
  static bool isNotNullOrEmpty(String? value) {
    return !isNullOrEmpty(value);
  }
  
  /// Get string or default value
  static String getStringOrDefault(String? value, String defaultValue) {
    return isNullOrEmpty(value) ? defaultValue : value!;
  }
  
  /// Capitalize first letter
  static String capitalize(String? value) {
    if (isNullOrEmpty(value)) return '';
    return value![0].toUpperCase() + value.substring(1).toLowerCase();
  }
  
  /// Capitalize first letter of each word
  static String capitalizeWords(String? value) {
    if (isNullOrEmpty(value)) return '';
    return value!.split(' ').map((word) => capitalize(word)).join(' ');
  }
  
  /// Convert to title case
  static String toTitleCase(String? value) {
    if (isNullOrEmpty(value)) return '';
    return value!.split(' ').map((word) => capitalize(word)).join(' ');
  }
  
  /// Convert to camel case
  static String toCamelCase(String? value) {
    if (isNullOrEmpty(value)) return '';
    final words = value!.split(' ');
    if (words.isEmpty) return '';
    return words[0].toLowerCase() + 
           words.skip(1).map((word) => capitalize(word)).join('');
  }
  
  /// Convert to snake case
  static String toSnakeCase(String? value) {
    if (isNullOrEmpty(value)) return '';
    return value!.replaceAllMapped(
      RegExp(r'[A-Z]'),
      (match) => '_${match.group(0)!.toLowerCase()}',
    ).toLowerCase();
  }
  
  /// Convert to kebab case
  static String toKebabCase(String? value) {
    if (isNullOrEmpty(value)) return '';
    return value!.replaceAllMapped(
      RegExp(r'[A-Z]'),
      (match) => '-${match.group(0)!.toLowerCase()}',
    ).toLowerCase();
  }
  
  /// Convert to pascal case
  static String toPascalCase(String? value) {
    if (isNullOrEmpty(value)) return '';
    return value!.split(' ').map((word) => capitalize(word)).join('');
  }
  
  /// Remove all whitespace
  static String removeWhitespace(String? value) {
    if (isNullOrEmpty(value)) return '';
    return value!.replaceAll(RegExp(r'\s+'), '');
  }
  
  /// Remove extra whitespace
  static String removeExtraWhitespace(String? value) {
    if (isNullOrEmpty(value)) return '';
    return value!.replaceAll(RegExp(r'\s+'), ' ').trim();
  }
  
  /// Truncate string with ellipsis
  static String truncate(String? value, int maxLength, {String ellipsis = '...'}) {
    if (isNullOrEmpty(value)) return '';
    if (value!.length <= maxLength) return value;
    return value.substring(0, maxLength) + ellipsis;
  }
  
  /// Truncate string at word boundary
  static String truncateAtWord(String? value, int maxLength, {String ellipsis = '...'}) {
    if (isNullOrEmpty(value)) return '';
    if (value!.length <= maxLength) return value;
    
    final truncated = value.substring(0, maxLength);
    final lastSpace = truncated.lastIndexOf(' ');
    
    if (lastSpace > 0) {
      return truncated.substring(0, lastSpace) + ellipsis;
    }
    
    return truncated + ellipsis;
  }
  
  /// Pad string with zeros
  static String padWithZeros(String? value, int length) {
    if (isNullOrEmpty(value)) return '0'.padLeft(length, '0');
    return value!.padLeft(length, '0');
  }
  
  /// Pad string with spaces
  static String padWithSpaces(String? value, int length) {
    if (isNullOrEmpty(value)) return ' '.padLeft(length);
    return value!.padLeft(length);
  }
  
  /// Reverse string
  static String reverse(String? value) {
    if (isNullOrEmpty(value)) return '';
    return value!.split('').reversed.join('');
  }
  
  /// Check if string contains only digits
  static bool isNumeric(String? value) {
    if (isNullOrEmpty(value)) return false;
    return RegExp(r'^\d+$').hasMatch(value!);
  }
  
  /// Check if string contains only letters
  static bool isAlpha(String? value) {
    if (isNullOrEmpty(value)) return false;
    return RegExp(r'^[a-zA-Z]+$').hasMatch(value!);
  }
  
  /// Check if string contains only alphanumeric characters
  static bool isAlphaNumeric(String? value) {
    if (isNullOrEmpty(value)) return false;
    return RegExp(r'^[a-zA-Z0-9]+$').hasMatch(value!);
  }
  
  /// Check if string is a valid email
  static bool isValidEmail(String? value) {
    if (isNullOrEmpty(value)) return false;
    return RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value!);
  }
  
  /// Check if string is a valid phone number
  static bool isValidPhone(String? value) {
    if (isNullOrEmpty(value)) return false;
    return RegExp(r'^\+?[\d\s\-\(\)]+$').hasMatch(value!);
  }
  
  /// Check if string is a valid URL
  static bool isValidUrl(String? value) {
    if (isNullOrEmpty(value)) return false;
    return RegExp(
      r'^https?:\/\/(www\.)?[-a-zA-Z0-9@:%._\+~#=]{1,256}\.[a-zA-Z0-9()]{1,6}\b([-a-zA-Z0-9()@:%_\+.~#?&//=]*)$'
    ).hasMatch(value!);
  }
  
  /// Extract numbers from string
  static String extractNumbers(String? value) {
    if (isNullOrEmpty(value)) return '';
    return value!.replaceAll(RegExp(r'[^\d]'), '');
  }
  
  /// Extract letters from string
  static String extractLetters(String? value) {
    if (isNullOrEmpty(value)) return '';
    return value!.replaceAll(RegExp(r'[^a-zA-Z]'), '');
  }
  
  /// Extract alphanumeric characters from string
  static String extractAlphaNumeric(String? value) {
    if (isNullOrEmpty(value)) return '';
    return value!.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '');
  }
  
  /// Remove special characters from string
  static String removeSpecialCharacters(String? value) {
    if (isNullOrEmpty(value)) return '';
    return value!.replaceAll(RegExp(r'[^a-zA-Z0-9\s]'), '');
  }
  
  /// Count words in string
  static int countWords(String? value) {
    if (isNullOrEmpty(value)) return 0;
    return value!.trim().split(RegExp(r'\s+')).length;
  }
  
  /// Count characters in string
  static int countCharacters(String? value) {
    if (isNullOrEmpty(value)) return 0;
    return value!.length;
  }
  
  /// Count lines in string
  static int countLines(String? value) {
    if (isNullOrEmpty(value)) return 0;
    return value!.split('\n').length;
  }
  
  /// Get first word
  static String getFirstWord(String? value) {
    if (isNullOrEmpty(value)) return '';
    final words = value!.trim().split(RegExp(r'\s+'));
    return words.isNotEmpty ? words.first : '';
  }
  
  /// Get last word
  static String getLastWord(String? value) {
    if (isNullOrEmpty(value)) return '';
    final words = value!.trim().split(RegExp(r'\s+'));
    return words.isNotEmpty ? words.last : '';
  }
  
  /// Get word at index
  static String getWordAt(String? value, int index) {
    if (isNullOrEmpty(value)) return '';
    final words = value!.trim().split(RegExp(r'\s+'));
    if (index >= 0 && index < words.length) {
      return words[index];
    }
    return '';
  }
  
  /// Replace all occurrences
  static String replaceAll(String? value, String from, String to) {
    if (isNullOrEmpty(value)) return '';
    return value!.replaceAll(from, to);
  }
  
  /// Replace first occurrence
  static String replaceFirst(String? value, String from, String to) {
    if (isNullOrEmpty(value)) return '';
    return value!.replaceFirst(from, to);
  }
  
  /// Replace last occurrence
  static String replaceLast(String? value, String from, String to) {
    if (isNullOrEmpty(value)) return '';
    final lastIndex = value!.lastIndexOf(from);
    if (lastIndex == -1) return value;
    return value.substring(0, lastIndex) + to + value.substring(lastIndex + from.length);
  }
  
  /// Split string by delimiter
  static List<String> split(String? value, String delimiter) {
    if (isNullOrEmpty(value)) return [];
    return value!.split(delimiter);
  }
  
  /// Split string by whitespace
  static List<String> splitByWhitespace(String? value) {
    if (isNullOrEmpty(value)) return [];
    return value!.trim().split(RegExp(r'\s+'));
  }
  
  /// Join list of strings
  static String join(List<String> values, String separator) {
    return values.join(separator);
  }
  
  /// Join list of strings with space
  static String joinWithSpace(List<String> values) {
    return values.join(' ');
  }
  
  /// Join list of strings with comma
  static String joinWithComma(List<String> values) {
    return values.join(', ');
  }
  
  /// Join list of strings with newline
  static String joinWithNewline(List<String> values) {
    return values.join('\n');
  }
  
  /// Check if string starts with
  static bool startsWith(String? value, String prefix) {
    if (isNullOrEmpty(value)) return false;
    return value!.startsWith(prefix);
  }
  
  /// Check if string ends with
  static bool endsWith(String? value, String suffix) {
    if (isNullOrEmpty(value)) return false;
    return value!.endsWith(suffix);
  }
  
  /// Check if string contains
  static bool contains(String? value, String substring) {
    if (isNullOrEmpty(value)) return false;
    return value!.contains(substring);
  }
  
  /// Check if string contains ignore case
  static bool containsIgnoreCase(String? value, String substring) {
    if (isNullOrEmpty(value)) return false;
    return value!.toLowerCase().contains(substring.toLowerCase());
  }
  
  /// Get substring
  static String substring(String? value, int start, [int? end]) {
    if (isNullOrEmpty(value)) return '';
    if (end != null) {
      return value!.substring(start, end);
    }
    return value!.substring(start);
  }
  
  /// Get left substring
  static String left(String? value, int length) {
    if (isNullOrEmpty(value)) return '';
    return value!.length > length ? value.substring(0, length) : value;
  }
  
  /// Get right substring
  static String right(String? value, int length) {
    if (isNullOrEmpty(value)) return '';
    return value!.length > length ? value.substring(value.length - length) : value;
  }
  
  /// Get middle substring
  static String middle(String? value, int start, int length) {
    if (isNullOrEmpty(value)) return '';
    return value!.substring(start, start + length);
  }
  
  /// Get character at index
  static String charAt(String? value, int index) {
    if (isNullOrEmpty(value)) return '';
    if (index >= 0 && index < value!.length) {
      return value[index];
    }
    return '';
  }
  
  /// Get index of character
  static int indexOf(String? value, String char) {
    if (isNullOrEmpty(value)) return -1;
    return value!.indexOf(char);
  }
  
  /// Get last index of character
  static int lastIndexOf(String? value, String char) {
    if (isNullOrEmpty(value)) return -1;
    return value!.lastIndexOf(char);
  }
  
  /// Check if string is empty or whitespace only
  static bool isBlank(String? value) {
    return isNullOrEmpty(value) || value!.trim().isEmpty;
  }
  
  /// Check if string is not empty and not whitespace only
  static bool isNotBlank(String? value) {
    return !isBlank(value);
  }
  
  /// Get string length
  static int length(String? value) {
    return isNullOrEmpty(value) ? 0 : value!.length;
  }
  
  /// Check if string has minimum length
  static bool hasMinLength(String? value, int minLength) {
    return length(value) >= minLength;
  }
  
  /// Check if string has maximum length
  static bool hasMaxLength(String? value, int maxLength) {
    return length(value) <= maxLength;
  }
  
  /// Check if string has exact length
  static bool hasExactLength(String? value, int exactLength) {
    return length(value) == exactLength;
  }
  
  /// Check if string is between min and max length
  static bool isBetweenLength(String? value, int minLength, int maxLength) {
    final len = length(value);
    return len >= minLength && len <= maxLength;
  }
  
  /// Generate random string
  static String generateRandom(int length) {
    const chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
    final random = DateTime.now().millisecondsSinceEpoch;
    final buffer = StringBuffer();
    
    for (int i = 0; i < length; i++) {
      buffer.write(chars[random % chars.length]);
    }
    
    return buffer.toString();
  }
  
  /// Generate random alphanumeric string
  static String generateRandomAlphaNumeric(int length) {
    const chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
    final random = DateTime.now().millisecondsSinceEpoch;
    final buffer = StringBuffer();
    
    for (int i = 0; i < length; i++) {
      buffer.write(chars[random % chars.length]);
    }
    
    return buffer.toString();
  }
  
  /// Generate random numeric string
  static String generateRandomNumeric(int length) {
    const chars = '0123456789';
    final random = DateTime.now().millisecondsSinceEpoch;
    final buffer = StringBuffer();
    
    for (int i = 0; i < length; i++) {
      buffer.write(chars[random % chars.length]);
    }
    
    return buffer.toString();
  }
  
  /// Generate random alphabetic string
  static String generateRandomAlphabetic(int length) {
    const chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz';
    final random = DateTime.now().millisecondsSinceEpoch;
    final buffer = StringBuffer();
    
    for (int i = 0; i < length; i++) {
      buffer.write(chars[random % chars.length]);
    }
    
    return buffer.toString();
  }
}
