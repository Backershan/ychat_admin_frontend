# 🧪 Testing Guide - Y Chat Admin

This guide provides comprehensive information about testing in the Y Chat Admin Flutter application.

## 📋 **Table of Contents**

- [Testing Overview](#testing-overview)
- [Test Structure](#test-structure)
- [Test Types](#test-types)
- [Running Tests](#running-tests)
- [Writing Tests](#writing-tests)
- [Test Best Practices](#test-best-practices)
- [Mocking](#mocking)
- [Test Coverage](#test-coverage)
- [CI/CD Integration](#cicd-integration)

## 🎯 **Testing Overview**

The Y Chat Admin application follows a comprehensive testing strategy that includes:

- **Unit Tests**: Testing individual functions, methods, and classes
- **Widget Tests**: Testing UI components and user interactions
- **Integration Tests**: Testing complete user flows and app behavior
- **Bloc Tests**: Testing state management logic

## 📁 **Test Structure**

```
test/
├── unit/                          # Unit tests
│   ├── features/                  # Feature-specific unit tests
│   │   ├── auth/
│   │   │   └── auth_bloc_test.dart
│   │   ├── dashboard/
│   │   │   └── dashboard_bloc_test.dart
│   │   └── ticketing/
│   │       └── ticket_bloc_test.dart
│   └── core/                      # Core functionality tests
│       └── utils/
│           ├── error_handler_test.dart
│           └── responsive_test.dart
├── widget/                        # Widget tests
│   └── features/
│       ├── auth/
│       │   └── login_page_test.dart
│       └── dashboard/
│           └── dashboard_page_test.dart
├── integration/                   # Integration tests
│   └── app_flow_test.dart
├── test_config.dart              # Test configuration
└── widget_test.dart              # Default widget test
```

## 🔧 **Test Types**

### **1. Unit Tests**

Unit tests focus on testing individual functions, methods, and classes in isolation.

**Example: AuthBloc Test**
```dart
test('should emit [loading, authenticated] when login is successful', () {
  // Arrange
  when(mockLoginUseCase(any))
      .thenAnswer((_) async => Right(tAuthEntity));
  
  // Act
  bloc.add(const AuthEvent.login(email: email, password: password));
  
  // Assert
  expectLater(
    bloc.stream,
    emitsInOrder([
      const AuthState.loading(),
      AuthState.authenticated(tAuthEntity),
    ]),
  );
});
```

### **2. Widget Tests**

Widget tests verify that UI components render correctly and respond to user interactions.

**Example: LoginPage Test**
```dart
testWidgets('should display login form with email and password fields', (tester) async {
  // Arrange
  when(mockAuthBloc.state).thenReturn(const AuthState.initial());
  
  // Act
  await tester.pumpWidget(createWidgetUnderTest());
  
  // Assert
  expect(find.byType(TextFormField), findsNWidgets(2));
  expect(find.text('Email'), findsOneWidget);
  expect(find.text('Password'), findsOneWidget);
});
```

### **3. Integration Tests**

Integration tests verify that the entire application works together correctly.

**Example: App Flow Test**
```dart
testWidgets('Complete user authentication flow', (tester) async {
  // Start the app
  app.main();
  await tester.pumpAndSettle();
  
  // Verify we start at login page
  expect(find.text('Login'), findsOneWidget);
  
  // Enter credentials and login
  await tester.enterText(find.byType(TextFormField).first, 'admin@example.com');
  await tester.enterText(find.byType(TextFormField).last, 'password123');
  await tester.tap(find.text('Login'));
  await tester.pumpAndSettle();
  
  // Verify navigation to dashboard
  expect(find.text('Dashboard'), findsOneWidget);
});
```

### **4. Bloc Tests**

Bloc tests verify state management logic using the `bloc_test` package.

**Example: DashboardBloc Test**
```dart
blocTest<DashboardBloc, DashboardState>(
  'emits [loading, loaded] when dashboard data is fetched successfully',
  build: () {
    when(mockGetDashboardDataUseCase(any))
        .thenAnswer((_) async => Right(tDashboardEntity));
    return dashboardBloc;
  },
  act: (bloc) => bloc.add(const GetDashboardDataEvent()),
  expect: () => [
    const DashboardState.loading(),
    DashboardState.loaded(tDashboardEntity),
  ],
);
```

## 🚀 **Running Tests**

### **Run All Tests**
```bash
flutter test
```

### **Run Specific Test File**
```bash
flutter test test/unit/features/auth/auth_bloc_test.dart
```

### **Run Tests with Coverage**
```bash
flutter test --coverage
```

### **Run Integration Tests**
```bash
flutter test integration_test/
```

### **Run Tests in Watch Mode**
```bash
flutter test --watch
```

### **Run Tests with Verbose Output**
```bash
flutter test --verbose
```

## ✍️ **Writing Tests**

### **1. Test Naming Convention**

Use descriptive test names that explain what is being tested:

```dart
// Good
test('should emit [loading, authenticated] when login is successful', () {});

// Bad
test('login test', () {});
```

### **2. Test Structure (AAA Pattern)**

Follow the Arrange-Act-Assert pattern:

```dart
test('should return user data when getUser is called', () {
  // Arrange
  const userId = '123';
  final expectedUser = User(id: userId, name: 'John Doe');
  when(mockUserRepository.getUser(userId))
      .thenAnswer((_) async => Right(expectedUser));
  
  // Act
  final result = await userUseCase.getUser(userId);
  
  // Assert
  expect(result, equals(Right(expectedUser)));
  verify(mockUserRepository.getUser(userId)).called(1);
});
```

### **3. Widget Test Structure**

```dart
testWidgets('should display error message when state is error', (tester) async {
  // Arrange
  when(mockBloc.state).thenReturn(const State.error('Error message'));
  
  // Act
  await tester.pumpWidget(createWidgetUnderTest());
  
  // Assert
  expect(find.text('Error message'), findsOneWidget);
  expect(find.byType(ErrorWidget), findsOneWidget);
});
```

## 🎯 **Test Best Practices**

### **1. Test Isolation**
- Each test should be independent
- Use `setUp()` and `tearDown()` for common setup
- Mock external dependencies

### **2. Descriptive Test Names**
- Use clear, descriptive test names
- Include the expected behavior
- Use "should" statements

### **3. Single Responsibility**
- Each test should test one specific behavior
- Avoid testing multiple things in one test
- Keep tests focused and simple

### **4. Proper Assertions**
- Use specific assertions
- Test both positive and negative cases
- Verify all expected outcomes

### **5. Mock External Dependencies**
- Mock API calls, databases, and external services
- Use dependency injection for testability
- Avoid testing implementation details

## 🎭 **Mocking**

### **1. Using Mockito**

Generate mocks using the `@GenerateMocks` annotation:

```dart
@GenerateMocks([LoginUseCase, RegisterUseCase])
void main() {
  late MockLoginUseCase mockLoginUseCase;
  late MockRegisterUseCase mockRegisterUseCase;
  
  setUp(() {
    mockLoginUseCase = MockLoginUseCase();
    mockRegisterUseCase = MockRegisterUseCase();
  });
}
```

### **2. Mocking Methods**

```dart
// Mock successful response
when(mockUseCase(any))
    .thenAnswer((_) async => Right(expectedResult));

// Mock error response
when(mockUseCase(any))
    .thenAnswer((_) async => const Left(ServerFailure('Error')));

// Verify method calls
verify(mockUseCase(any)).called(1);
verifyNever(mockUseCase(any));
```

### **3. Mocking Bloc States**

```dart
// Mock initial state
when(mockBloc.state).thenReturn(const State.initial());

// Mock loading state
when(mockBloc.state).thenReturn(const State.loading());

// Mock loaded state
when(mockBloc.state).thenReturn(State.loaded(data));
```

## 📊 **Test Coverage**

### **1. Coverage Goals**
- **Unit Tests**: 90%+ coverage
- **Widget Tests**: 80%+ coverage
- **Integration Tests**: Critical user flows

### **2. Coverage Commands**
```bash
# Generate coverage report
flutter test --coverage

# View coverage report
genhtml coverage/lcov.info -o coverage/html
open coverage/html/index.html
```

### **3. Coverage Analysis**
- Focus on business logic coverage
- Ensure critical paths are tested
- Don't aim for 100% coverage at the expense of test quality

## 🔄 **CI/CD Integration**

### **1. GitHub Actions Example**
```yaml
name: Tests
on: [push, pull_request]
jobs:
  test:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - uses: subosito/flutter-action@v2
      - run: flutter pub get
      - run: flutter test --coverage
      - uses: codecov/codecov-action@v1
```

### **2. Test Reports**
- Generate test reports for CI/CD
- Use coverage reports for quality gates
- Set up notifications for test failures

## 🛠️ **Test Utilities**

### **1. Test Configuration**
```dart
// test/test_config.dart
class TestConfig {
  static Future<void> initialize() async {
    await configureDependencies();
  }
}
```

### **2. Test Helpers**
```dart
// test/helpers/test_helpers.dart
class TestHelpers {
  static Widget createTestWidget(Widget child) {
    return MaterialApp(home: child);
  }
}
```

### **3. Mock Data**
```dart
// test/fixtures/mock_data.dart
class MockData {
  static const user = User(id: '1', name: 'Test User');
  static const authEntity = AuthEntity(/* ... */);
}
```

## 📝 **Test Documentation**

### **1. Test Comments**
- Document complex test scenarios
- Explain test setup and teardown
- Note any test-specific requirements

### **2. Test Organization**
- Group related tests using `group()`
- Use descriptive group names
- Organize tests by feature or functionality

### **3. Test Maintenance**
- Keep tests up to date with code changes
- Remove obsolete tests
- Refactor tests for better readability

## 🚨 **Common Testing Issues**

### **1. Async Testing**
```dart
// Use pumpAndSettle for async operations
await tester.pumpAndSettle();

// Use pump for single frame updates
await tester.pump();
```

### **2. State Management Testing**
```dart
// Test state changes
expectLater(
  bloc.stream,
  emitsInOrder([State1(), State2(), State3()]),
);
```

### **3. Widget Testing**
```dart
// Find widgets by type
expect(find.byType(TextFormField), findsNWidgets(2));

// Find widgets by text
expect(find.text('Login'), findsOneWidget);

// Find widgets by key
expect(find.byKey(Key('login_button')), findsOneWidget);
```

## 📚 **Additional Resources**

- [Flutter Testing Documentation](https://docs.flutter.dev/testing)
- [Bloc Testing Guide](https://bloclibrary.dev/#/testing)
- [Mockito Documentation](https://pub.dev/packages/mockito)
- [Widget Testing Cookbook](https://docs.flutter.dev/cookbook/testing/widget)

---

**Happy Testing! 🧪✨**
