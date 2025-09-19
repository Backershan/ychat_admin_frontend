// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AppModel _$AppModelFromJson(Map<String, dynamic> json) {
  return _AppModel.fromJson(json);
}

/// @nodoc
mixin _$AppModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get appKey => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  String get version => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this AppModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppModelCopyWith<AppModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppModelCopyWith<$Res> {
  factory $AppModelCopyWith(AppModel value, $Res Function(AppModel) then) =
      _$AppModelCopyWithImpl<$Res, AppModel>;
  @useResult
  $Res call({
    int id,
    String name,
    String appKey,
    String category,
    String description,
    bool isActive,
    String version,
    DateTime createdAt,
    DateTime updatedAt,
  });
}

/// @nodoc
class _$AppModelCopyWithImpl<$Res, $Val extends AppModel>
    implements $AppModelCopyWith<$Res> {
  _$AppModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? appKey = null,
    Object? category = null,
    Object? description = null,
    Object? isActive = null,
    Object? version = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            appKey: null == appKey
                ? _value.appKey
                : appKey // ignore: cast_nullable_to_non_nullable
                      as String,
            category: null == category
                ? _value.category
                : category // ignore: cast_nullable_to_non_nullable
                      as String,
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
            isActive: null == isActive
                ? _value.isActive
                : isActive // ignore: cast_nullable_to_non_nullable
                      as bool,
            version: null == version
                ? _value.version
                : version // ignore: cast_nullable_to_non_nullable
                      as String,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            updatedAt: null == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AppModelImplCopyWith<$Res>
    implements $AppModelCopyWith<$Res> {
  factory _$$AppModelImplCopyWith(
    _$AppModelImpl value,
    $Res Function(_$AppModelImpl) then,
  ) = __$$AppModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String name,
    String appKey,
    String category,
    String description,
    bool isActive,
    String version,
    DateTime createdAt,
    DateTime updatedAt,
  });
}

