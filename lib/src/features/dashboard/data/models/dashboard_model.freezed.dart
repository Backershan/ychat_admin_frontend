// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DashboardModel _$DashboardModelFromJson(Map<String, dynamic> json) {
  return _DashboardModel.fromJson(json);
}

/// @nodoc
mixin _$DashboardModel {
  bool get success => throw _privateConstructorUsedError;
  DashboardDataModel get data => throw _privateConstructorUsedError;

  /// Serializes this DashboardModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DashboardModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DashboardModelCopyWith<DashboardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardModelCopyWith<$Res> {
  factory $DashboardModelCopyWith(
    DashboardModel value,
    $Res Function(DashboardModel) then,
  ) = _$DashboardModelCopyWithImpl<$Res, DashboardModel>;
  @useResult
  $Res call({bool success, DashboardDataModel data});

  $DashboardDataModelCopyWith<$Res> get data;
}

/// @nodoc
class _$DashboardModelCopyWithImpl<$Res, $Val extends DashboardModel>
    implements $DashboardModelCopyWith<$Res> {
  _$DashboardModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DashboardModel
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
                      as DashboardDataModel,
          )
          as $Val,
    );
  }

  /// Create a copy of DashboardModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DashboardDataModelCopyWith<$Res> get data {
    return $DashboardDataModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DashboardModelImplCopyWith<$Res>
    implements $DashboardModelCopyWith<$Res> {
  factory _$$DashboardModelImplCopyWith(
    _$DashboardModelImpl value,
    $Res Function(_$DashboardModelImpl) then,
  ) = __$$DashboardModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, DashboardDataModel data});

  @override
  $DashboardDataModelCopyWith<$Res> get data;
}

