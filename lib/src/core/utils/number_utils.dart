import 'dart:math' as math;

/// Number utilities following project standards
class NumberUtils {
  /// Check if number is null or zero
  static bool isNullOrZero(num? value) {
    return value == null || value == 0;
  }
  
  /// Check if number is not null and not zero
  static bool isNotNullOrZero(num? value) {
    return !isNullOrZero(value);
  }
  
  /// Get number or default value
  static num getNumberOrDefault(num? value, num defaultValue) {
    return value ?? defaultValue;
  }
  
  /// Check if number is positive
  static bool isPositive(num? value) {
    return value != null && value > 0;
  }
  
  /// Check if number is negative
  static bool isNegative(num? value) {
    return value != null && value < 0;
  }
  
  /// Check if number is zero
  static bool isZero(num? value) {
    return value != null && value == 0;
  }
  
  /// Check if number is even
  static bool isEven(int? value) {
    return value != null && value % 2 == 0;
  }
  
  /// Check if number is odd
  static bool isOdd(int? value) {
    return value != null && value % 2 != 0;
  }
  
  /// Check if number is integer
  static bool isInteger(num? value) {
    return value != null && value == value.round();
  }
  
  /// Check if number is decimal
  static bool isDecimal(num? value) {
    return value != null && value != value.round();
  }
  
  /// Round number to specified decimal places
  static double roundTo(num? value, int decimalPlaces) {
    if (value == null) return 0.0;
    final multiplier = math.pow(10, decimalPlaces);
    return (value * multiplier).round() / multiplier;
  }
  
  /// Round number to nearest integer
  static int roundToInt(num? value) {
    if (value == null) return 0;
    return value.round();
  }
  
  /// Round number up
  static int roundUp(num? value) {
    if (value == null) return 0;
    return value.ceil();
  }
  
  /// Round number down
  static int roundDown(num? value) {
    if (value == null) return 0;
    return value.floor();
  }
  
  /// Get absolute value
  static num abs(num? value) {
    if (value == null) return 0;
    return value.abs();
  }
  
  /// Get maximum value
  static num max(num? value1, num? value2) {
    if (value1 == null && value2 == null) return 0;
    if (value1 == null) return value2!;
    if (value2 == null) return value1;
    return math.max(value1, value2);
  }
  
  /// Get minimum value
  static num min(num? value1, num? value2) {
    if (value1 == null && value2 == null) return 0;
    if (value1 == null) return value2!;
    if (value2 == null) return value1;
    return math.min(value1, value2);
  }
  
  /// Clamp number between min and max
  static num clamp(num? value, num min, num max) {
    if (value == null) return min;
    return math.max(min, math.min(max, value));
  }
  
  /// Check if number is between min and max
  static bool isBetween(num? value, num min, num max) {
    if (value == null) return false;
    return value >= min && value <= max;
  }
  
  /// Check if number is greater than
  static bool isGreaterThan(num? value, num other) {
    if (value == null) return false;
    return value > other;
  }
  
  /// Check if number is less than
  static bool isLessThan(num? value, num other) {
    if (value == null) return false;
    return value < other;
  }
  
  /// Check if number is greater than or equal to
  static bool isGreaterThanOrEqual(num? value, num other) {
    if (value == null) return false;
    return value >= other;
  }
  
  /// Check if number is less than or equal to
  static bool isLessThanOrEqual(num? value, num other) {
    if (value == null) return false;
    return value <= other;
  }
  
  /// Add two numbers
  static num add(num? value1, num? value2) {
    if (value1 == null && value2 == null) return 0;
    if (value1 == null) return value2!;
    if (value2 == null) return value1;
    return value1 + value2;
  }
  
  /// Subtract two numbers
  static num subtract(num? value1, num? value2) {
    if (value1 == null && value2 == null) return 0;
    if (value1 == null) return -value2!;
    if (value2 == null) return value1;
    return value1 - value2;
  }
  
  /// Multiply two numbers
  static num multiply(num? value1, num? value2) {
    if (value1 == null || value2 == null) return 0;
    return value1 * value2;
  }
  
  /// Divide two numbers
  static num divide(num? value1, num? value2) {
    if (value1 == null || value2 == null) return 0;
    if (value2 == 0) return 0;
    return value1 / value2;
  }
  
  /// Get remainder of division
  static num remainder(num? value1, num? value2) {
    if (value1 == null || value2 == null) return 0;
    if (value2 == 0) return 0;
    return value1 % value2;
  }
  
  /// Get power of number
  static num power(num? value, num exponent) {
    if (value == null) return 0;
    return math.pow(value, exponent);
  }
  
  /// Get square root
  static double sqrt(num? value) {
    if (value == null || value < 0) return 0.0;
    return math.sqrt(value);
  }
  
  /// Get cube root
  static double cbrt(num? value) {
    if (value == null) return 0.0;
    return math.pow(value, 1/3).toDouble();
  }
  
  /// Get factorial
  static int factorial(int? value) {
    if (value == null || value < 0) return 0;
    if (value == 0 || value == 1) return 1;
    int result = 1;
    for (int i = 2; i <= value; i++) {
      result *= i;
    }
    return result;
  }
  
  /// Get percentage
  static double percentage(num? value, num total) {
    if (value == null || total == null || total == 0) return 0.0;
    return (value / total) * 100;
  }
  
  /// Get percentage of
  static double percentageOf(num? value, num percentage) {
    if (value == null || percentage == null) return 0.0;
    return (value * percentage) / 100;
  }
  
  /// Format number with commas
  static String formatWithCommas(num? value) {
    if (value == null) return '0';
    return value.toString().replaceAllMapped(
      RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
      (match) => '${match.group(1)},',
    );
  }
  
