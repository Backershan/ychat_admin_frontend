# 🚀 Y Chat Admin - Flutter Admin Dashboard

A comprehensive Flutter-based admin dashboard for Y Chat application, built with modern architecture patterns and best practices.

## 📋 **Table of Contents**

- [Overview](#overview)
- [Features](#features)
- [Architecture](#architecture)
- [Tech Stack](#tech-stack)
- [Project Structure](#project-structure)
- [Getting Started](#getting-started)
- [Configuration](#configuration)
- [Development](#development)
- [Testing](#testing)
- [Deployment](#deployment)
- [Contributing](#contributing)

## 🎯 **Overview**

Y Chat Admin is a feature-rich admin dashboard built with Flutter that provides comprehensive management capabilities for the Y Chat application. It follows Clean Architecture principles and implements modern Flutter development patterns.

### **Key Highlights**
- 🏗️ **Clean Architecture** with proper separation of concerns
- 🎨 **Responsive Design** supporting mobile, tablet, and desktop
- 🔐 **Authentication & Authorization** with role-based access
- 📊 **Real-time Dashboard** with analytics and metrics
- 🎫 **Ticket Management** system with advanced filtering
- 👥 **User Management** with comprehensive user operations
- 📱 **App Management** for application lifecycle management
- ⚙️ **Settings Management** with offline support

## ✨ **Features**

### **🔐 Authentication & Security**
- Secure login/logout system
- Super admin registration
- Role-based access control
- Token-based authentication
- Session management
- Password change functionality

### **📊 Dashboard & Analytics**
- Real-time metrics and statistics
- Interactive charts and graphs
- User activity monitoring
- System performance indicators
- Customizable dashboard widgets

### **🎫 Ticket Management**
- Create, read, update, delete tickets
- Advanced filtering and search
- Status and priority management
- Category-based organization
- Reply and comment system
- Bulk operations

### **👥 User Management**
- User registration and management
- User activation/deactivation
- Ban/unban functionality
- User role management
- Profile management
- User analytics

### **📱 App Management**
- Application lifecycle management
- App creation and configuration
- Category-based organization
- App analytics and metrics
- Version management
- Status tracking

### **⚙️ Settings Management**
- System configuration
- Feature toggles
- Offline mode support
- Local storage fallback
- Real-time updates
- Export/import functionality

### **🎨 UI/UX Features**
- Modern Material Design 3
- Light theme support
- Responsive layout system
- Smooth animations
- Intuitive navigation
- Accessibility support

## 🏗️ **Architecture**

The project follows **Clean Architecture** principles with clear separation of concerns:

```
┌─────────────────────────────────────────────────────────────┐
│                    Presentation Layer                       │
│  ┌─────────────┐ ┌─────────────┐ ┌─────────────┐          │
│  │    Pages    │ │   Widgets   │ │    Bloc     │          │
│  └─────────────┘ └─────────────┘ └─────────────┘          │
└─────────────────────────────────────────────────────────────┘
┌─────────────────────────────────────────────────────────────┐
│                     Domain Layer                           │
│  ┌─────────────┐ ┌─────────────┐ ┌─────────────┐          │
│  │  Entities   │ │ Use Cases   │ │Repositories │          │
│  └─────────────┘ └─────────────┘ └─────────────┘          │
└─────────────────────────────────────────────────────────────┘
┌─────────────────────────────────────────────────────────────┐
│                      Data Layer                            │
│  ┌─────────────┐ ┌─────────────┐ ┌─────────────┐          │
│  │Data Sources │ │  Models     │ │Repositories │          │
│  └─────────────┘ └─────────────┘ └─────────────┘          │
└─────────────────────────────────────────────────────────────┘
```

### **Architecture Principles**
- **Dependency Inversion**: High-level modules don't depend on low-level modules
- **Single Responsibility**: Each class has one reason to change
- **Open/Closed**: Open for extension, closed for modification
- **Interface Segregation**: Clients shouldn't depend on unused interfaces

## 🛠️ **Tech Stack**

### **Core Framework**
- **Flutter**: ^3.8.1
- **Dart**: ^3.8.1

### **State Management**
- **Flutter Bloc**: ^8.1.6 - Predictable state management
- **Freezed**: ^2.5.7 - Code generation for immutable classes
- **Equatable**: ^2.0.5 - Value equality

### **Navigation & Routing**
- **GoRouter**: ^14.2.7 - Declarative routing

### **HTTP & Networking**
- **Dio**: ^5.4.0 - HTTP client
- **HTTP**: ^1.1.0 - Additional HTTP utilities

### **Dependency Injection**
- **GetIt**: ^7.7.0 - Service locator
- **Injectable**: ^2.4.2 - Code generation for DI

### **UI & Styling**
- **Flutter ScreenUtil**: ^5.9.3 - Responsive design
- **Google Fonts**: ^6.1.0 - Typography
- **FL Chart**: ^1.0.0 - Charts and graphs
- **Syncfusion Charts**: ^30.2.6+1 - Advanced charts

### **Data & Storage**
- **SharedPreferences**: ^2.2.1 - Local storage
- **Dartz**: ^0.10.1 - Functional programming

### **Utilities**
- **UUID**: ^4.5.1 - Unique identifiers
- **JSON Annotation**: ^4.9.0 - JSON serialization

## 📁 **Project Structure**

```
lib/
├── main.dart                          # Application entry point
└── src/
    ├── core/                          # Shared core functionality
    │   ├── api/                       # API configuration
    │   │   └── api_config.dart        # API endpoints and configuration
    │   ├── constants/                 # App constants
    │   │   ├── app_constants.dart     # Application constants
    │   │   └── constants.dart         # Design system constants
    │   ├── di/                        # Dependency injection
    │   │   └── injection.dart         # GetIt configuration
    │   ├── routes/                    # Navigation configuration
    │   │   ├── app_router.dart        # GoRouter setup
    │   │   └── app_routes.dart        # Route definitions
    │   ├── services/                  # Core services
    │   ├── theme/                     # App theming
    │   │   └── app_theme.dart         # Material Design 3 theme
    │   ├── utils/                     # Utility functions
    │   │   ├── responsive.dart        # Responsive utilities
    │   │   ├── logger.dart            # Logging system
    │   │   └── error_handler.dart     # Error handling
    │   └── widgets/                   # Reusable core widgets
    │       ├── app_wrapper.dart       # App wrapper with BlocProviders
    │       ├── navigation_system.dart # Navigation components
    │       └── layout_system.dart     # Layout components
    ├── features/                      # Feature modules
    │   ├── auth/                      # Authentication feature
    │   │   ├── data/                  # Data layer
    │   │   ├── domain/                # Domain layer
    │   │   └── presentation/          # Presentation layer
    │   ├── dashboard/                 # Dashboard feature
    │   ├── ticketing/                 # Ticket management
    │   ├── user_management/           # User management
    │   ├── app_management/            # App management
    │   ├── settings/                  # Settings management
    │   └── profile/                   # User profile
    └── shared/                        # Shared across features
        ├── models/                    # Shared models
        └── widgets/                   # Shared widgets
```

## 🚀 **Getting Started**

### **Prerequisites**
- Flutter SDK ^3.8.1
- Dart SDK ^3.8.1
- Android Studio / VS Code
- Git

### **Installation**

1. **Clone the repository**
   ```bash
   git clone <repository-url>
   cd ychat_admin_frontend
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Generate code**
   ```bash
   flutter packages pub run build_runner build
   ```

4. **Run the application**
   ```bash
   flutter run
   ```

### **Platform Support**
- ✅ **Web** - Full support with responsive design
- ✅ **Android** - Native Android support
- ✅ **iOS** - Native iOS support
- ✅ **Windows** - Desktop Windows support
- ✅ **macOS** - Desktop macOS support
- ✅ **Linux** - Desktop Linux support

## ⚙️ **Configuration**

### **Environment Variables**
The app supports environment-based configuration:

```bash
# Development
flutter run --dart-define=API_BASE_URL=http://localhost:3002/api

# Production
flutter run --dart-define=API_BASE_URL=https://api.yourdomain.com/api
```

### **API Configuration**
The app automatically detects the platform and uses appropriate base URLs:
- **Web**: `http://localhost:3002/api`
- **Mobile**: `http://10.0.2.2:3002/api`

### **Backend Requirements**
- Node.js backend running on port 3002
- CORS enabled for web development
- RESTful API endpoints
- JWT token authentication

## 🛠️ **Development**

### **Code Generation**
Run code generation after making changes to models or entities:

```bash
# Generate all code
flutter packages pub run build_runner build

# Watch for changes
flutter packages pub run build_runner watch

# Clean and rebuild
flutter packages pub run build_runner build --delete-conflicting-outputs
```

### **Architecture Guidelines**

#### **1. State Management**
- Use **Bloc** for all state management
- Use **Freezed** for all entities, states, and events
- Never use `setState()` for complex state

#### **2. Navigation**
- Use **GoRouter** for all navigation
- Define routes in `app_routes.dart`
- Use route guards for authentication

#### **3. API Calls**
- Use **Dio** for HTTP requests
- Implement proper error handling
- Use repository pattern for data access

#### **4. UI Development**
- Use **Flutter ScreenUtil** for responsive design
- Follow Material Design 3 guidelines
- Create reusable widgets

### **Development Commands**

```bash
# Run in debug mode
flutter run

# Run in release mode
flutter run --release

# Run on specific device
flutter run -d chrome
flutter run -d android
flutter run -d ios

# Build for production
flutter build web
flutter build apk
flutter build ios
```

## 🧪 **Testing**

### **Test Structure**
```
test/
├── unit/                    # Unit tests
│   ├── features/           # Feature-specific tests
│   └── core/               # Core functionality tests
├── widget/                 # Widget tests
└── integration/            # Integration tests
```

### **Running Tests**

```bash
# Run all tests
flutter test

# Run specific test file
flutter test test/unit/features/auth/auth_bloc_test.dart

# Run tests with coverage
flutter test --coverage
```

### **Test Coverage**
- Unit tests for business logic
- Widget tests for UI components
- Integration tests for user flows
- Mock external dependencies

## 📦 **Deployment**

### **Web Deployment**
```bash
# Build for web
flutter build web --release

# Deploy to hosting service
# Copy build/web/ contents to your web server
```

### **Mobile Deployment**
```bash
# Build Android APK
flutter build apk --release

# Build iOS
flutter build ios --release
```

### **Environment Configuration**
- Set up different configurations for dev/staging/prod
- Use environment variables for API URLs
- Configure proper security settings

## 🤝 **Contributing**

### **Development Workflow**
1. Fork the repository
2. Create a feature branch
3. Follow the coding standards
4. Write tests for new features
5. Submit a pull request

### **Coding Standards**
- Follow Dart/Flutter style guide
- Use meaningful variable and function names
- Write comprehensive comments
- Maintain test coverage above 80%

### **Commit Convention**
```
feat: add new feature
fix: bug fix
docs: documentation update
style: code formatting
refactor: code refactoring
test: add tests
chore: maintenance tasks
```

## 📄 **License**

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 📞 **Support**

For support and questions:
- Create an issue in the repository
- Contact the development team
- Check the documentation

## 🔄 **Changelog**

### **Version 1.0.0**
- Initial release
- Complete admin dashboard functionality
- Authentication system
- User management
- Ticket management
- App management
- Settings management
- Responsive design
- Dark/Light theme support

---

**Built with ❤️ using Flutter**
