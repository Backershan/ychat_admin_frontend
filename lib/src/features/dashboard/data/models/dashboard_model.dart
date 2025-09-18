import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/dashboard_entity.dart';

part 'dashboard_model.freezed.dart';
part 'dashboard_model.g.dart';

@freezed
class DashboardModel with _$DashboardModel {
  const factory DashboardModel({
    required bool success,
    required DashboardDataModel data,
  }) = _DashboardModel;

  factory DashboardModel.fromJson(Map<String, dynamic> json) =>
      _$DashboardModelFromJson(json);
}

@freezed
class DashboardDataModel with _$DashboardDataModel {
  const factory DashboardDataModel({
    required UsersModel users,
    required GeographicalDistributionModel geographicalDistribution,
    required ScreenSharesModel screenShares,
  }) = _DashboardDataModel;

  factory DashboardDataModel.fromJson(Map<String, dynamic> json) =>
      _$DashboardDataModelFromJson(json);
}

@freezed
class UsersModel with _$UsersModel {
  const factory UsersModel({
    required int total,
    required int active,
    required int daily,
    required int monthly,
  }) = _UsersModel;

  factory UsersModel.fromJson(Map<String, dynamic> json) =>
      _$UsersModelFromJson(json);
}

@freezed
class GeographicalDistributionModel with _$GeographicalDistributionModel {
  const factory GeographicalDistributionModel({
    required List<CountryModel> byCountry,
    required List<CityModel> byCity,
  }) = _GeographicalDistributionModel;

  factory GeographicalDistributionModel.fromJson(Map<String, dynamic> json) =>
      _$GeographicalDistributionModelFromJson(json);
}

@freezed
class CountryModel with _$CountryModel {
  const factory CountryModel({
    required String country,
    required int count,
  }) = _CountryModel;

  factory CountryModel.fromJson(Map<String, dynamic> json) =>
      _$CountryModelFromJson(json);
}

@freezed
class CityModel with _$CityModel {
  const factory CityModel({
    required String city,
    required String country,
    required int count,
  }) = _CityModel;

  factory CityModel.fromJson(Map<String, dynamic> json) =>
      _$CityModelFromJson(json);
}

@freezed
class ScreenSharesModel with _$ScreenSharesModel {
  const factory ScreenSharesModel({
    required int total,
    required int daily,
    required int monthly,
    required int averageDuration,
  }) = _ScreenSharesModel;

  factory ScreenSharesModel.fromJson(Map<String, dynamic> json) =>
      _$ScreenSharesModelFromJson(json);
}

// Extension to convert models to entities
extension DashboardModelToEntity on DashboardModel {
  DashboardEntity toEntity() {
    return DashboardEntity(
      users: data.users.toEntity(),
      geographicalDistribution: data.geographicalDistribution.toEntity(),
      screenShares: data.screenShares.toEntity(),
    );
  }
}

extension UsersModelToEntity on UsersModel {
  UsersData toEntity() {
    return UsersData(
      total: total,
      active: active,
      daily: daily,
      monthly: monthly,
    );
  }
}

extension GeographicalDistributionModelToEntity on GeographicalDistributionModel {
  GeographicalDistributionData toEntity() {
    return GeographicalDistributionData(
      byCountry: byCountry.map((country) => country.toEntity()).toList(),
      byCity: byCity.map((city) => city.toEntity()).toList(),
    );
  }
}

extension CountryModelToEntity on CountryModel {
  CountryData toEntity() {
    return CountryData(
      country: country,
      count: count,
    );
  }
}

extension CityModelToEntity on CityModel {
  CityData toEntity() {
    return CityData(
      city: city,
      country: country,
      count: count,
    );
  }
}

extension ScreenSharesModelToEntity on ScreenSharesModel {
  ScreenSharesData toEntity() {
    return ScreenSharesData(
      total: total,
      daily: daily,
      monthly: monthly,
      averageDuration: averageDuration,
    );
  }
}
