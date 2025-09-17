# 🚀 Y Chat Admin - Project Rules & Guidelines

## 📋 **Core Architecture Principles**

### 1. **State Management**
- ✅ **MUST USE**: Freezed + Bloc for all state management
- ✅ **MUST USE**: `@freezed` annotation for all entities, states, and events
- ✅ **MUST USE**: `@immutable` classes with `copyWith` methods
- ❌ **NEVER USE**: Provider, Riverpod, or other state management solutions
- ❌ **NEVER USE**: setState() for complex state management

### 2. **Routing**
- ✅ **MUST USE**: GoRouter for all navigation
- ✅ **MUST USE**: Declarative routing with `GoRoute` definitions
- ✅ **MUST USE**: Route guards and redirects for authentication
- ❌ **NEVER USE**: Navigator.push() or Navigator.pushNamed()
- ❌ **NEVER USE**: MaterialPageRoute or CupertinoPageRoute directly

### 3. **Project Structure**
- ✅ **MUST FOLLOW**: Feature-based architecture
- ✅ **MUST USE**: Clean Architecture layers (presentation, domain, data)
- ✅ **MUST USE**: Dependency injection with GetIt
- ✅ **MUST USE**: Repository pattern for data access

## 🏗️ **Project Structure Standards**

```
lib/
├── main.dart
└── src/
    ├── core/                    # Shared core functionality
    │   ├── api/                 # API configuration
    │   ├── constants/           # App constants
    │   ├── di/                  # Dependency injection
    │   ├── interceptors/        # Dio interceptors
    │   ├── routes/              # GoRouter configuration
    │   ├── services/            # Core services
    │   ├── theme/               # App theming
    │   ├── utils/               # Utility functions
    │   └── widgets/             # Reusable core widgets
    ├── features/                # Feature modules
    │   └── [feature_name]/
    │       ├── data/            # Data layer
    │       │   ├── datasources/ # Remote/local data sources
    │       │   └── repositories/ # Repository implementations
    │       ├── domain/          # Domain layer
    │       │   ├── entities/    # Domain entities (Freezed)
    │       │   ├── repositories/ # Repository interfaces
    │       │   └── usecases/    # Business logic use cases
    │       └── presentation/    # Presentation layer
    │           ├── bloc/        # Bloc files (Freezed)
    │           ├── pages/       # UI pages
    │           └── widgets/     # Feature-specific widgets
    └── shared/                  # Shared across features
        ├── models/              # Shared models (Freezed)
        └── widgets/             # Shared reusable widgets
```

## 🎯 **Feature Development Rules**

### 1. **New Feature Checklist**
- [ ] Create feature folder under `lib/src/features/`
- [ ] Implement all three layers (data, domain, presentation)
- [ ] Use Freezed for all entities, states, and events
- [ ] Create Bloc with proper event/state handling
- [ ] Add route to `app_router.dart`
- [ ] Register dependencies in `injection.dart`
- [ ] Create reusable widgets for UI components

### 2. **Entity Rules**
```dart
@freezed
class UserEntity with _$UserEntity {
  const factory UserEntity({
    required String id,
    required String email,
    required String name,
    String? avatar,
  }) = _UserEntity;
  
  factory UserEntity.fromJson(Map<String, dynamic> json) => _$UserEntityFromJson(json);
}
```

### 3. **Bloc Rules**
```dart
@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.loadUsers() = LoadUsersEvent;
  const factory UserEvent.addUser(UserEntity user) = AddUserEvent;
  const factory UserEvent.updateUser(UserEntity user) = UpdateUserEvent;
  const factory UserEvent.deleteUser(String userId) = DeleteUserEvent;
}

@freezed
class UserState with _$UserState {
  const factory UserState.initial() = _Initial;
  const factory UserState.loading() = _Loading;
  const factory UserState.loaded(List<UserEntity> users) = _Loaded;
  const factory UserState.error(String message) = _Error;
}
```

## 🧩 **Widget Development Rules**

### 1. **Reusable Widget Standards**
- ✅ **MUST BE**: Stateless widgets when possible
- ✅ **MUST USE**: `@immutable` annotation
- ✅ **MUST USE**: Proper parameter validation
- ✅ **MUST USE**: Consistent naming conventions
- ✅ **MUST USE**: ScreenUtil for responsive design

### 2. **Widget Naming Convention**
```dart
// Core widgets: [Purpose]Widget
class PrimaryButton extends StatelessWidget { }

// Feature widgets: [Feature][Purpose]Widget
class UserCardWidget extends StatelessWidget { }

// Page widgets: [Feature]Page
class UserManagementPage extends StatefulWidget { }
```

### 3. **Widget Structure Template**
```dart
@immutable
class CustomWidget extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;
  final Widget? child;
  
  const CustomWidget({
    super.key,
    required this.title,
    this.onTap,
    this.child,
  });
  
  @override
  Widget build(BuildContext context) {
    return Container(
      // Implementation
    );
  }
}
```

## 🚫 **Prohibited Practices**

