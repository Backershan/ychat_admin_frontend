import '../models/settings_model.dart';

class SettingsJsonConverter {
  static Map<String, dynamic> convertSnakeCaseToCamelCase(Map<String, dynamic> json) {
    final Map<String, dynamic> converted = {};
    
    // Convert main fields with defaults
    converted['enableScreenShare'] = json['enable_screen_share'] ?? true;
    converted['enableAppInApp'] = json['enable_app_in_app'] ?? false;
    converted['pushNotifications'] = json['push_notifications'] ?? true;
    converted['defaultLanguage'] = json['default_language'] ?? 'en';
    converted['maintenanceMode'] = json['maintenance_mode'] ?? false;
    converted['registrationEnabled'] = json['registration_enabled'] ?? true;
    converted['maxFileSize'] = json['max_file_size']?.toString() ?? '10485760';
    converted['maxUsersPerGroup'] = json['max_users_per_group'] ?? 100;
    converted['autoBackupEnabled'] = json['auto_backup_enabled'] ?? true;
    
    // Convert security features with defaults
    if (json['security_features'] != null) {
      final securityFeatures = json['security_features'] as Map<String, dynamic>;
      converted['securityFeatures'] = {
        'twoFactorRequired': securityFeatures['two_factor_required'] ?? false,
        'passwordPolicy': securityFeatures['password_policy'] ?? 'medium',
        'sessionTimeout': securityFeatures['session_timeout'] ?? 3600,
      };
    } else {
      // Default security features
      converted['securityFeatures'] = {
        'twoFactorRequired': false,
        'passwordPolicy': 'medium',
        'sessionTimeout': 3600,
      };
    }
    
    // Convert system info with defaults
    if (json['system_info'] != null) {
      final systemInfo = json['system_info'] as Map<String, dynamic>;
      converted['systemInfo'] = {
        'version': systemInfo['version'] ?? '1.0.0',
        'lastUpdated': systemInfo['last_updated'] ?? DateTime.now().toIso8601String(),
        'uptime': (systemInfo['uptime'] ?? 0.0).toDouble(),
      };
    } else {
      // Default system info
      converted['systemInfo'] = {
        'version': '1.0.0',
        'lastUpdated': DateTime.now().toIso8601String(),
        'uptime': 0.0,
      };
    }
    
    return converted;
  }
  
  static SettingsModel parseSettingsResponse(Map<String, dynamic> json) {
    // Handle direct settings response (your API format)
    if (json.containsKey('enable_screen_share') || json.containsKey('enableScreenShare')) {
      final convertedData = convertSnakeCaseToCamelCase(json);
      
      return SettingsModel(
        success: true,
        data: SettingsDataModel.fromJson(convertedData),
      );
    }
    
    // Handle nested response format (fallback)
    if (json['success'] == true && json['data'] != null) {
      final data = json['data'] as Map<String, dynamic>;
      final convertedData = convertSnakeCaseToCamelCase(data);
      
      return SettingsModel(
        success: json['success'],
        data: SettingsDataModel.fromJson(convertedData),
      );
    }
    
    throw Exception('Invalid settings response format');
  }
}
