import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:y_chat_admin/src/core/utils/error_handler.dart';
import 'package:y_chat_admin/src/shared/models/failure.dart';

void main() {
  group('ErrorHandler', () {
    group('handleError', () {
      testWidgets('should handle NetworkFailure correctly', (WidgetTester tester) async {
        // Arrange
        const failure = NetworkFailure(message: 'No internet connection');
        final scaffoldKey = GlobalKey<ScaffoldState>();
        
        await tester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              key: scaffoldKey,
              body: Container(),
            ),
          ),
        );
        
        // Act
        ErrorHandler.handleError(scaffoldKey.currentContext!, failure);
        await tester.pump();
        
        // Assert
        expect(find.byType(SnackBar), findsOneWidget);
        expect(find.text('Network Error'), findsOneWidget);
      });

      testWidgets('should handle ServerFailure correctly', (WidgetTester tester) async {
        // Arrange
        const failure = ServerFailure(message: 'Internal server error');
        final scaffoldKey = GlobalKey<ScaffoldState>();
        
        await tester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              key: scaffoldKey,
              body: Container(),
            ),
          ),
        );
        
        // Act
        ErrorHandler.handleError(scaffoldKey.currentContext!, failure);
        await tester.pump();
        
        // Assert
        expect(find.byType(SnackBar), findsOneWidget);
        expect(find.text('Server Error'), findsOneWidget);
      });

      testWidgets('should handle ValidationFailure correctly', (WidgetTester tester) async {
        // Arrange
        const failure = ValidationFailure(message: 'Invalid email format');
        final scaffoldKey = GlobalKey<ScaffoldState>();
        
        await tester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              key: scaffoldKey,
              body: Container(),
            ),
          ),
        );
        
        // Act
        ErrorHandler.handleError(scaffoldKey.currentContext!, failure);
        await tester.pump();
        
        // Assert
        expect(find.byType(SnackBar), findsOneWidget);
        expect(find.text('Validation Error'), findsOneWidget);
        expect(find.text('Invalid email format'), findsOneWidget);
      });

      testWidgets('should handle UnauthorizedFailure correctly', (WidgetTester tester) async {
        // Arrange
        const failure = UnauthorizedFailure(message: 'Invalid credentials');
        final scaffoldKey = GlobalKey<ScaffoldState>();
        
        await tester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              key: scaffoldKey,
              body: Container(),
            ),
          ),
        );
        
        // Act
        ErrorHandler.handleError(scaffoldKey.currentContext!, failure);
        await tester.pump();
        
        // Assert
        expect(find.byType(SnackBar), findsOneWidget);
        expect(find.text('Authentication Error'), findsOneWidget);
      });

      testWidgets('should handle ForbiddenFailure correctly', (WidgetTester tester) async {
        // Arrange
        const failure = ForbiddenFailure(message: 'Access denied');
        final scaffoldKey = GlobalKey<ScaffoldState>();
        
        await tester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              key: scaffoldKey,
              body: Container(),
            ),
          ),
        );
        
        // Act
        ErrorHandler.handleError(scaffoldKey.currentContext!, failure);
        await tester.pump();
        
        // Assert
        expect(find.byType(SnackBar), findsOneWidget);
        expect(find.text('Authorization Error'), findsOneWidget);
      });

      testWidgets('should handle Exception correctly', (WidgetTester tester) async {
        // Arrange
        final error = Exception('Unexpected error');
        final scaffoldKey = GlobalKey<ScaffoldState>();
        
        await tester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              key: scaffoldKey,
              body: Container(),
            ),
          ),
        );
        
        // Act
        ErrorHandler.handleError(scaffoldKey.currentContext!, error);
        await tester.pump();
        
        // Assert
        expect(find.byType(SnackBar), findsOneWidget);
        expect(find.text('Exception'), findsOneWidget);
      });
    });

    group('showSuccess', () {
      testWidgets('should display success message', (WidgetTester tester) async {
        // Arrange
        final scaffoldKey = GlobalKey<ScaffoldState>();
        
        await tester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              key: scaffoldKey,
              body: Container(),
            ),
          ),
        );
        
        // Act
        ErrorHandler.showSuccess(scaffoldKey.currentContext!, 'Operation successful');
        await tester.pump();
        
        // Assert
        expect(find.byType(SnackBar), findsOneWidget);
        expect(find.text('Operation successful'), findsOneWidget);
        expect(find.byIcon(Icons.check_circle), findsOneWidget);
      });
    });

    group('showWarning', () {
      testWidgets('should display warning message', (WidgetTester tester) async {
        // Arrange
        final scaffoldKey = GlobalKey<ScaffoldState>();
        
        await tester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              key: scaffoldKey,
              body: Container(),
            ),
          ),
        );
        
        // Act
        ErrorHandler.showWarning(scaffoldKey.currentContext!, 'Warning message');
        await tester.pump();
        
        // Assert
        expect(find.byType(SnackBar), findsOneWidget);
        expect(find.text('Warning message'), findsOneWidget);
        expect(find.byIcon(Icons.warning), findsOneWidget);
      });
    });

    group('showInfo', () {
      testWidgets('should display info message', (WidgetTester tester) async {
        // Arrange
        final scaffoldKey = GlobalKey<ScaffoldState>();
        
        await tester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              key: scaffoldKey,
              body: Container(),
            ),
          ),
        );
        
        // Act
        ErrorHandler.showInfo(scaffoldKey.currentContext!, 'Info message');
        await tester.pump();
        
        // Assert
        expect(find.byType(SnackBar), findsOneWidget);
        expect(find.text('Info message'), findsOneWidget);
        expect(find.byIcon(Icons.info), findsOneWidget);
      });
    });

    group('showConfirmation', () {
      testWidgets('should display confirmation dialog', (WidgetTester tester) async {
        // Arrange
        final scaffoldKey = GlobalKey<ScaffoldState>();
        
        await tester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              key: scaffoldKey,
              body: Container(),
            ),
          ),
        );
        
        // Act
        ErrorHandler.showConfirmation(
          scaffoldKey.currentContext!,
          title: 'Confirm Action',
          message: 'Are you sure?',
        );
        await tester.pump();
        
        // Assert
        expect(find.byType(AlertDialog), findsOneWidget);
        expect(find.text('Confirm Action'), findsOneWidget);
        expect(find.text('Are you sure?'), findsOneWidget);
        expect(find.text('Confirm'), findsOneWidget);
        expect(find.text('Cancel'), findsOneWidget);
      });
    });

    group('showLoading', () {
      testWidgets('should display loading dialog', (WidgetTester tester) async {
        // Arrange
        final scaffoldKey = GlobalKey<ScaffoldState>();
        
        await tester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              key: scaffoldKey,
              body: Container(),
            ),
          ),
        );
        
        // Act
        ErrorHandler.showLoading(scaffoldKey.currentContext!, message: 'Loading...');
        await tester.pump();
        
        // Assert
        expect(find.byType(AlertDialog), findsOneWidget);
        expect(find.byType(CircularProgressIndicator), findsOneWidget);
        expect(find.text('Loading...'), findsOneWidget);
      });
    });
  });
}
