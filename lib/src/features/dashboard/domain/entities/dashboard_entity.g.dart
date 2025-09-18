// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DashboardEntityImpl _$$DashboardEntityImplFromJson(
  Map<String, dynamic> json,
) => _$DashboardEntityImpl(
  users: UsersData.fromJson(json['users'] as Map<String, dynamic>),
  geographicalDistribution: GeographicalDistributionData.fromJson(
    json['geographicalDistribution'] as Map<String, dynamic>,
  ),
  screenShares: ScreenSharesData.fromJson(
    json['screenShares'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$$DashboardEntityImplToJson(
  _$DashboardEntityImpl instance,
) => <String, dynamic>{
  'users': instance.users,
  'geographicalDistribution': instance.geographicalDistribution,
  'screenShares': instance.screenShares,
};

_$UsersDataImpl _$$UsersDataImplFromJson(Map<String, dynamic> json) =>
    _$UsersDataImpl(
      total: (json['total'] as num).toInt(),
      active: (json['active'] as num).toInt(),
      daily: (json['daily'] as num).toInt(),
      monthly: (json['monthly'] as num).toInt(),
    );

Map<String, dynamic> _$$UsersDataImplToJson(_$UsersDataImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'active': instance.active,
      'daily': instance.daily,
      'monthly': instance.monthly,
    };

_$GeographicalDistributionDataImpl _$$GeographicalDistributionDataImplFromJson(
  Map<String, dynamic> json,
) => _$GeographicalDistributionDataImpl(
  byCountry: (json['byCountry'] as List<dynamic>)
      .map((e) => CountryData.fromJson(e as Map<String, dynamic>))
      .toList(),
  byCity: (json['byCity'] as List<dynamic>)
      .map((e) => CityData.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$GeographicalDistributionDataImplToJson(
  _$GeographicalDistributionDataImpl instance,
) => <String, dynamic>{
  'byCountry': instance.byCountry,
  'byCity': instance.byCity,
};

_$CountryDataImpl _$$CountryDataImplFromJson(Map<String, dynamic> json) =>
    _$CountryDataImpl(
      country: json['country'] as String,
      count: (json['count'] as num).toInt(),
    );

Map<String, dynamic> _$$CountryDataImplToJson(_$CountryDataImpl instance) =>
    <String, dynamic>{'country': instance.country, 'count': instance.count};

_$CityDataImpl _$$CityDataImplFromJson(Map<String, dynamic> json) =>
    _$CityDataImpl(
      city: json['city'] as String,
      country: json['country'] as String,
      count: (json['count'] as num).toInt(),
    );

Map<String, dynamic> _$$CityDataImplToJson(_$CityDataImpl instance) =>
    <String, dynamic>{
      'city': instance.city,
      'country': instance.country,
      'count': instance.count,
    };

_$ScreenSharesDataImpl _$$ScreenSharesDataImplFromJson(
  Map<String, dynamic> json,
) => _$ScreenSharesDataImpl(
  total: (json['total'] as num).toInt(),
  daily: (json['daily'] as num).toInt(),
  monthly: (json['monthly'] as num).toInt(),
  averageDuration: (json['averageDuration'] as num).toInt(),
);

Map<String, dynamic> _$$ScreenSharesDataImplToJson(
  _$ScreenSharesDataImpl instance,
) => <String, dynamic>{
  'total': instance.total,
  'daily': instance.daily,
  'monthly': instance.monthly,
  'averageDuration': instance.averageDuration,
};

_$DashboardResponseImpl _$$DashboardResponseImplFromJson(
  Map<String, dynamic> json,
) => _$DashboardResponseImpl(
  success: json['success'] as bool,
  data: DashboardEntity.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$DashboardResponseImplToJson(
  _$DashboardResponseImpl instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};
