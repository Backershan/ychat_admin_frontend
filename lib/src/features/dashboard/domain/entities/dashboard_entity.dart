import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_entity.freezed.dart';
part 'dashboard_entity.g.dart';

@freezed
class DashboardEntity with _$DashboardEntity {
  const factory DashboardEntity({
    required UsersData users,
    required GeographicalDistributionData geographicalDistribution,
    required ScreenSharesData screenShares,
  }) = _DashboardEntity;

  factory DashboardEntity.fromJson(Map<String, dynamic> json) =>
      _$DashboardEntityFromJson(json);
}

@freezed
class UsersData with _$UsersData {
  const factory UsersData({
    required int total,
    required int active,
    required int daily,
    required int monthly,
  }) = _UsersData;

  factory UsersData.fromJson(Map<String, dynamic> json) =>
      _$UsersDataFromJson(json);
}

@freezed
class GeographicalDistributionData with _$GeographicalDistributionData {
  const factory GeographicalDistributionData({
    required List<CountryData> byCountry,
    required List<CityData> byCity,
  }) = _GeographicalDistributionData;

  factory GeographicalDistributionData.fromJson(Map<String, dynamic> json) =>
      _$GeographicalDistributionDataFromJson(json);
}

@freezed
class CountryData with _$CountryData {
  const factory CountryData({
    required String country,
    required int count,
  }) = _CountryData;

  factory CountryData.fromJson(Map<String, dynamic> json) =>
      _$CountryDataFromJson(json);
}

@freezed
class CityData with _$CityData {
  const factory CityData({
    required String city,
    required String country,
    required int count,
  }) = _CityData;

  factory CityData.fromJson(Map<String, dynamic> json) =>
      _$CityDataFromJson(json);
}

@freezed
class ScreenSharesData with _$ScreenSharesData {
  const factory ScreenSharesData({
    required int total,
    required int daily,
    required int monthly,
    required int averageDuration,
  }) = _ScreenSharesData;

  factory ScreenSharesData.fromJson(Map<String, dynamic> json) =>
      _$ScreenSharesDataFromJson(json);
}

@freezed
class DashboardResponse with _$DashboardResponse {
  const factory DashboardResponse({
    required bool success,
    required DashboardEntity data,
  }) = _DashboardResponse;

  factory DashboardResponse.fromJson(Map<String, dynamic> json) =>
      _$DashboardResponseFromJson(json);
}
