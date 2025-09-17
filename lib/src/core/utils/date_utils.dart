import 'package:intl/intl.dart';
import 'package:y_chat_admin/src/core/constants/app_constants.dart';

/// Date utilities following project standards
class AppDateUtils {
  /// Format date to display format
  static String formatDate(DateTime? date) {
    if (date == null) return '';
    return DateFormat(AppConstants.displayDateFormat).format(date);
  }
  
  /// Format time to display format
  static String formatTime(DateTime? time) {
    if (time == null) return '';
    return DateFormat(AppConstants.displayTimeFormat).format(time);
  }
  
  /// Format date and time to display format
  static String formatDateTime(DateTime? dateTime) {
    if (dateTime == null) return '';
    return DateFormat(AppConstants.displayDateTimeFormat).format(dateTime);
  }
  
  /// Format date to API format
  static String formatDateForApi(DateTime? date) {
    if (date == null) return '';
    return DateFormat(AppConstants.dateFormat).format(date);
  }
  
  /// Format time to API format
  static String formatTimeForApi(DateTime? time) {
    if (time == null) return '';
    return DateFormat(AppConstants.timeFormat).format(time);
  }
  
  /// Format date and time to API format
  static String formatDateTimeForApi(DateTime? dateTime) {
    if (dateTime == null) return '';
    return DateFormat(AppConstants.dateTimeFormat).format(dateTime);
  }
  
  /// Parse date from string
  static DateTime? parseDate(String? dateString) {
    if (dateString == null || dateString.isEmpty) return null;
    try {
      return DateFormat(AppConstants.dateFormat).parse(dateString);
    } catch (e) {
      return null;
    }
  }
  
  /// Parse time from string
  static DateTime? parseTime(String? timeString) {
    if (timeString == null || timeString.isEmpty) return null;
    try {
      return DateFormat(AppConstants.timeFormat).parse(timeString);
    } catch (e) {
      return null;
    }
  }
  
  /// Parse date and time from string
  static DateTime? parseDateTime(String? dateTimeString) {
    if (dateTimeString == null || dateTimeString.isEmpty) return null;
    try {
      return DateFormat(AppConstants.dateTimeFormat).parse(dateTimeString);
    } catch (e) {
      return null;
    }
  }
  
  /// Get relative time (e.g., "2 hours ago", "3 days ago")
  static String getRelativeTime(DateTime? dateTime) {
    if (dateTime == null) return '';
    
    final now = DateTime.now();
    final difference = now.difference(dateTime);
    
    if (difference.inDays > 0) {
      return '${difference.inDays} day${difference.inDays == 1 ? '' : 's'} ago';
    } else if (difference.inHours > 0) {
      return '${difference.inHours} hour${difference.inHours == 1 ? '' : 's'} ago';
    } else if (difference.inMinutes > 0) {
      return '${difference.inMinutes} minute${difference.inMinutes == 1 ? '' : 's'} ago';
    } else {
      return 'Just now';
    }
  }
  
  /// Check if date is today
  static bool isToday(DateTime? date) {
    if (date == null) return false;
    final now = DateTime.now();
    return date.year == now.year && date.month == now.month && date.day == now.day;
  }
  
  /// Check if date is yesterday
  static bool isYesterday(DateTime? date) {
    if (date == null) return false;
    final yesterday = DateTime.now().subtract(const Duration(days: 1));
    return date.year == yesterday.year && date.month == yesterday.month && date.day == yesterday.day;
  }
  
  /// Check if date is tomorrow
  static bool isTomorrow(DateTime? date) {
    if (date == null) return false;
    final tomorrow = DateTime.now().add(const Duration(days: 1));
    return date.year == tomorrow.year && date.month == tomorrow.month && date.day == tomorrow.day;
  }
  
  /// Check if date is in the past
  static bool isPast(DateTime? date) {
    if (date == null) return false;
    return date.isBefore(DateTime.now());
  }
  
  /// Check if date is in the future
  static bool isFuture(DateTime? date) {
    if (date == null) return false;
    return date.isAfter(DateTime.now());
  }
  
  /// Get start of day
  static DateTime getStartOfDay(DateTime date) {
    return DateTime(date.year, date.month, date.day);
  }
  
  /// Get end of day
  static DateTime getEndOfDay(DateTime date) {
    return DateTime(date.year, date.month, date.day, 23, 59, 59, 999);
  }
  
  /// Get start of week
  static DateTime getStartOfWeek(DateTime date) {
    final weekday = date.weekday;
    return date.subtract(Duration(days: weekday - 1));
  }
  
  /// Get end of week
  static DateTime getEndOfWeek(DateTime date) {
    final weekday = date.weekday;
    return date.add(Duration(days: 7 - weekday));
  }
  
  /// Get start of month
  static DateTime getStartOfMonth(DateTime date) {
    return DateTime(date.year, date.month, 1);
  }
  
