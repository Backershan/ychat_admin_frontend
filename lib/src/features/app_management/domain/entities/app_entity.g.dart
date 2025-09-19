// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppEntityImpl _$$AppEntityImplFromJson(Map<String, dynamic> json) =>
    _$AppEntityImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      appKey: json['appKey'] as String,
      iconUrl: json['iconUrl'] as String?,
      category: (json['category'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      description: json['description'] as String,
      isActive: json['isActive'] as bool,
      isIntegrated: json['isIntegrated'] as bool,
      version: json['version'] as String,
      permissions: (json['permissions'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      integrationConfig: json['integrationConfig'] as Map<String, dynamic>?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$AppEntityImplToJson(_$AppEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'appKey': instance.appKey,
      'iconUrl': instance.iconUrl,
      'category': instance.category,
      'description': instance.description,
      'isActive': instance.isActive,
      'isIntegrated': instance.isIntegrated,
      'version': instance.version,
      'permissions': instance.permissions,
      'integrationConfig': instance.integrationConfig,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

_$AppListEntityImpl _$$AppListEntityImplFromJson(Map<String, dynamic> json) =>
    _$AppListEntityImpl(
      apps: (json['apps'] as List<dynamic>)
          .map((e) => AppEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: PaginationEntity.fromJson(
        json['pagination'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$$AppListEntityImplToJson(_$AppListEntityImpl instance) =>
    <String, dynamic>{'apps': instance.apps, 'pagination': instance.pagination};

_$PaginationEntityImpl _$$PaginationEntityImplFromJson(
  Map<String, dynamic> json,
) => _$PaginationEntityImpl(
  total: (json['total'] as num).toInt(),
  page: (json['page'] as num).toInt(),
  pages: (json['pages'] as num).toInt(),
  limit: (json['limit'] as num).toInt(),
);

Map<String, dynamic> _$$PaginationEntityImplToJson(
  _$PaginationEntityImpl instance,
) => <String, dynamic>{
  'total': instance.total,
  'page': instance.page,
  'pages': instance.pages,
  'limit': instance.limit,
};

_$CreateAppRequestImpl _$$CreateAppRequestImplFromJson(
  Map<String, dynamic> json,
) => _$CreateAppRequestImpl(
  name: json['name'] as String,
  appKey: json['appKey'] as String,
  iconUrl: json['iconUrl'] as String?,
  category: (json['category'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  description: json['description'] as String,
  isActive: json['isActive'] as bool,
  isIntegrated: json['isIntegrated'] as bool,
  version: json['version'] as String,
  permissions: (json['permissions'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  integrationConfig: json['integrationConfig'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$$CreateAppRequestImplToJson(
  _$CreateAppRequestImpl instance,
) => <String, dynamic>{
  'name': instance.name,
  'appKey': instance.appKey,
  'iconUrl': instance.iconUrl,
  'category': instance.category,
  'description': instance.description,
  'isActive': instance.isActive,
  'isIntegrated': instance.isIntegrated,
  'version': instance.version,
  'permissions': instance.permissions,
  'integrationConfig': instance.integrationConfig,
};

_$UpdateAppRequestImpl _$$UpdateAppRequestImplFromJson(
  Map<String, dynamic> json,
) => _$UpdateAppRequestImpl(
  appId: (json['appId'] as num).toInt(),
  name: json['name'] as String?,
  description: json['description'] as String?,
  category: (json['category'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  isActive: json['isActive'] as bool?,
  isIntegrated: json['isIntegrated'] as bool?,
  version: json['version'] as String?,
  permissions: (json['permissions'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  integrationConfig: json['integrationConfig'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$$UpdateAppRequestImplToJson(
  _$UpdateAppRequestImpl instance,
) => <String, dynamic>{
  'appId': instance.appId,
  'name': instance.name,
  'description': instance.description,
  'category': instance.category,
  'isActive': instance.isActive,
  'isIntegrated': instance.isIntegrated,
  'version': instance.version,
  'permissions': instance.permissions,
  'integrationConfig': instance.integrationConfig,
};

_$UpdateAppStatusRequestImpl _$$UpdateAppStatusRequestImplFromJson(
  Map<String, dynamic> json,
) => _$UpdateAppStatusRequestImpl(
  appId: (json['appId'] as num).toInt(),
  isActive: json['isActive'] as bool,
  isIntegrated: json['isIntegrated'] as bool,
);

Map<String, dynamic> _$$UpdateAppStatusRequestImplToJson(
  _$UpdateAppStatusRequestImpl instance,
) => <String, dynamic>{
  'appId': instance.appId,
  'isActive': instance.isActive,
  'isIntegrated': instance.isIntegrated,
};

_$DeleteAppRequestImpl _$$DeleteAppRequestImplFromJson(
  Map<String, dynamic> json,
) => _$DeleteAppRequestImpl(appId: (json['appId'] as num).toInt());

Map<String, dynamic> _$$DeleteAppRequestImplToJson(
  _$DeleteAppRequestImpl instance,
) => <String, dynamic>{'appId': instance.appId};

_$AppAnalyticsEntityImpl _$$AppAnalyticsEntityImplFromJson(
  Map<String, dynamic> json,
) => _$AppAnalyticsEntityImpl(
  categories: (json['categories'] as List<dynamic>)
      .map((e) => CategoryAnalyticsEntity.fromJson(e as Map<String, dynamic>))
      .toList(),
  totalApps: (json['totalApps'] as num).toInt(),
  activeApps: (json['activeApps'] as num).toInt(),
  integratedApps: (json['integratedApps'] as num).toInt(),
);

Map<String, dynamic> _$$AppAnalyticsEntityImplToJson(
  _$AppAnalyticsEntityImpl instance,
) => <String, dynamic>{
  'categories': instance.categories,
  'totalApps': instance.totalApps,
  'activeApps': instance.activeApps,
  'integratedApps': instance.integratedApps,
};

_$CategoryAnalyticsEntityImpl _$$CategoryAnalyticsEntityImplFromJson(
  Map<String, dynamic> json,
) => _$CategoryAnalyticsEntityImpl(
  category: json['category'] as String,
  count: (json['count'] as num).toInt(),
  activeCount: (json['activeCount'] as num).toInt(),
  integratedCount: (json['integratedCount'] as num).toInt(),
);

Map<String, dynamic> _$$CategoryAnalyticsEntityImplToJson(
  _$CategoryAnalyticsEntityImpl instance,
) => <String, dynamic>{
  'category': instance.category,
  'count': instance.count,
  'activeCount': instance.activeCount,
  'integratedCount': instance.integratedCount,
};