/// @nodoc
class __$$DashboardModelImplCopyWithImpl<$Res>
    extends _$DashboardModelCopyWithImpl<$Res, _$DashboardModelImpl>
    implements _$$DashboardModelImplCopyWith<$Res> {
  __$$DashboardModelImplCopyWithImpl(
    _$DashboardModelImpl _value,
    $Res Function(_$DashboardModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DashboardModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? success = null, Object? data = null}) {
    return _then(
      _$DashboardModelImpl(
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
        data: null == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                  as DashboardDataModel,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DashboardModelImpl implements _DashboardModel {
  const _$DashboardModelImpl({required this.success, required this.data});

  factory _$DashboardModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DashboardModelImplFromJson(json);

  @override
  final bool success;
  @override
  final DashboardDataModel data;

  @override
  String toString() {
    return 'DashboardModel(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardModelImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data);

  /// Create a copy of DashboardModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DashboardModelImplCopyWith<_$DashboardModelImpl> get copyWith =>
      __$$DashboardModelImplCopyWithImpl<_$DashboardModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DashboardModelImplToJson(this);
  }
}

abstract class _DashboardModel implements DashboardModel {
  const factory _DashboardModel({
    required final bool success,
    required final DashboardDataModel data,
  }) = _$DashboardModelImpl;

  factory _DashboardModel.fromJson(Map<String, dynamic> json) =
      _$DashboardModelImpl.fromJson;

  @override
  bool get success;
  @override
  DashboardDataModel get data;

  /// Create a copy of DashboardModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DashboardModelImplCopyWith<_$DashboardModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DashboardDataModel _$DashboardDataModelFromJson(Map<String, dynamic> json) {
  return _DashboardDataModel.fromJson(json);
}

/// @nodoc
mixin _$DashboardDataModel {
  UsersModel get users => throw _privateConstructorUsedError;
  GeographicalDistributionModel get geographicalDistribution =>
      throw _privateConstructorUsedError;
  ScreenSharesModel get screenShares => throw _privateConstructorUsedError;

  /// Serializes this DashboardDataModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DashboardDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DashboardDataModelCopyWith<DashboardDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardDataModelCopyWith<$Res> {
  factory $DashboardDataModelCopyWith(
    DashboardDataModel value,
    $Res Function(DashboardDataModel) then,
  ) = _$DashboardDataModelCopyWithImpl<$Res, DashboardDataModel>;
  @useResult
  $Res call({
    UsersModel users,
    GeographicalDistributionModel geographicalDistribution,
    ScreenSharesModel screenShares,
  });

  $UsersModelCopyWith<$Res> get users;
  $GeographicalDistributionModelCopyWith<$Res> get geographicalDistribution;
  $ScreenSharesModelCopyWith<$Res> get screenShares;
}

/// @nodoc
class _$DashboardDataModelCopyWithImpl<$Res, $Val extends DashboardDataModel>
    implements $DashboardDataModelCopyWith<$Res> {
  _$DashboardDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DashboardDataModel
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
                      as UsersModel,
            geographicalDistribution: null == geographicalDistribution
                ? _value.geographicalDistribution
                : geographicalDistribution // ignore: cast_nullable_to_non_nullable
                      as GeographicalDistributionModel,
            screenShares: null == screenShares
                ? _value.screenShares
                : screenShares // ignore: cast_nullable_to_non_nullable
                      as ScreenSharesModel,
          )
          as $Val,
    );
  }

  /// Create a copy of DashboardDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UsersModelCopyWith<$Res> get users {
    return $UsersModelCopyWith<$Res>(_value.users, (value) {
      return _then(_value.copyWith(users: value) as $Val);
    });
  }

  /// Create a copy of DashboardDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GeographicalDistributionModelCopyWith<$Res> get geographicalDistribution {
    return $GeographicalDistributionModelCopyWith<$Res>(
      _value.geographicalDistribution,
      (value) {
        return _then(_value.copyWith(geographicalDistribution: value) as $Val);
      },
    );
  }

  /// Create a copy of DashboardDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ScreenSharesModelCopyWith<$Res> get screenShares {
    return $ScreenSharesModelCopyWith<$Res>(_value.screenShares, (value) {
      return _then(_value.copyWith(screenShares: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DashboardDataModelImplCopyWith<$Res>
    implements $DashboardDataModelCopyWith<$Res> {
  factory _$$DashboardDataModelImplCopyWith(
    _$DashboardDataModelImpl value,
    $Res Function(_$DashboardDataModelImpl) then,
  ) = __$$DashboardDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    UsersModel users,
    GeographicalDistributionModel geographicalDistribution,
    ScreenSharesModel screenShares,
  });

  @override
  $UsersModelCopyWith<$Res> get users;
  @override
  $GeographicalDistributionModelCopyWith<$Res> get geographicalDistribution;
  @override
  $ScreenSharesModelCopyWith<$Res> get screenShares;
}

/// @nodoc
class __$$DashboardDataModelImplCopyWithImpl<$Res>
    extends _$DashboardDataModelCopyWithImpl<$Res, _$DashboardDataModelImpl>
    implements _$$DashboardDataModelImplCopyWith<$Res> {
  __$$DashboardDataModelImplCopyWithImpl(
    _$DashboardDataModelImpl _value,
    $Res Function(_$DashboardDataModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DashboardDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
    Object? geographicalDistribution = null,
    Object? screenShares = null,
  }) {
    return _then(
      _$DashboardDataModelImpl(
        users: null == users
            ? _value.users
            : users // ignore: cast_nullable_to_non_nullable
                  as UsersModel,
        geographicalDistribution: null == geographicalDistribution
            ? _value.geographicalDistribution
            : geographicalDistribution // ignore: cast_nullable_to_non_nullable
                  as GeographicalDistributionModel,
        screenShares: null == screenShares
            ? _value.screenShares
            : screenShares // ignore: cast_nullable_to_non_nullable
                  as ScreenSharesModel,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DashboardDataModelImpl implements _DashboardDataModel {
  const _$DashboardDataModelImpl({
    required this.users,
    required this.geographicalDistribution,
    required this.screenShares,
  });

  factory _$DashboardDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DashboardDataModelImplFromJson(json);

  @override
  final UsersModel users;
  @override
  final GeographicalDistributionModel geographicalDistribution;
  @override
  final ScreenSharesModel screenShares;

  @override
  String toString() {
    return 'DashboardDataModel(users: $users, geographicalDistribution: $geographicalDistribution, screenShares: $screenShares)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardDataModelImpl &&
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

  /// Create a copy of DashboardDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DashboardDataModelImplCopyWith<_$DashboardDataModelImpl> get copyWith =>
      __$$DashboardDataModelImplCopyWithImpl<_$DashboardDataModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DashboardDataModelImplToJson(this);
  }
}

abstract class _DashboardDataModel implements DashboardDataModel {
  const factory _DashboardDataModel({
    required final UsersModel users,
    required final GeographicalDistributionModel geographicalDistribution,
    required final ScreenSharesModel screenShares,
  }) = _$DashboardDataModelImpl;

  factory _DashboardDataModel.fromJson(Map<String, dynamic> json) =
      _$DashboardDataModelImpl.fromJson;

  @override
  UsersModel get users;
  @override
  GeographicalDistributionModel get geographicalDistribution;
  @override
  ScreenSharesModel get screenShares;

  /// Create a copy of DashboardDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DashboardDataModelImplCopyWith<_$DashboardDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UsersModel _$UsersModelFromJson(Map<String, dynamic> json) {
  return _UsersModel.fromJson(json);
}

/// @nodoc
mixin _$UsersModel {
  int get total => throw _privateConstructorUsedError;
  int get active => throw _privateConstructorUsedError;
  int get daily => throw _privateConstructorUsedError;
  int get monthly => throw _privateConstructorUsedError;

  /// Serializes this UsersModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UsersModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UsersModelCopyWith<UsersModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersModelCopyWith<$Res> {
  factory $UsersModelCopyWith(
    UsersModel value,
    $Res Function(UsersModel) then,
  ) = _$UsersModelCopyWithImpl<$Res, UsersModel>;
  @useResult
  $Res call({int total, int active, int daily, int monthly});
}

/// @nodoc
class _$UsersModelCopyWithImpl<$Res, $Val extends UsersModel>
    implements $UsersModelCopyWith<$Res> {
  _$UsersModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UsersModel
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
abstract class _$$UsersModelImplCopyWith<$Res>
    implements $UsersModelCopyWith<$Res> {
  factory _$$UsersModelImplCopyWith(
    _$UsersModelImpl value,
    $Res Function(_$UsersModelImpl) then,
  ) = __$$UsersModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int total, int active, int daily, int monthly});
}

/// @nodoc
class __$$UsersModelImplCopyWithImpl<$Res>
    extends _$UsersModelCopyWithImpl<$Res, _$UsersModelImpl>
    implements _$$UsersModelImplCopyWith<$Res> {
  __$$UsersModelImplCopyWithImpl(
    _$UsersModelImpl _value,
    $Res Function(_$UsersModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UsersModel
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
      _$UsersModelImpl(
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
class _$UsersModelImpl implements _UsersModel {
  const _$UsersModelImpl({
    required this.total,
    required this.active,
    required this.daily,
    required this.monthly,
  });

  factory _$UsersModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UsersModelImplFromJson(json);

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
    return 'UsersModel(total: $total, active: $active, daily: $daily, monthly: $monthly)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsersModelImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.daily, daily) || other.daily == daily) &&
            (identical(other.monthly, monthly) || other.monthly == monthly));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, total, active, daily, monthly);

  /// Create a copy of UsersModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UsersModelImplCopyWith<_$UsersModelImpl> get copyWith =>
      __$$UsersModelImplCopyWithImpl<_$UsersModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UsersModelImplToJson(this);
  }
}

abstract class _UsersModel implements UsersModel {
  const factory _UsersModel({
    required final int total,
    required final int active,
    required final int daily,
    required final int monthly,
  }) = _$UsersModelImpl;

  factory _UsersModel.fromJson(Map<String, dynamic> json) =
      _$UsersModelImpl.fromJson;

  @override
  int get total;
  @override
  int get active;
  @override
  int get daily;
  @override
  int get monthly;

  /// Create a copy of UsersModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UsersModelImplCopyWith<_$UsersModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GeographicalDistributionModel _$GeographicalDistributionModelFromJson(
  Map<String, dynamic> json,
) {
  return _GeographicalDistributionModel.fromJson(json);
}

/// @nodoc
mixin _$GeographicalDistributionModel {
  List<CountryModel> get byCountry => throw _privateConstructorUsedError;
  List<CityModel> get byCity => throw _privateConstructorUsedError;

  /// Serializes this GeographicalDistributionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GeographicalDistributionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GeographicalDistributionModelCopyWith<GeographicalDistributionModel>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeographicalDistributionModelCopyWith<$Res> {
  factory $GeographicalDistributionModelCopyWith(
    GeographicalDistributionModel value,
    $Res Function(GeographicalDistributionModel) then,
  ) =
      _$GeographicalDistributionModelCopyWithImpl<
        $Res,
        GeographicalDistributionModel
      >;
  @useResult
  $Res call({List<CountryModel> byCountry, List<CityModel> byCity});
}

/// @nodoc
class _$GeographicalDistributionModelCopyWithImpl<
  $Res,
  $Val extends GeographicalDistributionModel
>
    implements $GeographicalDistributionModelCopyWith<$Res> {
  _$GeographicalDistributionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GeographicalDistributionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? byCountry = null, Object? byCity = null}) {
    return _then(
      _value.copyWith(
            byCountry: null == byCountry
                ? _value.byCountry
                : byCountry // ignore: cast_nullable_to_non_nullable
                      as List<CountryModel>,
            byCity: null == byCity
                ? _value.byCity
                : byCity // ignore: cast_nullable_to_non_nullable
                      as List<CityModel>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GeographicalDistributionModelImplCopyWith<$Res>
    implements $GeographicalDistributionModelCopyWith<$Res> {
  factory _$$GeographicalDistributionModelImplCopyWith(
    _$GeographicalDistributionModelImpl value,
    $Res Function(_$GeographicalDistributionModelImpl) then,
  ) = __$$GeographicalDistributionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CountryModel> byCountry, List<CityModel> byCity});
}

/// @nodoc
class __$$GeographicalDistributionModelImplCopyWithImpl<$Res>
    extends
        _$GeographicalDistributionModelCopyWithImpl<
          $Res,
          _$GeographicalDistributionModelImpl
        >
    implements _$$GeographicalDistributionModelImplCopyWith<$Res> {
  __$$GeographicalDistributionModelImplCopyWithImpl(
    _$GeographicalDistributionModelImpl _value,
    $Res Function(_$GeographicalDistributionModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GeographicalDistributionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? byCountry = null, Object? byCity = null}) {
    return _then(
      _$GeographicalDistributionModelImpl(
        byCountry: null == byCountry
            ? _value._byCountry
            : byCountry // ignore: cast_nullable_to_non_nullable
                  as List<CountryModel>,
        byCity: null == byCity
            ? _value._byCity
            : byCity // ignore: cast_nullable_to_non_nullable
                  as List<CityModel>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$GeographicalDistributionModelImpl
    implements _GeographicalDistributionModel {
  const _$GeographicalDistributionModelImpl({
    required final List<CountryModel> byCountry,
    required final List<CityModel> byCity,
  }) : _byCountry = byCountry,
       _byCity = byCity;

  factory _$GeographicalDistributionModelImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$GeographicalDistributionModelImplFromJson(json);

  final List<CountryModel> _byCountry;
  @override
  List<CountryModel> get byCountry {
    if (_byCountry is EqualUnmodifiableListView) return _byCountry;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_byCountry);
  }

  final List<CityModel> _byCity;
  @override
  List<CityModel> get byCity {
    if (_byCity is EqualUnmodifiableListView) return _byCity;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_byCity);
  }

  @override
  String toString() {
    return 'GeographicalDistributionModel(byCountry: $byCountry, byCity: $byCity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeographicalDistributionModelImpl &&
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

  /// Create a copy of GeographicalDistributionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GeographicalDistributionModelImplCopyWith<
    _$GeographicalDistributionModelImpl
  >
  get copyWith =>
      __$$GeographicalDistributionModelImplCopyWithImpl<
        _$GeographicalDistributionModelImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GeographicalDistributionModelImplToJson(this);
  }
}

abstract class _GeographicalDistributionModel
    implements GeographicalDistributionModel {
  const factory _GeographicalDistributionModel({
    required final List<CountryModel> byCountry,
    required final List<CityModel> byCity,
  }) = _$GeographicalDistributionModelImpl;

  factory _GeographicalDistributionModel.fromJson(Map<String, dynamic> json) =
      _$GeographicalDistributionModelImpl.fromJson;

  @override
  List<CountryModel> get byCountry;
  @override
  List<CityModel> get byCity;

  /// Create a copy of GeographicalDistributionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GeographicalDistributionModelImplCopyWith<
    _$GeographicalDistributionModelImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

CountryModel _$CountryModelFromJson(Map<String, dynamic> json) {
  return _CountryModel.fromJson(json);
}

/// @nodoc
mixin _$CountryModel {
  String get country => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  /// Serializes this CountryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CountryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CountryModelCopyWith<CountryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryModelCopyWith<$Res> {
  factory $CountryModelCopyWith(
    CountryModel value,
    $Res Function(CountryModel) then,
  ) = _$CountryModelCopyWithImpl<$Res, CountryModel>;
  @useResult
  $Res call({String country, int count});
}

/// @nodoc
class _$CountryModelCopyWithImpl<$Res, $Val extends CountryModel>
    implements $CountryModelCopyWith<$Res> {
  _$CountryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CountryModel
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
abstract class _$$CountryModelImplCopyWith<$Res>
    implements $CountryModelCopyWith<$Res> {
  factory _$$CountryModelImplCopyWith(
    _$CountryModelImpl value,
    $Res Function(_$CountryModelImpl) then,
  ) = __$$CountryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String country, int count});
}

/// @nodoc
class __$$CountryModelImplCopyWithImpl<$Res>
    extends _$CountryModelCopyWithImpl<$Res, _$CountryModelImpl>
    implements _$$CountryModelImplCopyWith<$Res> {
  __$$CountryModelImplCopyWithImpl(
    _$CountryModelImpl _value,
    $Res Function(_$CountryModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CountryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? country = null, Object? count = null}) {
    return _then(
      _$CountryModelImpl(
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
class _$CountryModelImpl implements _CountryModel {
  const _$CountryModelImpl({required this.country, required this.count});

  factory _$CountryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CountryModelImplFromJson(json);

  @override
  final String country;
  @override
  final int count;

  @override
  String toString() {
    return 'CountryModel(country: $country, count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountryModelImpl &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, country, count);

  /// Create a copy of CountryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CountryModelImplCopyWith<_$CountryModelImpl> get copyWith =>
      __$$CountryModelImplCopyWithImpl<_$CountryModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CountryModelImplToJson(this);
  }
}

abstract class _CountryModel implements CountryModel {
  const factory _CountryModel({
    required final String country,
    required final int count,
  }) = _$CountryModelImpl;

  factory _CountryModel.fromJson(Map<String, dynamic> json) =
      _$CountryModelImpl.fromJson;

  @override
  String get country;
  @override
  int get count;

  /// Create a copy of CountryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CountryModelImplCopyWith<_$CountryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CityModel _$CityModelFromJson(Map<String, dynamic> json) {
  return _CityModel.fromJson(json);
}

/// @nodoc
mixin _$CityModel {
  String get city => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  /// Serializes this CityModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CityModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CityModelCopyWith<CityModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityModelCopyWith<$Res> {
  factory $CityModelCopyWith(CityModel value, $Res Function(CityModel) then) =
      _$CityModelCopyWithImpl<$Res, CityModel>;
  @useResult
  $Res call({String city, String country, int count});
}

/// @nodoc
class _$CityModelCopyWithImpl<$Res, $Val extends CityModel>
    implements $CityModelCopyWith<$Res> {
  _$CityModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CityModel
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
abstract class _$$CityModelImplCopyWith<$Res>
    implements $CityModelCopyWith<$Res> {
  factory _$$CityModelImplCopyWith(
    _$CityModelImpl value,
    $Res Function(_$CityModelImpl) then,
  ) = __$$CityModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String city, String country, int count});
}

/// @nodoc
class __$$CityModelImplCopyWithImpl<$Res>
    extends _$CityModelCopyWithImpl<$Res, _$CityModelImpl>
    implements _$$CityModelImplCopyWith<$Res> {
  __$$CityModelImplCopyWithImpl(
    _$CityModelImpl _value,
    $Res Function(_$CityModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CityModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? city = null,
    Object? country = null,
    Object? count = null,
  }) {
    return _then(
      _$CityModelImpl(
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
class _$CityModelImpl implements _CityModel {
  const _$CityModelImpl({
    required this.city,
    required this.country,
    required this.count,
  });

  factory _$CityModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CityModelImplFromJson(json);

  @override
  final String city;
  @override
  final String country;
  @override
  final int count;

  @override
  String toString() {
    return 'CityModel(city: $city, country: $country, count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CityModelImpl &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, city, country, count);

  /// Create a copy of CityModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CityModelImplCopyWith<_$CityModelImpl> get copyWith =>
      __$$CityModelImplCopyWithImpl<_$CityModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CityModelImplToJson(this);
  }
}

abstract class _CityModel implements CityModel {
  const factory _CityModel({
    required final String city,
    required final String country,
    required final int count,
  }) = _$CityModelImpl;

  factory _CityModel.fromJson(Map<String, dynamic> json) =
      _$CityModelImpl.fromJson;

  @override
  String get city;
  @override
  String get country;
  @override
  int get count;

  /// Create a copy of CityModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CityModelImplCopyWith<_$CityModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ScreenSharesModel _$ScreenSharesModelFromJson(Map<String, dynamic> json) {
  return _ScreenSharesModel.fromJson(json);
}

/// @nodoc
mixin _$ScreenSharesModel {
  int get total => throw _privateConstructorUsedError;
  int get daily => throw _privateConstructorUsedError;
  int get monthly => throw _privateConstructorUsedError;
  int get averageDuration => throw _privateConstructorUsedError;

  /// Serializes this ScreenSharesModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ScreenSharesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScreenSharesModelCopyWith<ScreenSharesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScreenSharesModelCopyWith<$Res> {
  factory $ScreenSharesModelCopyWith(
    ScreenSharesModel value,
    $Res Function(ScreenSharesModel) then,
  ) = _$ScreenSharesModelCopyWithImpl<$Res, ScreenSharesModel>;
  @useResult
  $Res call({int total, int daily, int monthly, int averageDuration});
}

/// @nodoc
class _$ScreenSharesModelCopyWithImpl<$Res, $Val extends ScreenSharesModel>
    implements $ScreenSharesModelCopyWith<$Res> {
  _$ScreenSharesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScreenSharesModel
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
abstract class _$$ScreenSharesModelImplCopyWith<$Res>
    implements $ScreenSharesModelCopyWith<$Res> {
  factory _$$ScreenSharesModelImplCopyWith(
    _$ScreenSharesModelImpl value,
    $Res Function(_$ScreenSharesModelImpl) then,
  ) = __$$ScreenSharesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int total, int daily, int monthly, int averageDuration});
}

/// @nodoc
class __$$ScreenSharesModelImplCopyWithImpl<$Res>
    extends _$ScreenSharesModelCopyWithImpl<$Res, _$ScreenSharesModelImpl>
    implements _$$ScreenSharesModelImplCopyWith<$Res> {
  __$$ScreenSharesModelImplCopyWithImpl(
    _$ScreenSharesModelImpl _value,
    $Res Function(_$ScreenSharesModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ScreenSharesModel
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
      _$ScreenSharesModelImpl(
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
class _$ScreenSharesModelImpl implements _ScreenSharesModel {
  const _$ScreenSharesModelImpl({
    required this.total,
    required this.daily,
    required this.monthly,
    required this.averageDuration,
  });

  factory _$ScreenSharesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScreenSharesModelImplFromJson(json);

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
    return 'ScreenSharesModel(total: $total, daily: $daily, monthly: $monthly, averageDuration: $averageDuration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScreenSharesModelImpl &&
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

  /// Create a copy of ScreenSharesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScreenSharesModelImplCopyWith<_$ScreenSharesModelImpl> get copyWith =>
      __$$ScreenSharesModelImplCopyWithImpl<_$ScreenSharesModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ScreenSharesModelImplToJson(this);
  }
}

abstract class _ScreenSharesModel implements ScreenSharesModel {
  const factory _ScreenSharesModel({
    required final int total,
    required final int daily,
    required final int monthly,
    required final int averageDuration,
  }) = _$ScreenSharesModelImpl;

  factory _ScreenSharesModel.fromJson(Map<String, dynamic> json) =
      _$ScreenSharesModelImpl.fromJson;

  @override
  int get total;
  @override
  int get daily;
  @override
  int get monthly;
  @override
  int get averageDuration;

  /// Create a copy of ScreenSharesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScreenSharesModelImplCopyWith<_$ScreenSharesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
