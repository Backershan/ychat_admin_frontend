import '../models/settings_model.dart';

class SettingsJsonConverter {
  static Map<String, dynamic> convertSnakeCaseToCamelCase(Map<String, dynamic> json) {
    final Map<String, dynamic> converted = {};
    
    // Convert main fields
    converted['enableScreenShare'] = json['enable_screen_share'];
    converted['enableAppInApp'] = json['enable_app_in_app'];
    converted['pushNotifications'] = json['push_notifications'];
    converted['defaultLanguage'] = json['default_language'];
    converted['maintenanceMode'] = json['maintenance_mode'];
    converted['registrationEnabled'] = json['registration_enabled'];
    converted['maxFileSize'] = json['max_file_size'];
    converted['maxUsersPerGroup'] = json['max_users_per_group'];
    converted['autoBackupEnabled'] = json['auto_backup_enabled'];
    
    // Convert security features
    if (json['security_features'] != null) {
      final securityFeatures = json['security_features'] as Map<String, dynamic>;
      converted['securityFeatures'] = {
        'twoFactorRequired': securityFeatures['two_factor_required'],
        'passwordPolicy': securityFeatures['password_policy'],
        'sessionTimeout': securityFeatures['session_timeout'],
      };
    }
    
    // Convert system info
    if (json['system_info'] != null) {
      final systemInfo = json['system_info'] as Map<String, dynamic>;
      converted['systemInfo'] = {
        'version': systemInfo['version'],
        'lastUpdated': systemInfo['last_updated'],
        'uptime': systemInfo['uptime'],
      };
    }
    
    return converted;
  }
  
  static SettingsModel parseSettingsResponse(Map<String, dynamic> json) {
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