/// @nodoc
class __$$AppModelImplCopyWithImpl<$Res>
    extends _$AppModelCopyWithImpl<$Res, _$AppModelImpl>
    implements _$$AppModelImplCopyWith<$Res> {
  __$$AppModelImplCopyWithImpl(
    _$AppModelImpl _value,
    $Res Function(_$AppModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AppModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? appKey = null,
    Object? category = null,
    Object? description = null,
    Object? isActive = null,
    Object? version = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _$AppModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        appKey: null == appKey
            ? _value.appKey
            : appKey // ignore: cast_nullable_to_non_nullable
                  as String,
        category: null == category
            ? _value.category
            : category // ignore: cast_nullable_to_non_nullable
                  as String,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
        isActive: null == isActive
            ? _value.isActive
            : isActive // ignore: cast_nullable_to_non_nullable
                  as bool,
        version: null == version
            ? _value.version
            : version // ignore: cast_nullable_to_non_nullable
                  as String,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        updatedAt: null == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AppModelImpl implements _AppModel {
  const _$AppModelImpl({
    required this.id,
    required this.name,
    required this.appKey,
    required this.category,
    required this.description,
    required this.isActive,
    required this.version,
    required this.createdAt,
    required this.updatedAt,
  });

  factory _$AppModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String appKey;
  @override
  final String category;
  @override
  final String description;
  @override
  final bool isActive;
  @override
  final String version;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'AppModel(id: $id, name: $name, appKey: $appKey, category: $category, description: $description, isActive: $isActive, version: $version, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.appKey, appKey) || other.appKey == appKey) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    appKey,
    category,
    description,
    isActive,
    version,
    createdAt,
    updatedAt,
  );

  /// Create a copy of AppModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppModelImplCopyWith<_$AppModelImpl> get copyWith =>
      __$$AppModelImplCopyWithImpl<_$AppModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppModelImplToJson(this);
  }
}

abstract class _AppModel implements AppModel {
  const factory _AppModel({
    required final int id,
    required final String name,
    required final String appKey,
    required final String category,
    required final String description,
    required final bool isActive,
    required final String version,
    required final DateTime createdAt,
    required final DateTime updatedAt,
  }) = _$AppModelImpl;

  factory _AppModel.fromJson(Map<String, dynamic> json) =
      _$AppModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get appKey;
  @override
  String get category;
  @override
  String get description;
  @override
  bool get isActive;
  @override
  String get version;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of AppModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppModelImplCopyWith<_$AppModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AppListModel _$AppListModelFromJson(Map<String, dynamic> json) {
  return _AppListModel.fromJson(json);
}

/// @nodoc
mixin _$AppListModel {
  List<AppModel> get apps => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get pages => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;

  /// Serializes this AppListModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppListModelCopyWith<AppListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppListModelCopyWith<$Res> {
  factory $AppListModelCopyWith(
    AppListModel value,
    $Res Function(AppListModel) then,
  ) = _$AppListModelCopyWithImpl<$Res, AppListModel>;
  @useResult
  $Res call({List<AppModel> apps, int total, int page, int pages, int limit});
}

/// @nodoc
class _$AppListModelCopyWithImpl<$Res, $Val extends AppListModel>
    implements $AppListModelCopyWith<$Res> {
  _$AppListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apps = null,
    Object? total = null,
    Object? page = null,
    Object? pages = null,
    Object? limit = null,
  }) {
    return _then(
      _value.copyWith(
            apps: null == apps
                ? _value.apps
                : apps // ignore: cast_nullable_to_non_nullable
                      as List<AppModel>,
            total: null == total
                ? _value.total
                : total // ignore: cast_nullable_to_non_nullable
                      as int,
            page: null == page
                ? _value.page
                : page // ignore: cast_nullable_to_non_nullable
                      as int,
            pages: null == pages
                ? _value.pages
                : pages // ignore: cast_nullable_to_non_nullable
                      as int,
            limit: null == limit
                ? _value.limit
                : limit // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AppListModelImplCopyWith<$Res>
    implements $AppListModelCopyWith<$Res> {
  factory _$$AppListModelImplCopyWith(
    _$AppListModelImpl value,
    $Res Function(_$AppListModelImpl) then,
  ) = __$$AppListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<AppModel> apps, int total, int page, int pages, int limit});
}

/// @nodoc
class __$$AppListModelImplCopyWithImpl<$Res>
    extends _$AppListModelCopyWithImpl<$Res, _$AppListModelImpl>
    implements _$$AppListModelImplCopyWith<$Res> {
  __$$AppListModelImplCopyWithImpl(
    _$AppListModelImpl _value,
    $Res Function(_$AppListModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AppListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apps = null,
    Object? total = null,
    Object? page = null,
    Object? pages = null,
    Object? limit = null,
  }) {
    return _then(
      _$AppListModelImpl(
        apps: null == apps
            ? _value._apps
            : apps // ignore: cast_nullable_to_non_nullable
                  as List<AppModel>,
        total: null == total
            ? _value.total
            : total // ignore: cast_nullable_to_non_nullable
                  as int,
        page: null == page
            ? _value.page
            : page // ignore: cast_nullable_to_non_nullable
                  as int,
        pages: null == pages
            ? _value.pages
            : pages // ignore: cast_nullable_to_non_nullable
                  as int,
        limit: null == limit
            ? _value.limit
            : limit // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AppListModelImpl implements _AppListModel {
  const _$AppListModelImpl({
    required final List<AppModel> apps,
    required this.total,
    required this.page,
    required this.pages,
    required this.limit,
  }) : _apps = apps;

  factory _$AppListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppListModelImplFromJson(json);

  final List<AppModel> _apps;
  @override
  List<AppModel> get apps {
    if (_apps is EqualUnmodifiableListView) return _apps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_apps);
  }

  @override
  final int total;
  @override
  final int page;
  @override
  final int pages;
  @override
  final int limit;

  @override
  String toString() {
    return 'AppListModel(apps: $apps, total: $total, page: $page, pages: $pages, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppListModelImpl &&
            const DeepCollectionEquality().equals(other._apps, _apps) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pages, pages) || other.pages == pages) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_apps),
    total,
    page,
    pages,
    limit,
  );

  /// Create a copy of AppListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppListModelImplCopyWith<_$AppListModelImpl> get copyWith =>
      __$$AppListModelImplCopyWithImpl<_$AppListModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppListModelImplToJson(this);
  }
}

