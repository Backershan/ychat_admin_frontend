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
      category: json['category'] as String,
      description: json['description'] as String,
      isActive: json['isActive'] as bool,
      version: json['version'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$AppEntityImplToJson(_$AppEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'appKey': instance.appKey,
      'category': instance.category,
      'description': instance.description,
      'isActive': instance.isActive,
      'version': instance.version,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

_$AppListEntityImpl _$$AppListEntityImplFromJson(Map<String, dynamic> json) =>
    _$AppListEntityImpl(
      apps: (json['apps'] as List<dynamic>)
          .map((e) => AppEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: (json['total'] as num).toInt(),
      page: (json['page'] as num).toInt(),
      pages: (json['pages'] as num).toInt(),
      limit: (json['limit'] as num).toInt(),
    );

Map<String, dynamic> _$$AppListEntityImplToJson(_$AppListEntityImpl instance) =>
    <String, dynamic>{
      'apps': instance.apps,
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
  category: json['category'] as String,
  description: json['description'] as String,
  isActive: json['isActive'] as bool,
  version: json['version'] as String,
);

Map<String, dynamic> _$$CreateAppRequestImplToJson(
  _$CreateAppRequestImpl instance,
) => <String, dynamic>{
  'name': instance.name,
  'appKey': instance.appKey,
  'category': instance.category,
  'description': instance.description,
  'isActive': instance.isActive,
  'version': instance.version,
};

_$UpdateAppRequestImpl _$$UpdateAppRequestImplFromJson(
  Map<String, dynamic> json,
) => _$UpdateAppRequestImpl(
  appId: (json['appId'] as num).toInt(),
  name: json['name'] as String,
  description: json['description'] as String,
);

Map<String, dynamic> _$$UpdateAppRequestImplToJson(
  _$UpdateAppRequestImpl instance,
) => <String, dynamic>{
  'appId': instance.appId,
  'name': instance.name,
  'description': instance.description,
};

_$DeleteAppRequestImpl _$$DeleteAppRequestImplFromJson(
  Map<String, dynamic> json,
) => _$DeleteAppRequestImpl(appId: (json['appId'] as num).toInt());

Map<String, dynamic> _$$DeleteAppRequestImplToJson(
  _$DeleteAppRequestImpl instance,
) => <String, dynamic>{'appId': instance.appId};
