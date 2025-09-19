class AppJsonConverter {
  static Map<String, dynamic> convertAppResponse(Map<String, dynamic> json) {
    // Convert the apps array to handle permissions and category fields
    if (json.containsKey('apps') && json['apps'] is List) {
      final apps = (json['apps'] as List).map((app) {
        if (app is Map<String, dynamic>) {
          // Handle permissions field which can be null, empty object, or array
          List<String> permissions = ['read']; // Default permission
          if (app['permissions'] != null) {
            if (app['permissions'] is List) {
              permissions = List<String>.from(app['permissions']);
            } else if (app['permissions'] is Map) {
              // If it's an empty object, use default permission
              permissions = ['read'];
            }
          }
          
          // Handle category field which can be string or array
          List<String> category = ['general']; // Default category
          if (app['category'] != null) {
            if (app['category'] is List) {
              category = List<String>.from(app['category']);
            } else if (app['category'] is String) {
              // Convert string to array
              category = [app['category']];
            }
          }
          
          // Create a new app object with corrected fields
          return {
            ...app,
            'permissions': permissions,
            'category': category,
          };
        }
        return app;
      }).toList();
      
      return {
        ...json,
        'apps': apps,
      };
    }
    
    return json;
  }
}