abstract class _AppListModel implements AppListModel {
  const factory _AppListModel({
    required final List<AppModel> apps,
    required final int total,
    required final int page,
    required final int pages,
    required final int limit,
  }) = _$AppListModelImpl;

  factory _AppListModel.fromJson(Map<String, dynamic> json) =
      _$AppListModelImpl.fromJson;

  @override
  List<AppModel> get apps;
  @override
  int get total;
  @override
  int get page;
  @override
  int get pages;
  @override
  int get limit;

  /// Create a copy of AppListModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppListModelImplCopyWith<_$AppListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateAppRequestModel _$CreateAppRequestModelFromJson(
  Map<String, dynamic> json,
) {
  return _CreateAppRequestModel.fromJson(json);
}

/// @nodoc
mixin _$CreateAppRequestModel {
  String get name => throw _privateConstructorUsedError;
  String get appKey => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  String get version => throw _privateConstructorUsedError;

  /// Serializes this CreateAppRequestModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateAppRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateAppRequestModelCopyWith<CreateAppRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateAppRequestModelCopyWith<$Res> {
  factory $CreateAppRequestModelCopyWith(
    CreateAppRequestModel value,
    $Res Function(CreateAppRequestModel) then,
  ) = _$CreateAppRequestModelCopyWithImpl<$Res, CreateAppRequestModel>;
  @useResult
  $Res call({
    String name,
    String appKey,
    String category,
    String description,
    bool isActive,
    String version,
  });
}

/// @nodoc
class _$CreateAppRequestModelCopyWithImpl<
  $Res,
  $Val extends CreateAppRequestModel
