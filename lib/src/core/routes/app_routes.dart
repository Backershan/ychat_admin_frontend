class AppRoutes {
  // Authentication routes
  static const String login = '/login';
  static const String register = '/register';
  
  // Main app routes
  static const String home = '/';
  static const String dashboard = '/dashboard';
  static const String profile = '/profile';
  static const String settings = '/settings';
  static const String userManagement = '/users';
  static const String ticketing = '/tickets';
  static const String appManagement = '/apps';
  
  // Nested routes
  static const String userDetails = '/users/:userId';
  static const String ticketDetails = '/tickets/:ticketId';
  static const String appDetails = '/apps/:appId';
  
  // Settings sub-routes
  static const String accountSettings = '/settings/account';
  static const String notificationSettings = '/settings/notifications';
  static const String privacySettings = '/settings/privacy';
  
  // Error routes
  static const String notFound = '/404';
  static const String unauthorized = '/401';
}

class AppRouteNames {
  // Authentication
  static const String login = 'login';
  static const String register = 'register';
  
  // Main app
  static const String home = 'home';
  static const String dashboard = 'dashboard';
  static const String profile = 'profile';
  static const String settings = 'settings';
  static const String userManagement = 'userManagement';
  static const String ticketing = 'ticketing';
  static const String appManagement = 'appManagement';
  
  // Nested routes
  static const String userDetails = 'userDetails';
  static const String ticketDetails = 'ticketDetails';
  static const String appDetails = 'appDetails';
  
  // Settings sub-routes
  static const String accountSettings = 'accountSettings';
  static const String notificationSettings = 'notificationSettings';
  static const String privacySettings = 'privacySettings';
  
  // Error routes
  static const String notFound = 'notFound';
  static const String unauthorized = 'unauthorized';
}
