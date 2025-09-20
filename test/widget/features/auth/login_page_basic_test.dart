import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Basic Widget Tests', () {
    testWidgets('MaterialApp should render without crashing', (WidgetTester tester) async {
      // Create a simple MaterialApp wrapper
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Center(
              child: Text('Test Widget'),
            ),
          ),
          debugShowCheckedModeBanner: false,
        ),
      );

      // Verify that the widget renders
      expect(find.text('Test Widget'), findsOneWidget);
    });

    testWidgets('TextField should render correctly', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: TextField(
              decoration: InputDecoration(
                labelText: 'Email',
              ),
            ),
          ),
          debugShowCheckedModeBanner: false,
        ),
      );

      // Look for text field
      expect(find.byType(TextField), findsOneWidget);
      expect(find.text('Email'), findsOneWidget);
    });

    testWidgets('ElevatedButton should render correctly', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: ElevatedButton(
              onPressed: () {},
              child: Text('Login'),
            ),
          ),
          debugShowCheckedModeBanner: false,
        ),
      );

      // Look for elevated button
      expect(find.byType(ElevatedButton), findsOneWidget);
      expect(find.text('Login'), findsOneWidget);
    });
  });
}
