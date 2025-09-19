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
      category: json['category'] as String,
      description: json['description'] as String,
      isActive: json['isActive'] as bool,
      version: json['version'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$AppModelImplToJson(_$AppModelImpl instance) =>
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

_$AppListModelImpl _$$AppListModelImplFromJson(Map<String, dynamic> json) =>
    _$AppListModelImpl(
      apps: (json['apps'] as List<dynamic>)
          .map((e) => AppModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: (json['total'] as num).toInt(),
      page: (json['page'] as num).toInt(),
      pages: (json['pages'] as num).toInt(),
      limit: (json['limit'] as num).toInt(),
    );

Map<String, dynamic> _$$AppListModelImplToJson(_$AppListModelImpl instance) =>
    <String, dynamic>{
      'apps': instance.apps,
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
  category: json['category'] as String,
  description: json['description'] as String,
  isActive: json['isActive'] as bool,
  version: json['version'] as String,
);

Map<String, dynamic> _$$CreateAppRequestModelImplToJson(
  _$CreateAppRequestModelImpl instance,
) => <String, dynamic>{
  'name': instance.name,
  'appKey': instance.appKey,
  'category': instance.category,
  'description': instance.description,
  'isActive': instance.isActive,
  'version': instance.version,
};

_$UpdateAppRequestModelImpl _$$UpdateAppRequestModelImplFromJson(
  Map<String, dynamic> json,
) => _$UpdateAppRequestModelImpl(
  appId: (json['appId'] as num).toInt(),
  name: json['name'] as String,
  description: json['description'] as String,
);

Map<String, dynamic> _$$UpdateAppRequestModelImplToJson(
  _$UpdateAppRequestModelImpl instance,
) => <String, dynamic>{
  'appId': instance.appId,
  'name': instance.name,
  'description': instance.description,
};

_$DeleteAppRequestModelImpl _$$DeleteAppRequestModelImplFromJson(
  Map<String, dynamic> json,
) => _$DeleteAppRequestModelImpl(appId: (json['appId'] as num).toInt());

Map<String, dynamic> _$$DeleteAppRequestModelImplToJson(
  _$DeleteAppRequestModelImpl instance,
) => <String, dynamic>{'appId': instance.appId};
