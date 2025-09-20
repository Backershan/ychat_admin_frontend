import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:y_chat_admin/src/core/di/injection.dart';

/// Test configuration setup
class TestConfig {
  static bool _isInitialized = false;

  /// Initialize test configuration
  static Future<void> initialize() async {
    if (_isInitialized) return;

    // Initialize dependency injection for tests
    await configureDependencies();
    
    _isInitialized = true;
  }

  /// Reset test configuration
  static void reset() {
    _isInitialized = false;
  }

  /// Check if test configuration is initialized
  static bool get isInitialized => _isInitialized;
}

/// Test helper functions
class TestHelpers {
  /// Create a test widget with proper setup
  static Widget createTestWidget(Widget child) {
    return MaterialApp(
      home: child,
      debugShowCheckedModeBanner: false,
    );
  }

  /// Create a test widget with theme
  static Widget createTestWidgetWithTheme(Widget child) {
    return MaterialApp(
      home: child,
      theme: ThemeData.light(),
      // darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
    );
  }

  /// Create a test widget with BlocProvider
  static Widget createTestWidgetWithBloc<T extends StateStreamableSource<Object?>>(
    Widget child,
    T bloc,
  ) {
    return MaterialApp(
      home: BlocProvider<T>(
        create: (context) => bloc,
        child: child,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