  /// Get end of month
  static DateTime getEndOfMonth(DateTime date) {
    return DateTime(date.year, date.month + 1, 0);
  }
  
  /// Get start of year
  static DateTime getStartOfYear(DateTime date) {
    return DateTime(date.year, 1, 1);
  }
  
  /// Get end of year
  static DateTime getEndOfYear(DateTime date) {
    return DateTime(date.year, 12, 31);
  }
  
  /// Add days to date
  static DateTime addDays(DateTime date, int days) {
    return date.add(Duration(days: days));
  }
  
  /// Subtract days from date
  static DateTime subtractDays(DateTime date, int days) {
    return date.subtract(Duration(days: days));
  }
  
  /// Add months to date
  static DateTime addMonths(DateTime date, int months) {
    return DateTime(date.year, date.month + months, date.day);
  }
  
  /// Subtract months from date
  static DateTime subtractMonths(DateTime date, int months) {
    return DateTime(date.year, date.month - months, date.day);
  }
  
  /// Add years to date
  static DateTime addYears(DateTime date, int years) {
    return DateTime(date.year + years, date.month, date.day);
  }
  
  /// Subtract years from date
  static DateTime subtractYears(DateTime date, int years) {
    return DateTime(date.year - years, date.month, date.day);
  }
  
  /// Get days between two dates
  static int getDaysBetween(DateTime start, DateTime end) {
    return end.difference(start).inDays;
  }
  
  /// Get hours between two dates
  static int getHoursBetween(DateTime start, DateTime end) {
    return end.difference(start).inHours;
  }
  
  /// Get minutes between two dates
  static int getMinutesBetween(DateTime start, DateTime end) {
    return end.difference(start).inMinutes;
  }
  
  /// Get seconds between two dates
  static int getSecondsBetween(DateTime start, DateTime end) {
    return end.difference(start).inSeconds;
  }
  
  /// Check if two dates are the same day
  static bool isSameDay(DateTime? date1, DateTime? date2) {
    if (date1 == null || date2 == null) return false;
    return date1.year == date2.year && date1.month == date2.month && date1.day == date2.day;
  }
  
  /// Check if two dates are the same month
  static bool isSameMonth(DateTime? date1, DateTime? date2) {
    if (date1 == null || date2 == null) return false;
    return date1.year == date2.year && date1.month == date2.month;
  }
  
  /// Check if two dates are the same year
  static bool isSameYear(DateTime? date1, DateTime? date2) {
    if (date1 == null || date2 == null) return false;
    return date1.year == date2.year;
  }
  
  /// Get age from birth date
  static int getAge(DateTime? birthDate) {
    if (birthDate == null) return 0;
    final now = DateTime.now();
    int age = now.year - birthDate.year;
    if (now.month < birthDate.month || (now.month == birthDate.month && now.day < birthDate.day)) {
      age--;
    }
    return age;
  }
  
  /// Get week number of year
  static int getWeekNumber(DateTime date) {
    final startOfYear = getStartOfYear(date);
    final daysSinceStart = date.difference(startOfYear).inDays;
    return (daysSinceStart / 7).ceil();
  }
  
  /// Get day of year
  static int getDayOfYear(DateTime date) {
    final startOfYear = getStartOfYear(date);
    return date.difference(startOfYear).inDays + 1;
  }
  
  /// Get quarter of year
  static int getQuarter(DateTime date) {
    return ((date.month - 1) / 3).floor() + 1;
  }
  
  /// Get month name
  static String getMonthName(DateTime date) {
    return DateFormat('MMMM').format(date);
  }
  
  /// Get month abbreviation
  static String getMonthAbbreviation(DateTime date) {
    return DateFormat('MMM').format(date);
  }
  
  /// Get weekday name
  static String getWeekdayName(DateTime date) {
    return DateFormat('EEEE').format(date);
  }
  
  /// Get weekday abbreviation
  static String getWeekdayAbbreviation(DateTime date) {
    return DateFormat('EEE').format(date);
  }
  
  /// Get timezone offset
  static Duration getTimezoneOffset(DateTime date) {
    return date.timeZoneOffset;
  }
  
  /// Convert to UTC
  static DateTime toUtc(DateTime date) {
    return date.toUtc();
  }
  
  /// Convert from UTC
  static DateTime fromUtc(DateTime date) {
    return date.toLocal();
  }
  
  /// Get current timestamp
  static int getCurrentTimestamp() {
    return DateTime.now().millisecondsSinceEpoch;
  }
  
  /// Convert timestamp to DateTime
  static DateTime fromTimestamp(int timestamp) {
    return DateTime.fromMillisecondsSinceEpoch(timestamp);
  }
  
  /// Convert DateTime to timestamp
  static int toTimestamp(DateTime date) {
    return date.millisecondsSinceEpoch;
  }
}
