// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DashboardModelImpl _$$DashboardModelImplFromJson(Map<String, dynamic> json) =>
    _$DashboardModelImpl(
      success: json['success'] as bool,
      data: DashboardDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DashboardModelImplToJson(
  _$DashboardModelImpl instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};

_$DashboardDataModelImpl _$$DashboardDataModelImplFromJson(
  Map<String, dynamic> json,
) => _$DashboardDataModelImpl(
  users: UsersModel.fromJson(json['users'] as Map<String, dynamic>),
  geographicalDistribution: GeographicalDistributionModel.fromJson(
    json['geographicalDistribution'] as Map<String, dynamic>,
  ),
  screenShares: ScreenSharesModel.fromJson(
    json['screenShares'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$$DashboardDataModelImplToJson(
  _$DashboardDataModelImpl instance,
) => <String, dynamic>{
  'users': instance.users,
  'geographicalDistribution': instance.geographicalDistribution,
  'screenShares': instance.screenShares,
};

_$UsersModelImpl _$$UsersModelImplFromJson(Map<String, dynamic> json) =>
    _$UsersModelImpl(
      total: (json['total'] as num).toInt(),
      active: (json['active'] as num).toInt(),
      daily: (json['daily'] as num).toInt(),
      monthly: (json['monthly'] as num).toInt(),
    );

Map<String, dynamic> _$$UsersModelImplToJson(_$UsersModelImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'active': instance.active,
      'daily': instance.daily,
      'monthly': instance.monthly,
    };

_$GeographicalDistributionModelImpl
_$$GeographicalDistributionModelImplFromJson(Map<String, dynamic> json) =>
    _$GeographicalDistributionModelImpl(
      byCountry: (json['byCountry'] as List<dynamic>)
          .map((e) => CountryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      byCity: (json['byCity'] as List<dynamic>)
          .map((e) => CityModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GeographicalDistributionModelImplToJson(
  _$GeographicalDistributionModelImpl instance,
) => <String, dynamic>{
  'byCountry': instance.byCountry,
  'byCity': instance.byCity,
};

_$CountryModelImpl _$$CountryModelImplFromJson(Map<String, dynamic> json) =>
    _$CountryModelImpl(
      country: json['country'] as String,
      count: (json['count'] as num).toInt(),
    );

Map<String, dynamic> _$$CountryModelImplToJson(_$CountryModelImpl instance) =>
    <String, dynamic>{'country': instance.country, 'count': instance.count};

_$CityModelImpl _$$CityModelImplFromJson(Map<String, dynamic> json) =>
    _$CityModelImpl(
      city: json['city'] as String,
      country: json['country'] as String,
      count: (json['count'] as num).toInt(),
    );

Map<String, dynamic> _$$CityModelImplToJson(_$CityModelImpl instance) =>
    <String, dynamic>{
      'city': instance.city,
      'country': instance.country,
      'count': instance.count,
    };

_$ScreenSharesModelImpl _$$ScreenSharesModelImplFromJson(
  Map<String, dynamic> json,
) => _$ScreenSharesModelImpl(
  total: (json['total'] as num).toInt(),
  daily: (json['daily'] as num).toInt(),
  monthly: (json['monthly'] as num).toInt(),
  averageDuration: (json['averageDuration'] as num).toInt(),
);

Map<String, dynamic> _$$ScreenSharesModelImplToJson(
  _$ScreenSharesModelImpl instance,
) => <String, dynamic>{
  'total': instance.total,
  'daily': instance.daily,
  'monthly': instance.monthly,
  'averageDuration': instance.averageDuration,
};