### 1. **File Creation Rules**
- ❌ **NEVER CREATE**: Test flow files (`test_*.dart`)
- ❌ **NEVER CREATE**: Mock files (`mock_*.dart`)
- ❌ **NEVER CREATE**: Temporary files in `lib/`
- ❌ **NEVER CREATE**: Files outside the defined structure

### 2. **Code Quality Rules**
- ❌ **NEVER USE**: `print()` statements (use `developer.log()`)
- ❌ **NEVER USE**: `debugPrint()` in production code
- ❌ **NEVER USE**: Hardcoded strings (use constants)
- ❌ **NEVER USE**: Magic numbers (use named constants)

### 3. **Architecture Violations**
- ❌ **NEVER MIX**: Different state management solutions
- ❌ **NEVER SKIP**: Repository pattern for data access
- ❌ **NEVER BYPASS**: Dependency injection
- ❌ **NEVER HARDCODE**: API endpoints or configuration

## 🔧 **Development Workflow**

### 1. **Before Starting Work**
1. Check if feature already exists
2. Plan the three-layer architecture
3. Design the data flow
4. Identify reusable components

### 2. **During Development**
1. Follow the feature checklist
2. Use Freezed for all data classes
3. Create reusable widgets
4. Test with proper error handling

### 3. **Before Committing**
1. Run `flutter analyze`
2. Ensure no linting errors
3. Verify all tests pass
4. Check code follows project rules

## 📱 **UI/UX Standards**

### 1. **Responsive Design**
- ✅ **MUST USE**: ScreenUtil for all dimensions
- ✅ **MUST USE**: Responsive breakpoints
- ✅ **MUST USE**: Flexible layouts

### 2. **Theme Consistency**
- ✅ **MUST USE**: App theme colors
- ✅ **MUST USE**: Consistent spacing
- ✅ **MUST USE**: Standard typography

### 3. **Accessibility**
- ✅ **MUST USE**: Semantic labels
- ✅ **MUST USE**: Proper contrast ratios
- ✅ **MUST USE**: Screen reader support

## 🧪 **Testing Standards**

### 1. **Test File Organization**
```
test/
├── unit/                    # Unit tests
│   ├── features/           # Feature-specific tests
│   └── core/               # Core functionality tests
├── widget/                 # Widget tests
└── integration/            # Integration tests
```

### 2. **Test Naming Convention**
```dart
// Unit tests: [class_name]_test.dart
class UserRepositoryTest { }

// Widget tests: [widget_name]_test.dart
class UserCardWidgetTest { }

// Integration tests: [feature_name]_integration_test.dart
class UserManagementIntegrationTest { }
```

## 📚 **Documentation Standards**

### 1. **Code Documentation**
- ✅ **MUST DOCUMENT**: All public APIs
- ✅ **MUST DOCUMENT**: Complex business logic
- ✅ **MUST DOCUMENT**: Non-obvious implementations

### 2. **README Updates**
- ✅ **MUST UPDATE**: When adding new features
- ✅ **MUST UPDATE**: When changing architecture
- ✅ **MUST UPDATE**: When adding dependencies

## 🚀 **Performance Standards**

### 1. **Memory Management**
- ✅ **MUST USE**: Proper disposal of resources
- ✅ **MUST USE**: Lazy loading when appropriate
- ✅ **MUST USE**: Efficient data structures

### 2. **Build Performance**
- ✅ **MUST USE**: Const constructors
- ✅ **MUST USE**: Proper widget keys
- ✅ **MUST USE**: Efficient rebuilds

## 🔒 **Security Standards**

### 1. **Data Protection**
- ✅ **MUST USE**: Secure storage for sensitive data
- ✅ **MUST USE**: Proper input validation
- ✅ **MUST USE**: Secure API communication

### 2. **Authentication**
- ✅ **MUST USE**: Token-based authentication
- ✅ **MUST USE**: Proper session management
- ✅ **MUST USE**: Secure logout procedures

---

## 📝 **Quick Reference**

### **Command Checklist**
```bash
# Before starting work
flutter analyze
flutter test

# During development
flutter run -d chrome --web-port=8080

# Before committing
flutter analyze
flutter test
flutter build web
```

### **File Creation Template**
```dart
// For new entities
@freezed
class [Name]Entity with _$[Name]Entity {
  const factory [Name]Entity({
    // Properties
  }) = _[Name]Entity;
  
  factory [Name]Entity.fromJson(Map<String, dynamic> json) => _$[Name]EntityFromJson(json);
}

// For new blocs
@freezed
class [Name]Event with _$[Name]Event {
  const factory [Name]Event.[action]() = [Action]Event;
}

@freezed
class [Name]State with _$[Name]State {
  const factory [Name]State.initial() = _Initial;
  const factory [Name]State.loading() = _Loading;
  const factory [Name]State.loaded([Type] data) = _Loaded;
  const factory [Name]State.error(String message) = _Error;
}
```

---

**Remember**: These rules ensure consistency, maintainability, and scalability. Follow them religiously for a professional, production-ready codebase! 🎯
