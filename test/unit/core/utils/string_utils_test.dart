import 'package:flutter_test/flutter_test.dart';
import 'package:y_chat_admin/src/core/utils/string_utils.dart';

void main() {
  group('StringUtils Tests', () {
    test('isValidEmail should return true for valid emails', () {
      expect(StringUtils.isValidEmail('test@example.com'), isTrue);
      expect(StringUtils.isValidEmail('user.name@domain.co.uk'), isTrue);
      expect(StringUtils.isValidEmail('admin@company.org'), isTrue);
    });

    test('isValidEmail should return false for invalid emails', () {
      expect(StringUtils.isValidEmail('invalid-email'), isFalse);
      expect(StringUtils.isValidEmail('@domain.com'), isFalse);
      expect(StringUtils.isValidEmail('user@'), isFalse);
      expect(StringUtils.isValidEmail(''), isFalse);
    });

    test('capitalize should capitalize first letter', () {
      expect(StringUtils.capitalize('hello'), equals('Hello'));
      expect(StringUtils.capitalize('world'), equals('World'));
      expect(StringUtils.capitalize(''), equals(''));
    });

    test('truncate should truncate long strings', () {
      expect(StringUtils.truncate('Hello World', 5), equals('Hello...'));
      expect(StringUtils.truncate('Short', 10), equals('Short'));
      expect(StringUtils.truncate('', 5), equals(''));
    });
  });
}