  /// Format number with currency symbol
  static String formatCurrency(num? value, {String symbol = '\$'}) {
    if (value == null) return '$symbol 0.00';
    return '$symbol ${formatWithCommas(value)}';
  }
  
  /// Format number with decimal places
  static String formatDecimal(num? value, int decimalPlaces) {
    if (value == null) return '0.${'0' * decimalPlaces}';
    return value.toStringAsFixed(decimalPlaces);
  }
  
  /// Format number as percentage
  static String formatPercentage(num? value, {int decimalPlaces = 2}) {
    if (value == null) return '0.00%';
    return '${formatDecimal(value, decimalPlaces)}%';
  }
  
  /// Format number with K, M, B suffixes
  static String formatCompact(num? value) {
    if (value == null) return '0';
    
    final absValue = value.abs();
    if (absValue < 1000) {
      return value.toString();
    } else if (absValue < 1000000) {
      return '${(value / 1000).toStringAsFixed(1)}K';
    } else if (absValue < 1000000000) {
      return '${(value / 1000000).toStringAsFixed(1)}M';
    } else {
      return '${(value / 1000000000).toStringAsFixed(1)}B';
    }
  }
  
  /// Generate random number between min and max
  static int randomInt(int min, int max) {
    final random = math.Random();
    return min + random.nextInt(max - min + 1);
  }
  
  /// Generate random double between min and max
  static double randomDouble(double min, double max) {
    final random = math.Random();
    return min + random.nextDouble() * (max - min);
  }
  
  /// Generate random number
  static num random(num min, num max) {
    final random = math.Random();
    return min + random.nextDouble() * (max - min);
  }
  
  /// Check if number is prime
  static bool isPrime(int? value) {
    if (value == null || value < 2) return false;
    if (value == 2) return true;
    if (value % 2 == 0) return false;
    
    for (int i = 3; i <= math.sqrt(value); i += 2) {
      if (value % i == 0) return false;
    }
    return true;
  }
  
  /// Get greatest common divisor
  static int gcd(int a, int b) {
    while (b != 0) {
      final temp = b;
      b = a % b;
      a = temp;
    }
    return a;
  }
  
  /// Get least common multiple
  static int lcm(int a, int b) {
    return (a * b) ~/ gcd(a, b);
  }
  
  /// Check if number is perfect square
  static bool isPerfectSquare(int? value) {
    if (value == null || value < 0) return false;
    final root = math.sqrt(value);
    return root == root.round();
  }
  
  /// Check if number is perfect cube
  static bool isPerfectCube(int? value) {
    if (value == null) return false;
    final root = math.pow(value, 1/3);
    return root == root.round();
  }
  
  /// Get sum of digits
  static int sumOfDigits(int? value) {
    if (value == null) return 0;
    int sum = 0;
    int num = value.abs();
    while (num > 0) {
      sum += num % 10;
      num ~/= 10;
    }
    return sum;
  }
  
  /// Get number of digits
  static int numberOfDigits(int? value) {
    if (value == null) return 0;
    if (value == 0) return 1;
    return (math.log(value.abs()) / math.ln10).floor() + 1;
  }
  
  /// Reverse number
  static int reverse(int? value) {
    if (value == null) return 0;
    int reversed = 0;
    int num = value.abs();
    while (num > 0) {
      reversed = reversed * 10 + num % 10;
      num ~/= 10;
    }
    return value < 0 ? -reversed : reversed;
  }
  
  /// Check if number is palindrome
  static bool isPalindrome(int? value) {
    if (value == null) return false;
    return value == reverse(value);
  }
  
  /// Get fibonacci number at index
  static int fibonacci(int index) {
    if (index < 0) return 0;
    if (index <= 1) return index;
    
    int a = 0, b = 1;
    for (int i = 2; i <= index; i++) {
      final temp = a + b;
      a = b;
      b = temp;
    }
    return b;
  }
  
  /// Check if number is fibonacci
  static bool isFibonacci(int? value) {
    if (value == null || value < 0) return false;
    return isPerfectSquare(5 * value * value + 4) || isPerfectSquare(5 * value * value - 4);
  }
  
  /// Get average of numbers
  static double average(List<num> numbers) {
    if (numbers.isEmpty) return 0.0;
    return numbers.reduce((a, b) => a + b) / numbers.length;
  }
  
  /// Get median of numbers
  static double median(List<num> numbers) {
    if (numbers.isEmpty) return 0.0;
    numbers.sort();
    final middle = numbers.length ~/ 2;
    if (numbers.length % 2 == 1) {
      return numbers[middle].toDouble();
    } else {
      return (numbers[middle - 1] + numbers[middle]) / 2;
    }
  }
  
  /// Get mode of numbers
  static num mode(List<num> numbers) {
    if (numbers.isEmpty) return 0;
    final frequency = <num, int>{};
    for (final number in numbers) {
      frequency[number] = (frequency[number] ?? 0) + 1;
    }
    return frequency.entries.reduce((a, b) => a.value > b.value ? a : b).key;
  }
  
  /// Get range of numbers
  static num range(List<num> numbers) {
    if (numbers.isEmpty) return 0;
    return numbers.reduce(max) - numbers.reduce(min);
  }
  
  /// Get standard deviation
  static double standardDeviation(List<num> numbers) {
    if (numbers.isEmpty) return 0.0;
    final mean = average(numbers);
    final variance = numbers.map((x) => math.pow(x - mean, 2)).reduce((a, b) => a + b) / numbers.length;
    return math.sqrt(variance);
  }
}
