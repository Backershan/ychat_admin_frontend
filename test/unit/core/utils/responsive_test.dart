import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:y_chat_admin/src/core/utils/responsive.dart';

void main() {
  group('Responsive Utils Tests', () {
    testWidgets('ResponsiveUtils.isMobile should work with BuildContext', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (context) {
              // Test with a small screen width (test default is 800x600)
              expect(ResponsiveUtils.isMobile(context), isFalse); // 800px is not mobile
              return Container();
            },
          ),
        ),
      );
    });

    testWidgets('ResponsiveUtils.isTablet should work with BuildContext', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (context) {
              // Test with a medium screen width
              expect(ResponsiveUtils.isTablet(context), isTrue); // 800px is tablet range
              return Container();
            },
          ),
        ),
      );
    });

    testWidgets('ResponsiveUtils.isDesktop should work with BuildContext', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (context) {
              // Test with a large screen width
              expect(ResponsiveUtils.isDesktop(context), isFalse); // 800px is not desktop
              return Container();
            },
          ),
        ),
      );
    });

    test('ResponsiveUtils class should exist', () {
      // Test that the class exists and can be referenced
      expect(ResponsiveUtils, isNotNull);
    });
  });
}
