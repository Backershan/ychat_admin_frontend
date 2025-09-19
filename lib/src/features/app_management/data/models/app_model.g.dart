// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppModelImpl _$$AppModelImplFromJson(Map<String, dynamic> json) =>
    _$AppModelImpl(
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

Map<String, dynamic> _$$AppModelImplToJson(_$AppModelImpl instance) =>
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

_$AppListModelImpl _$$AppListModelImplFromJson(Map<String, dynamic> json) =>
    _$AppListModelImpl(
      apps: (json['apps'] as List<dynamic>)
          .map((e) => AppModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: PaginationModel.fromJson(
        json['pagination'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$$AppListModelImplToJson(_$AppListModelImpl instance) =>
    <String, dynamic>{'apps': instance.apps, 'pagination': instance.pagination};

_$PaginationModelImpl _$$PaginationModelImplFromJson(
  Map<String, dynamic> json,
) => _$PaginationModelImpl(
  total: (json['total'] as num).toInt(),
  page: (json['page'] as num).toInt(),
  pages: (json['pages'] as num).toInt(),
  limit: (json['limit'] as num).toInt(),
);

Map<String, dynamic> _$$PaginationModelImplToJson(
  _$PaginationModelImpl instance,
) => <String, dynamic>{
  'total': instance.total,
  'page': instance.page,
  'pages': instance.pages,
  'limit': instance.limit,
};

_$CreateAppRequestModelImpl _$$CreateAppRequestModelImplFromJson(
  Map<String, dynamic> json,
) => _$CreateAppRequestModelImpl(
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

Map<String, dynamic> _$$CreateAppRequestModelImplToJson(
  _$CreateAppRequestModelImpl instance,
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

_$UpdateAppRequestModelImpl _$$UpdateAppRequestModelImplFromJson(
  Map<String, dynamic> json,
) => _$UpdateAppRequestModelImpl(
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

Map<String, dynamic> _$$UpdateAppRequestModelImplToJson(
  _$UpdateAppRequestModelImpl instance,
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

_$UpdateAppStatusRequestModelImpl _$$UpdateAppStatusRequestModelImplFromJson(
  Map<String, dynamic> json,
) => _$UpdateAppStatusRequestModelImpl(
  appId: (json['appId'] as num).toInt(),
  isActive: json['isActive'] as bool,
  isIntegrated: json['isIntegrated'] as bool,
);

Map<String, dynamic> _$$UpdateAppStatusRequestModelImplToJson(
  _$UpdateAppStatusRequestModelImpl instance,
) => <String, dynamic>{
  'appId': instance.appId,
  'isActive': instance.isActive,
  'isIntegrated': instance.isIntegrated,
};

_$DeleteAppRequestModelImpl _$$DeleteAppRequestModelImplFromJson(
  Map<String, dynamic> json,
) => _$DeleteAppRequestModelImpl(appId: (json['appId'] as num).toInt());

Map<String, dynamic> _$$DeleteAppRequestModelImplToJson(
  _$DeleteAppRequestModelImpl instance,
) => <String, dynamic>{'appId': instance.appId};

_$AppAnalyticsModelImpl _$$AppAnalyticsModelImplFromJson(
  Map<String, dynamic> json,
) => _$AppAnalyticsModelImpl(
  categories: (json['categories'] as List<dynamic>)
      .map((e) => CategoryAnalyticsModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  totalApps: (json['totalApps'] as num).toInt(),
  activeApps: (json['activeApps'] as num).toInt(),
  integratedApps: (json['integratedApps'] as num).toInt(),
);

Map<String, dynamic> _$$AppAnalyticsModelImplToJson(
  _$AppAnalyticsModelImpl instance,
) => <String, dynamic>{
  'categories': instance.categories,
  'totalApps': instance.totalApps,
  'activeApps': instance.activeApps,
  'integratedApps': instance.integratedApps,
};

_$CategoryAnalyticsModelImpl _$$CategoryAnalyticsModelImplFromJson(
  Map<String, dynamic> json,
) => _$CategoryAnalyticsModelImpl(
  category: json['category'] as String,
  count: (json['count'] as num).toInt(),
  activeCount: (json['activeCount'] as num).toInt(),
  integratedCount: (json['integratedCount'] as num).toInt(),
);

Map<String, dynamic> _$$CategoryAnalyticsModelImplToJson(
  _$CategoryAnalyticsModelImpl instance,
) => <String, dynamic>{
  'category': instance.category,
  'count': instance.count,
  'activeCount': instance.activeCount,
  'integratedCount': instance.integratedCount,
};