>
    implements $CreateAppRequestModelCopyWith<$Res> {
  _$CreateAppRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateAppRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? appKey = null,
    Object? category = null,
    Object? description = null,
    Object? isActive = null,
    Object? version = null,
  }) {
    return _then(
      _value.copyWith(
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            appKey: null == appKey
                ? _value.appKey
                : appKey // ignore: cast_nullable_to_non_nullable
                      as String,
            category: null == category
                ? _value.category
                : category // ignore: cast_nullable_to_non_nullable
                      as String,
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
            isActive: null == isActive
                ? _value.isActive
                : isActive // ignore: cast_nullable_to_non_nullable
                      as bool,
            version: null == version
                ? _value.version
                : version // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CreateAppRequestModelImplCopyWith<$Res>
    implements $CreateAppRequestModelCopyWith<$Res> {
  factory _$$CreateAppRequestModelImplCopyWith(
    _$CreateAppRequestModelImpl value,
    $Res Function(_$CreateAppRequestModelImpl) then,
  ) = __$$CreateAppRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String name,
    String appKey,
    String category,
    String description,
    bool isActive,
    String version,
  });
}

/// @nodoc
class __$$CreateAppRequestModelImplCopyWithImpl<$Res>
    extends
        _$CreateAppRequestModelCopyWithImpl<$Res, _$CreateAppRequestModelImpl>
    implements _$$CreateAppRequestModelImplCopyWith<$Res> {
  __$$CreateAppRequestModelImplCopyWithImpl(
    _$CreateAppRequestModelImpl _value,
    $Res Function(_$CreateAppRequestModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CreateAppRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? appKey = null,
    Object? category = null,
    Object? description = null,
    Object? isActive = null,
    Object? version = null,
  }) {
    return _then(
      _$CreateAppRequestModelImpl(
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        appKey: null == appKey
            ? _value.appKey
            : appKey // ignore: cast_nullable_to_non_nullable
                  as String,
        category: null == category
            ? _value.category
            : category // ignore: cast_nullable_to_non_nullable
                  as String,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
        isActive: null == isActive
            ? _value.isActive
            : isActive // ignore: cast_nullable_to_non_nullable
                  as bool,
        version: null == version
            ? _value.version
            : version // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateAppRequestModelImpl implements _CreateAppRequestModel {
  const _$CreateAppRequestModelImpl({
    required this.name,
    required this.appKey,
    required this.category,
    required this.description,
    required this.isActive,
    required this.version,
  });

  factory _$CreateAppRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateAppRequestModelImplFromJson(json);

  @override
  final String name;
  @override
  final String appKey;
  @override
  final String category;
  @override
  final String description;
  @override
  final bool isActive;
  @override
  final String version;

  @override
  String toString() {
    return 'CreateAppRequestModel(name: $name, appKey: $appKey, category: $category, description: $description, isActive: $isActive, version: $version)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateAppRequestModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.appKey, appKey) || other.appKey == appKey) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.version, version) || other.version == version));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    name,
    appKey,
    category,
    description,
    isActive,
    version,
  );

  /// Create a copy of CreateAppRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateAppRequestModelImplCopyWith<_$CreateAppRequestModelImpl>
  get copyWith =>
      __$$CreateAppRequestModelImplCopyWithImpl<_$CreateAppRequestModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateAppRequestModelImplToJson(this);
  }
}

abstract class _CreateAppRequestModel implements CreateAppRequestModel {
  const factory _CreateAppRequestModel({
    required final String name,
    required final String appKey,
    required final String category,
    required final String description,
    required final bool isActive,
    required final String version,
  }) = _$CreateAppRequestModelImpl;

  factory _CreateAppRequestModel.fromJson(Map<String, dynamic> json) =
      _$CreateAppRequestModelImpl.fromJson;

  @override
  String get name;
  @override
  String get appKey;
  @override
  String get category;
  @override
  String get description;
  @override
  bool get isActive;
  @override
  String get version;

  /// Create a copy of CreateAppRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateAppRequestModelImplCopyWith<_$CreateAppRequestModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}

UpdateAppRequestModel _$UpdateAppRequestModelFromJson(
  Map<String, dynamic> json,
) {
  return _UpdateAppRequestModel.fromJson(json);
}

/// @nodoc
mixin _$UpdateAppRequestModel {
  int get appId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  /// Serializes this UpdateAppRequestModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateAppRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateAppRequestModelCopyWith<UpdateAppRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateAppRequestModelCopyWith<$Res> {
  factory $UpdateAppRequestModelCopyWith(
    UpdateAppRequestModel value,
    $Res Function(UpdateAppRequestModel) then,
  ) = _$UpdateAppRequestModelCopyWithImpl<$Res, UpdateAppRequestModel>;
  @useResult
  $Res call({int appId, String name, String description});
}

/// @nodoc
class _$UpdateAppRequestModelCopyWithImpl<
  $Res,
  $Val extends UpdateAppRequestModel
>
    implements $UpdateAppRequestModelCopyWith<$Res> {
  _$UpdateAppRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateAppRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appId = null,
    Object? name = null,
    Object? description = null,
  }) {
    return _then(
      _value.copyWith(
            appId: null == appId
                ? _value.appId
                : appId // ignore: cast_nullable_to_non_nullable
                      as int,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UpdateAppRequestModelImplCopyWith<$Res>
    implements $UpdateAppRequestModelCopyWith<$Res> {
  factory _$$UpdateAppRequestModelImplCopyWith(
    _$UpdateAppRequestModelImpl value,
    $Res Function(_$UpdateAppRequestModelImpl) then,
  ) = __$$UpdateAppRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int appId, String name, String description});
}

/// @nodoc
class __$$UpdateAppRequestModelImplCopyWithImpl<$Res>
    extends
        _$UpdateAppRequestModelCopyWithImpl<$Res, _$UpdateAppRequestModelImpl>
    implements _$$UpdateAppRequestModelImplCopyWith<$Res> {
  __$$UpdateAppRequestModelImplCopyWithImpl(
    _$UpdateAppRequestModelImpl _value,
    $Res Function(_$UpdateAppRequestModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UpdateAppRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appId = null,
    Object? name = null,
    Object? description = null,
  }) {
    return _then(
      _$UpdateAppRequestModelImpl(
        appId: null == appId
            ? _value.appId
            : appId // ignore: cast_nullable_to_non_nullable
                  as int,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateAppRequestModelImpl implements _UpdateAppRequestModel {
  const _$UpdateAppRequestModelImpl({
    required this.appId,
    required this.name,
    required this.description,
  });

  factory _$UpdateAppRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateAppRequestModelImplFromJson(json);

  @override
  final int appId;
  @override
  final String name;
  @override
  final String description;

  @override
  String toString() {
    return 'UpdateAppRequestModel(appId: $appId, name: $name, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateAppRequestModelImpl &&
            (identical(other.appId, appId) || other.appId == appId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, appId, name, description);

  /// Create a copy of UpdateAppRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateAppRequestModelImplCopyWith<_$UpdateAppRequestModelImpl>
  get copyWith =>
      __$$UpdateAppRequestModelImplCopyWithImpl<_$UpdateAppRequestModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateAppRequestModelImplToJson(this);
  }
}

abstract class _UpdateAppRequestModel implements UpdateAppRequestModel {
  const factory _UpdateAppRequestModel({
    required final int appId,
    required final String name,
    required final String description,
  }) = _$UpdateAppRequestModelImpl;

  factory _UpdateAppRequestModel.fromJson(Map<String, dynamic> json) =
      _$UpdateAppRequestModelImpl.fromJson;

  @override
  int get appId;
  @override
  String get name;
  @override
  String get description;

  /// Create a copy of UpdateAppRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateAppRequestModelImplCopyWith<_$UpdateAppRequestModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}

DeleteAppRequestModel _$DeleteAppRequestModelFromJson(
  Map<String, dynamic> json,
) {
  return _DeleteAppRequestModel.fromJson(json);
}

/// @nodoc
mixin _$DeleteAppRequestModel {
  int get appId => throw _privateConstructorUsedError;

  /// Serializes this DeleteAppRequestModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeleteAppRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeleteAppRequestModelCopyWith<DeleteAppRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteAppRequestModelCopyWith<$Res> {
  factory $DeleteAppRequestModelCopyWith(
    DeleteAppRequestModel value,
    $Res Function(DeleteAppRequestModel) then,
  ) = _$DeleteAppRequestModelCopyWithImpl<$Res, DeleteAppRequestModel>;
  @useResult
  $Res call({int appId});
}

/// @nodoc
class _$DeleteAppRequestModelCopyWithImpl<
  $Res,
  $Val extends DeleteAppRequestModel
>
    implements $DeleteAppRequestModelCopyWith<$Res> {
  _$DeleteAppRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeleteAppRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? appId = null}) {
    return _then(
      _value.copyWith(
            appId: null == appId
                ? _value.appId
                : appId // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DeleteAppRequestModelImplCopyWith<$Res>
    implements $DeleteAppRequestModelCopyWith<$Res> {
  factory _$$DeleteAppRequestModelImplCopyWith(
    _$DeleteAppRequestModelImpl value,
    $Res Function(_$DeleteAppRequestModelImpl) then,
  ) = __$$DeleteAppRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int appId});
}

/// @nodoc
class __$$DeleteAppRequestModelImplCopyWithImpl<$Res>
    extends
        _$DeleteAppRequestModelCopyWithImpl<$Res, _$DeleteAppRequestModelImpl>
    implements _$$DeleteAppRequestModelImplCopyWith<$Res> {
  __$$DeleteAppRequestModelImplCopyWithImpl(
    _$DeleteAppRequestModelImpl _value,
    $Res Function(_$DeleteAppRequestModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DeleteAppRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? appId = null}) {
    return _then(
      _$DeleteAppRequestModelImpl(
        appId: null == appId
            ? _value.appId
            : appId // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DeleteAppRequestModelImpl implements _DeleteAppRequestModel {
  const _$DeleteAppRequestModelImpl({required this.appId});

  factory _$DeleteAppRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeleteAppRequestModelImplFromJson(json);

  @override
  final int appId;

  @override
  String toString() {
    return 'DeleteAppRequestModel(appId: $appId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteAppRequestModelImpl &&
            (identical(other.appId, appId) || other.appId == appId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, appId);

  /// Create a copy of DeleteAppRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteAppRequestModelImplCopyWith<_$DeleteAppRequestModelImpl>
  get copyWith =>
      __$$DeleteAppRequestModelImplCopyWithImpl<_$DeleteAppRequestModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DeleteAppRequestModelImplToJson(this);
  }
}

abstract class _DeleteAppRequestModel implements DeleteAppRequestModel {
  const factory _DeleteAppRequestModel({required final int appId}) =
      _$DeleteAppRequestModelImpl;

  factory _DeleteAppRequestModel.fromJson(Map<String, dynamic> json) =
      _$DeleteAppRequestModelImpl.fromJson;

  @override
  int get appId;

  /// Create a copy of DeleteAppRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteAppRequestModelImplCopyWith<_$DeleteAppRequestModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}
