// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DashboardEntity _$DashboardEntityFromJson(Map<String, dynamic> json) {
  return _DashboardEntity.fromJson(json);
}

/// @nodoc
mixin _$DashboardEntity {
  UsersData get users => throw _privateConstructorUsedError;
  GeographicalDistributionData get geographicalDistribution =>
      throw _privateConstructorUsedError;
  ScreenSharesData get screenShares => throw _privateConstructorUsedError;

  /// Serializes this DashboardEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DashboardEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DashboardEntityCopyWith<DashboardEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardEntityCopyWith<$Res> {
  factory $DashboardEntityCopyWith(
    DashboardEntity value,
    $Res Function(DashboardEntity) then,
  ) = _$DashboardEntityCopyWithImpl<$Res, DashboardEntity>;
  @useResult
  $Res call({
    UsersData users,
    GeographicalDistributionData geographicalDistribution,
    ScreenSharesData screenShares,
  });

  $UsersDataCopyWith<$Res> get users;
  $GeographicalDistributionDataCopyWith<$Res> get geographicalDistribution;
  $ScreenSharesDataCopyWith<$Res> get screenShares;
}

/// @nodoc
class _$DashboardEntityCopyWithImpl<$Res, $Val extends DashboardEntity>
    implements $DashboardEntityCopyWith<$Res> {
  _$DashboardEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DashboardEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
    Object? geographicalDistribution = null,
    Object? screenShares = null,
  }) {
    return _then(
      _value.copyWith(
            users: null == users
                ? _value.users
                : users // ignore: cast_nullable_to_non_nullable
                      as UsersData,
            geographicalDistribution: null == geographicalDistribution
                ? _value.geographicalDistribution
                : geographicalDistribution // ignore: cast_nullable_to_non_nullable
                      as GeographicalDistributionData,
            screenShares: null == screenShares
                ? _value.screenShares
                : screenShares // ignore: cast_nullable_to_non_nullable
                      as ScreenSharesData,
          )
          as $Val,
    );
  }

  /// Create a copy of DashboardEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UsersDataCopyWith<$Res> get users {
    return $UsersDataCopyWith<$Res>(_value.users, (value) {
      return _then(_value.copyWith(users: value) as $Val);
    });
  }

  /// Create a copy of DashboardEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GeographicalDistributionDataCopyWith<$Res> get geographicalDistribution {
    return $GeographicalDistributionDataCopyWith<$Res>(
      _value.geographicalDistribution,
      (value) {
        return _then(_value.copyWith(geographicalDistribution: value) as $Val);
      },
    );
  }

  /// Create a copy of DashboardEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ScreenSharesDataCopyWith<$Res> get screenShares {
    return $ScreenSharesDataCopyWith<$Res>(_value.screenShares, (value) {
      return _then(_value.copyWith(screenShares: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DashboardEntityImplCopyWith<$Res>
    implements $DashboardEntityCopyWith<$Res> {
  factory _$$DashboardEntityImplCopyWith(
    _$DashboardEntityImpl value,
    $Res Function(_$DashboardEntityImpl) then,
  ) = __$$DashboardEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    UsersData users,
    GeographicalDistributionData geographicalDistribution,
    ScreenSharesData screenShares,
  });

  @override
  $UsersDataCopyWith<$Res> get users;
  @override
  $GeographicalDistributionDataCopyWith<$Res> get geographicalDistribution;
  @override
  $ScreenSharesDataCopyWith<$Res> get screenShares;
}

/// @nodoc
class __$$DashboardEntityImplCopyWithImpl<$Res>
    extends _$DashboardEntityCopyWithImpl<$Res, _$DashboardEntityImpl>
    implements _$$DashboardEntityImplCopyWith<$Res> {
  __$$DashboardEntityImplCopyWithImpl(
    _$DashboardEntityImpl _value,
    $Res Function(_$DashboardEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DashboardEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
    Object? geographicalDistribution = null,
    Object? screenShares = null,
  }) {
    return _then(
      _$DashboardEntityImpl(
        users: null == users
            ? _value.users
            : users // ignore: cast_nullable_to_non_nullable
                  as UsersData,
        geographicalDistribution: null == geographicalDistribution
            ? _value.geographicalDistribution
            : geographicalDistribution // ignore: cast_nullable_to_non_nullable
                  as GeographicalDistributionData,
        screenShares: null == screenShares
            ? _value.screenShares
            : screenShares // ignore: cast_nullable_to_non_nullable
                  as ScreenSharesData,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DashboardEntityImpl implements _DashboardEntity {
  const _$DashboardEntityImpl({
    required this.users,
    required this.geographicalDistribution,
    required this.screenShares,
  });

  factory _$DashboardEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$DashboardEntityImplFromJson(json);

  @override
  final UsersData users;
  @override
  final GeographicalDistributionData geographicalDistribution;
  @override
  final ScreenSharesData screenShares;

  @override
  String toString() {
    return 'DashboardEntity(users: $users, geographicalDistribution: $geographicalDistribution, screenShares: $screenShares)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardEntityImpl &&
            (identical(other.users, users) || other.users == users) &&
            (identical(
                  other.geographicalDistribution,
                  geographicalDistribution,
                ) ||
                other.geographicalDistribution == geographicalDistribution) &&
            (identical(other.screenShares, screenShares) ||
                other.screenShares == screenShares));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, users, geographicalDistribution, screenShares);

  /// Create a copy of DashboardEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DashboardEntityImplCopyWith<_$DashboardEntityImpl> get copyWith =>
      __$$DashboardEntityImplCopyWithImpl<_$DashboardEntityImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DashboardEntityImplToJson(this);
  }
}

abstract class _DashboardEntity implements DashboardEntity {
  const factory _DashboardEntity({
    required final UsersData users,
    required final GeographicalDistributionData geographicalDistribution,
    required final ScreenSharesData screenShares,
  }) = _$DashboardEntityImpl;

  factory _DashboardEntity.fromJson(Map<String, dynamic> json) =
      _$DashboardEntityImpl.fromJson;

  @override
  UsersData get users;
  @override
  GeographicalDistributionData get geographicalDistribution;
  @override
  ScreenSharesData get screenShares;

  /// Create a copy of DashboardEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DashboardEntityImplCopyWith<_$DashboardEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UsersData _$UsersDataFromJson(Map<String, dynamic> json) {
  return _UsersData.fromJson(json);
}

/// @nodoc
mixin _$UsersData {
  int get total => throw _privateConstructorUsedError;
  int get active => throw _privateConstructorUsedError;
  int get daily => throw _privateConstructorUsedError;
  int get monthly => throw _privateConstructorUsedError;

  /// Serializes this UsersData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UsersData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UsersDataCopyWith<UsersData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersDataCopyWith<$Res> {
  factory $UsersDataCopyWith(UsersData value, $Res Function(UsersData) then) =
      _$UsersDataCopyWithImpl<$Res, UsersData>;
  @useResult
  $Res call({int total, int active, int daily, int monthly});
}

/// @nodoc
class _$UsersDataCopyWithImpl<$Res, $Val extends UsersData>
    implements $UsersDataCopyWith<$Res> {
  _$UsersDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UsersData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? active = null,
    Object? daily = null,
    Object? monthly = null,
  }) {
    return _then(
      _value.copyWith(
            total: null == total
                ? _value.total
                : total // ignore: cast_nullable_to_non_nullable
                      as int,
            active: null == active
                ? _value.active
                : active // ignore: cast_nullable_to_non_nullable
                      as int,
            daily: null == daily
                ? _value.daily
                : daily // ignore: cast_nullable_to_non_nullable
                      as int,
            monthly: null == monthly
                ? _value.monthly
                : monthly // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UsersDataImplCopyWith<$Res>
    implements $UsersDataCopyWith<$Res> {
  factory _$$UsersDataImplCopyWith(
    _$UsersDataImpl value,
    $Res Function(_$UsersDataImpl) then,
  ) = __$$UsersDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int total, int active, int daily, int monthly});
}

/// @nodoc
class __$$UsersDataImplCopyWithImpl<$Res>
    extends _$UsersDataCopyWithImpl<$Res, _$UsersDataImpl>
    implements _$$UsersDataImplCopyWith<$Res> {
  __$$UsersDataImplCopyWithImpl(
    _$UsersDataImpl _value,
    $Res Function(_$UsersDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UsersData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? active = null,
    Object? daily = null,
    Object? monthly = null,
  }) {
    return _then(
      _$UsersDataImpl(
        total: null == total
            ? _value.total
            : total // ignore: cast_nullable_to_non_nullable
                  as int,
        active: null == active
            ? _value.active
            : active // ignore: cast_nullable_to_non_nullable
                  as int,
        daily: null == daily
            ? _value.daily
            : daily // ignore: cast_nullable_to_non_nullable
                  as int,
        monthly: null == monthly
            ? _value.monthly
            : monthly // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UsersDataImpl implements _UsersData {
  const _$UsersDataImpl({
    required this.total,
    required this.active,
    required this.daily,
    required this.monthly,
  });

  factory _$UsersDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UsersDataImplFromJson(json);

  @override
  final int total;
  @override
  final int active;
  @override
  final int daily;
  @override
  final int monthly;

  @override
  String toString() {
    return 'UsersData(total: $total, active: $active, daily: $daily, monthly: $monthly)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsersDataImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.daily, daily) || other.daily == daily) &&
            (identical(other.monthly, monthly) || other.monthly == monthly));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, total, active, daily, monthly);

  /// Create a copy of UsersData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UsersDataImplCopyWith<_$UsersDataImpl> get copyWith =>
      __$$UsersDataImplCopyWithImpl<_$UsersDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UsersDataImplToJson(this);
  }
}

abstract class _UsersData implements UsersData {
  const factory _UsersData({
    required final int total,
    required final int active,
    required final int daily,
    required final int monthly,
  }) = _$UsersDataImpl;

  factory _UsersData.fromJson(Map<String, dynamic> json) =
      _$UsersDataImpl.fromJson;

  @override
  int get total;
  @override
  int get active;
  @override
  int get daily;
  @override
  int get monthly;

  /// Create a copy of UsersData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UsersDataImplCopyWith<_$UsersDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GeographicalDistributionData _$GeographicalDistributionDataFromJson(
  Map<String, dynamic> json,
) {
  return _GeographicalDistributionData.fromJson(json);
}

/// @nodoc
mixin _$GeographicalDistributionData {
  List<CountryData> get byCountry => throw _privateConstructorUsedError;
  List<CityData> get byCity => throw _privateConstructorUsedError;

  /// Serializes this GeographicalDistributionData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GeographicalDistributionData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GeographicalDistributionDataCopyWith<GeographicalDistributionData>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeographicalDistributionDataCopyWith<$Res> {
  factory $GeographicalDistributionDataCopyWith(
    GeographicalDistributionData value,
    $Res Function(GeographicalDistributionData) then,
  ) =
      _$GeographicalDistributionDataCopyWithImpl<
        $Res,
        GeographicalDistributionData
      >;
  @useResult
  $Res call({List<CountryData> byCountry, List<CityData> byCity});
}

/// @nodoc
class _$GeographicalDistributionDataCopyWithImpl<
  $Res,
  $Val extends GeographicalDistributionData
>
    implements $GeographicalDistributionDataCopyWith<$Res> {
  _$GeographicalDistributionDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GeographicalDistributionData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? byCountry = null, Object? byCity = null}) {
    return _then(
      _value.copyWith(
            byCountry: null == byCountry
                ? _value.byCountry
                : byCountry // ignore: cast_nullable_to_non_nullable
                      as List<CountryData>,
            byCity: null == byCity
                ? _value.byCity
                : byCity // ignore: cast_nullable_to_non_nullable
                      as List<CityData>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GeographicalDistributionDataImplCopyWith<$Res>
    implements $GeographicalDistributionDataCopyWith<$Res> {
  factory _$$GeographicalDistributionDataImplCopyWith(
    _$GeographicalDistributionDataImpl value,
    $Res Function(_$GeographicalDistributionDataImpl) then,
  ) = __$$GeographicalDistributionDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CountryData> byCountry, List<CityData> byCity});
}

/// @nodoc
class __$$GeographicalDistributionDataImplCopyWithImpl<$Res>
    extends
        _$GeographicalDistributionDataCopyWithImpl<
          $Res,
          _$GeographicalDistributionDataImpl
        >
    implements _$$GeographicalDistributionDataImplCopyWith<$Res> {
  __$$GeographicalDistributionDataImplCopyWithImpl(
    _$GeographicalDistributionDataImpl _value,
    $Res Function(_$GeographicalDistributionDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GeographicalDistributionData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? byCountry = null, Object? byCity = null}) {
    return _then(
      _$GeographicalDistributionDataImpl(
        byCountry: null == byCountry
            ? _value._byCountry
            : byCountry // ignore: cast_nullable_to_non_nullable
                  as List<CountryData>,
        byCity: null == byCity
            ? _value._byCity
            : byCity // ignore: cast_nullable_to_non_nullable
                  as List<CityData>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$GeographicalDistributionDataImpl
    implements _GeographicalDistributionData {
  const _$GeographicalDistributionDataImpl({
    required final List<CountryData> byCountry,
    required final List<CityData> byCity,
  }) : _byCountry = byCountry,
       _byCity = byCity;

  factory _$GeographicalDistributionDataImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$GeographicalDistributionDataImplFromJson(json);

  final List<CountryData> _byCountry;
  @override
  List<CountryData> get byCountry {
    if (_byCountry is EqualUnmodifiableListView) return _byCountry;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_byCountry);
  }

  final List<CityData> _byCity;
  @override
  List<CityData> get byCity {
    if (_byCity is EqualUnmodifiableListView) return _byCity;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_byCity);
  }

  @override
  String toString() {
    return 'GeographicalDistributionData(byCountry: $byCountry, byCity: $byCity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeographicalDistributionDataImpl &&
            const DeepCollectionEquality().equals(
              other._byCountry,
              _byCountry,
            ) &&
            const DeepCollectionEquality().equals(other._byCity, _byCity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_byCountry),
    const DeepCollectionEquality().hash(_byCity),
  );

  /// Create a copy of GeographicalDistributionData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GeographicalDistributionDataImplCopyWith<
    _$GeographicalDistributionDataImpl
  >
  get copyWith =>
      __$$GeographicalDistributionDataImplCopyWithImpl<
        _$GeographicalDistributionDataImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GeographicalDistributionDataImplToJson(this);
  }
}

abstract class _GeographicalDistributionData
    implements GeographicalDistributionData {
  const factory _GeographicalDistributionData({
    required final List<CountryData> byCountry,
    required final List<CityData> byCity,
  }) = _$GeographicalDistributionDataImpl;

  factory _GeographicalDistributionData.fromJson(Map<String, dynamic> json) =
      _$GeographicalDistributionDataImpl.fromJson;

  @override
  List<CountryData> get byCountry;
  @override
  List<CityData> get byCity;

  /// Create a copy of GeographicalDistributionData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GeographicalDistributionDataImplCopyWith<
    _$GeographicalDistributionDataImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

CountryData _$CountryDataFromJson(Map<String, dynamic> json) {
  return _CountryData.fromJson(json);
}

/// @nodoc
mixin _$CountryData {
  String get country => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  /// Serializes this CountryData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CountryData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CountryDataCopyWith<CountryData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryDataCopyWith<$Res> {
  factory $CountryDataCopyWith(
    CountryData value,
    $Res Function(CountryData) then,
  ) = _$CountryDataCopyWithImpl<$Res, CountryData>;
  @useResult
  $Res call({String country, int count});
}

/// @nodoc
class _$CountryDataCopyWithImpl<$Res, $Val extends CountryData>
    implements $CountryDataCopyWith<$Res> {
  _$CountryDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CountryData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? country = null, Object? count = null}) {
    return _then(
      _value.copyWith(
            country: null == country
                ? _value.country
                : country // ignore: cast_nullable_to_non_nullable
                      as String,
            count: null == count
                ? _value.count
                : count // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CountryDataImplCopyWith<$Res>
    implements $CountryDataCopyWith<$Res> {
  factory _$$CountryDataImplCopyWith(
    _$CountryDataImpl value,
    $Res Function(_$CountryDataImpl) then,
  ) = __$$CountryDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String country, int count});
}

/// @nodoc
class __$$CountryDataImplCopyWithImpl<$Res>
    extends _$CountryDataCopyWithImpl<$Res, _$CountryDataImpl>
    implements _$$CountryDataImplCopyWith<$Res> {
  __$$CountryDataImplCopyWithImpl(
    _$CountryDataImpl _value,
    $Res Function(_$CountryDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CountryData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? country = null, Object? count = null}) {
    return _then(
      _$CountryDataImpl(
        country: null == country
            ? _value.country
            : country // ignore: cast_nullable_to_non_nullable
                  as String,
        count: null == count
            ? _value.count
            : count // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CountryDataImpl implements _CountryData {
  const _$CountryDataImpl({required this.country, required this.count});

  factory _$CountryDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CountryDataImplFromJson(json);

  @override
  final String country;
  @override
  final int count;

  @override
  String toString() {
    return 'CountryData(country: $country, count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountryDataImpl &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, country, count);

  /// Create a copy of CountryData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CountryDataImplCopyWith<_$CountryDataImpl> get copyWith =>
      __$$CountryDataImplCopyWithImpl<_$CountryDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CountryDataImplToJson(this);
  }
}

abstract class _CountryData implements CountryData {
  const factory _CountryData({
    required final String country,
    required final int count,
  }) = _$CountryDataImpl;

  factory _CountryData.fromJson(Map<String, dynamic> json) =
      _$CountryDataImpl.fromJson;

  @override
  String get country;
  @override
  int get count;

  /// Create a copy of CountryData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CountryDataImplCopyWith<_$CountryDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CityData _$CityDataFromJson(Map<String, dynamic> json) {
  return _CityData.fromJson(json);
}

/// @nodoc
mixin _$CityData {
  String get city => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  /// Serializes this CityData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CityData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CityDataCopyWith<CityData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityDataCopyWith<$Res> {
  factory $CityDataCopyWith(CityData value, $Res Function(CityData) then) =
      _$CityDataCopyWithImpl<$Res, CityData>;
  @useResult
  $Res call({String city, String country, int count});
}

/// @nodoc
class _$CityDataCopyWithImpl<$Res, $Val extends CityData>
    implements $CityDataCopyWith<$Res> {
  _$CityDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CityData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? city = null,
    Object? country = null,
    Object? count = null,
  }) {
    return _then(
      _value.copyWith(
            city: null == city
                ? _value.city
                : city // ignore: cast_nullable_to_non_nullable
                      as String,
            country: null == country
                ? _value.country
                : country // ignore: cast_nullable_to_non_nullable
                      as String,
            count: null == count
                ? _value.count
                : count // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CityDataImplCopyWith<$Res>
    implements $CityDataCopyWith<$Res> {
  factory _$$CityDataImplCopyWith(
    _$CityDataImpl value,
    $Res Function(_$CityDataImpl) then,
  ) = __$$CityDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String city, String country, int count});
}

/// @nodoc
class __$$CityDataImplCopyWithImpl<$Res>
    extends _$CityDataCopyWithImpl<$Res, _$CityDataImpl>
    implements _$$CityDataImplCopyWith<$Res> {
  __$$CityDataImplCopyWithImpl(
    _$CityDataImpl _value,
    $Res Function(_$CityDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CityData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? city = null,
    Object? country = null,
    Object? count = null,
  }) {
    return _then(
      _$CityDataImpl(
        city: null == city
            ? _value.city
            : city // ignore: cast_nullable_to_non_nullable
                  as String,
        country: null == country
            ? _value.country
            : country // ignore: cast_nullable_to_non_nullable
                  as String,
        count: null == count
            ? _value.count
            : count // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CityDataImpl implements _CityData {
  const _$CityDataImpl({
    required this.city,
    required this.country,
    required this.count,
  });

  factory _$CityDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CityDataImplFromJson(json);

  @override
  final String city;
  @override
  final String country;
  @override
  final int count;

  @override
  String toString() {
    return 'CityData(city: $city, country: $country, count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CityDataImpl &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, city, country, count);

  /// Create a copy of CityData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CityDataImplCopyWith<_$CityDataImpl> get copyWith =>
      __$$CityDataImplCopyWithImpl<_$CityDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CityDataImplToJson(this);
  }
}

abstract class _CityData implements CityData {
  const factory _CityData({
    required final String city,
    required final String country,
    required final int count,
  }) = _$CityDataImpl;

  factory _CityData.fromJson(Map<String, dynamic> json) =
      _$CityDataImpl.fromJson;

  @override
  String get city;
  @override
  String get country;
  @override
  int get count;

  /// Create a copy of CityData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CityDataImplCopyWith<_$CityDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ScreenSharesData _$ScreenSharesDataFromJson(Map<String, dynamic> json) {
  return _ScreenSharesData.fromJson(json);
}

/// @nodoc
mixin _$ScreenSharesData {
  int get total => throw _privateConstructorUsedError;
  int get daily => throw _privateConstructorUsedError;
  int get monthly => throw _privateConstructorUsedError;
  int get averageDuration => throw _privateConstructorUsedError;

  /// Serializes this ScreenSharesData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ScreenSharesData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScreenSharesDataCopyWith<ScreenSharesData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScreenSharesDataCopyWith<$Res> {
  factory $ScreenSharesDataCopyWith(
    ScreenSharesData value,
    $Res Function(ScreenSharesData) then,
  ) = _$ScreenSharesDataCopyWithImpl<$Res, ScreenSharesData>;
  @useResult
  $Res call({int total, int daily, int monthly, int averageDuration});
}

/// @nodoc
class _$ScreenSharesDataCopyWithImpl<$Res, $Val extends ScreenSharesData>
    implements $ScreenSharesDataCopyWith<$Res> {
  _$ScreenSharesDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScreenSharesData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? daily = null,
    Object? monthly = null,
    Object? averageDuration = null,
  }) {
    return _then(
      _value.copyWith(
            total: null == total
                ? _value.total
                : total // ignore: cast_nullable_to_non_nullable
                      as int,
            daily: null == daily
                ? _value.daily
                : daily // ignore: cast_nullable_to_non_nullable
                      as int,
            monthly: null == monthly
                ? _value.monthly
                : monthly // ignore: cast_nullable_to_non_nullable
                      as int,
            averageDuration: null == averageDuration
                ? _value.averageDuration
                : averageDuration // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ScreenSharesDataImplCopyWith<$Res>
    implements $ScreenSharesDataCopyWith<$Res> {
  factory _$$ScreenSharesDataImplCopyWith(
    _$ScreenSharesDataImpl value,
    $Res Function(_$ScreenSharesDataImpl) then,
  ) = __$$ScreenSharesDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int total, int daily, int monthly, int averageDuration});
}

/// @nodoc
class __$$ScreenSharesDataImplCopyWithImpl<$Res>
    extends _$ScreenSharesDataCopyWithImpl<$Res, _$ScreenSharesDataImpl>
    implements _$$ScreenSharesDataImplCopyWith<$Res> {
  __$$ScreenSharesDataImplCopyWithImpl(
    _$ScreenSharesDataImpl _value,
    $Res Function(_$ScreenSharesDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ScreenSharesData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? daily = null,
    Object? monthly = null,
    Object? averageDuration = null,
  }) {
    return _then(
      _$ScreenSharesDataImpl(
        total: null == total
            ? _value.total
            : total // ignore: cast_nullable_to_non_nullable
                  as int,
        daily: null == daily
            ? _value.daily
            : daily // ignore: cast_nullable_to_non_nullable
                  as int,
        monthly: null == monthly
            ? _value.monthly
            : monthly // ignore: cast_nullable_to_non_nullable
                  as int,
        averageDuration: null == averageDuration
            ? _value.averageDuration
            : averageDuration // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ScreenSharesDataImpl implements _ScreenSharesData {
  const _$ScreenSharesDataImpl({
    required this.total,
    required this.daily,
    required this.monthly,
    required this.averageDuration,
  });

  factory _$ScreenSharesDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScreenSharesDataImplFromJson(json);

  @override
  final int total;
  @override
  final int daily;
  @override
  final int monthly;
  @override
  final int averageDuration;

  @override
  String toString() {
    return 'ScreenSharesData(total: $total, daily: $daily, monthly: $monthly, averageDuration: $averageDuration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScreenSharesDataImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.daily, daily) || other.daily == daily) &&
            (identical(other.monthly, monthly) || other.monthly == monthly) &&
            (identical(other.averageDuration, averageDuration) ||
                other.averageDuration == averageDuration));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, total, daily, monthly, averageDuration);

  /// Create a copy of ScreenSharesData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScreenSharesDataImplCopyWith<_$ScreenSharesDataImpl> get copyWith =>
      __$$ScreenSharesDataImplCopyWithImpl<_$ScreenSharesDataImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ScreenSharesDataImplToJson(this);
  }
}

abstract class _ScreenSharesData implements ScreenSharesData {
  const factory _ScreenSharesData({
    required final int total,
    required final int daily,
    required final int monthly,
    required final int averageDuration,
  }) = _$ScreenSharesDataImpl;

  factory _ScreenSharesData.fromJson(Map<String, dynamic> json) =
      _$ScreenSharesDataImpl.fromJson;

  @override
  int get total;
  @override
  int get daily;
  @override
  int get monthly;
  @override
  int get averageDuration;

  /// Create a copy of ScreenSharesData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScreenSharesDataImplCopyWith<_$ScreenSharesDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DashboardResponse _$DashboardResponseFromJson(Map<String, dynamic> json) {
  return _DashboardResponse.fromJson(json);
}

/// @nodoc
mixin _$DashboardResponse {
  bool get success => throw _privateConstructorUsedError;
  DashboardEntity get data => throw _privateConstructorUsedError;

  /// Serializes this DashboardResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DashboardResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DashboardResponseCopyWith<DashboardResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardResponseCopyWith<$Res> {
  factory $DashboardResponseCopyWith(
    DashboardResponse value,
    $Res Function(DashboardResponse) then,
  ) = _$DashboardResponseCopyWithImpl<$Res, DashboardResponse>;
  @useResult
  $Res call({bool success, DashboardEntity data});

  $DashboardEntityCopyWith<$Res> get data;
}

/// @nodoc
class _$DashboardResponseCopyWithImpl<$Res, $Val extends DashboardResponse>
    implements $DashboardResponseCopyWith<$Res> {
  _$DashboardResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DashboardResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? success = null, Object? data = null}) {
    return _then(
      _value.copyWith(
            success: null == success
                ? _value.success
                : success // ignore: cast_nullable_to_non_nullable
                      as bool,
            data: null == data
                ? _value.data
                : data // ignore: cast_nullable_to_non_nullable
                      as DashboardEntity,
          )
          as $Val,
    );
  }

  /// Create a copy of DashboardResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DashboardEntityCopyWith<$Res> get data {
    return $DashboardEntityCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DashboardResponseImplCopyWith<$Res>
    implements $DashboardResponseCopyWith<$Res> {
  factory _$$DashboardResponseImplCopyWith(
    _$DashboardResponseImpl value,
    $Res Function(_$DashboardResponseImpl) then,
  ) = __$$DashboardResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, DashboardEntity data});

  @override
  $DashboardEntityCopyWith<$Res> get data;
}

/// @nodoc
class __$$DashboardResponseImplCopyWithImpl<$Res>
    extends _$DashboardResponseCopyWithImpl<$Res, _$DashboardResponseImpl>
    implements _$$DashboardResponseImplCopyWith<$Res> {
  __$$DashboardResponseImplCopyWithImpl(
    _$DashboardResponseImpl _value,
    $Res Function(_$DashboardResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DashboardResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? success = null, Object? data = null}) {
    return _then(
      _$DashboardResponseImpl(
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
        data: null == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                  as DashboardEntity,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DashboardResponseImpl implements _DashboardResponse {
  const _$DashboardResponseImpl({required this.success, required this.data});

  factory _$DashboardResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DashboardResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final DashboardEntity data;

  @override
  String toString() {
    return 'DashboardResponse(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data);

  /// Create a copy of DashboardResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DashboardResponseImplCopyWith<_$DashboardResponseImpl> get copyWith =>
      __$$DashboardResponseImplCopyWithImpl<_$DashboardResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DashboardResponseImplToJson(this);
  }
}

abstract class _DashboardResponse implements DashboardResponse {
  const factory _DashboardResponse({
    required final bool success,
    required final DashboardEntity data,
  }) = _$DashboardResponseImpl;

  factory _DashboardResponse.fromJson(Map<String, dynamic> json) =
      _$DashboardResponseImpl.fromJson;

  @override
  bool get success;
  @override
  DashboardEntity get data;

  /// Create a copy of DashboardResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DashboardResponseImplCopyWith<_$DashboardResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
