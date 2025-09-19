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
  String? get iconUrl => throw _privateConstructorUsedError;
  List<String> get category => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  bool get isIntegrated => throw _privateConstructorUsedError;
  String get version => throw _privateConstructorUsedError;
  List<String> get permissions => throw _privateConstructorUsedError;
  Map<String, dynamic>? get integrationConfig =>
      throw _privateConstructorUsedError;
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
    String? iconUrl,
    List<String> category,
    String description,
    bool isActive,
    bool isIntegrated,
    String version,
    List<String> permissions,
    Map<String, dynamic>? integrationConfig,
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
    Object? iconUrl = freezed,
    Object? category = null,
    Object? description = null,
    Object? isActive = null,
    Object? isIntegrated = null,
    Object? version = null,
    Object? permissions = null,
    Object? integrationConfig = freezed,
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
            iconUrl: freezed == iconUrl
                ? _value.iconUrl
                : iconUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            category: null == category
                ? _value.category
                : category // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
            isActive: null == isActive
                ? _value.isActive
                : isActive // ignore: cast_nullable_to_non_nullable
                      as bool,
            isIntegrated: null == isIntegrated
                ? _value.isIntegrated
                : isIntegrated // ignore: cast_nullable_to_non_nullable
                      as bool,
            version: null == version
                ? _value.version
                : version // ignore: cast_nullable_to_non_nullable
                      as String,
            permissions: null == permissions
                ? _value.permissions
                : permissions // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            integrationConfig: freezed == integrationConfig
                ? _value.integrationConfig
                : integrationConfig // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>?,
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
    String? iconUrl,
    List<String> category,
    String description,
    bool isActive,
    bool isIntegrated,
    String version,
    List<String> permissions,
    Map<String, dynamic>? integrationConfig,
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
    Object? iconUrl = freezed,
    Object? category = null,
    Object? description = null,
    Object? isActive = null,
    Object? isIntegrated = null,
    Object? version = null,
    Object? permissions = null,
    Object? integrationConfig = freezed,
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
        iconUrl: freezed == iconUrl
            ? _value.iconUrl
            : iconUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        category: null == category
            ? _value._category
            : category // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
        isActive: null == isActive
            ? _value.isActive
            : isActive // ignore: cast_nullable_to_non_nullable
                  as bool,
        isIntegrated: null == isIntegrated
            ? _value.isIntegrated
            : isIntegrated // ignore: cast_nullable_to_non_nullable
                  as bool,
        version: null == version
            ? _value.version
            : version // ignore: cast_nullable_to_non_nullable
                  as String,
        permissions: null == permissions
            ? _value._permissions
            : permissions // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        integrationConfig: freezed == integrationConfig
            ? _value._integrationConfig
            : integrationConfig // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>?,
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
    this.iconUrl,
    required final List<String> category,
    required this.description,
    required this.isActive,
    required this.isIntegrated,
    required this.version,
    required final List<String> permissions,
    final Map<String, dynamic>? integrationConfig,
    required this.createdAt,
    required this.updatedAt,
  }) : _category = category,
       _permissions = permissions,
       _integrationConfig = integrationConfig;

  factory _$AppModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String appKey;
  @override
  final String? iconUrl;
  final List<String> _category;
  @override
  List<String> get category {
    if (_category is EqualUnmodifiableListView) return _category;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_category);
  }

  @override
  final String description;
  @override
  final bool isActive;
  @override
  final bool isIntegrated;
  @override
  final String version;
  final List<String> _permissions;
  @override
  List<String> get permissions {
    if (_permissions is EqualUnmodifiableListView) return _permissions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_permissions);
  }

  final Map<String, dynamic>? _integrationConfig;
  @override
  Map<String, dynamic>? get integrationConfig {
    final value = _integrationConfig;
    if (value == null) return null;
    if (_integrationConfig is EqualUnmodifiableMapView)
      return _integrationConfig;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'AppModel(id: $id, name: $name, appKey: $appKey, iconUrl: $iconUrl, category: $category, description: $description, isActive: $isActive, isIntegrated: $isIntegrated, version: $version, permissions: $permissions, integrationConfig: $integrationConfig, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.appKey, appKey) || other.appKey == appKey) &&
            (identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl) &&
            const DeepCollectionEquality().equals(other._category, _category) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.isIntegrated, isIntegrated) ||
                other.isIntegrated == isIntegrated) &&
            (identical(other.version, version) || other.version == version) &&
            const DeepCollectionEquality().equals(
              other._permissions,
              _permissions,
            ) &&
            const DeepCollectionEquality().equals(
              other._integrationConfig,
              _integrationConfig,
            ) &&
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
    iconUrl,
    const DeepCollectionEquality().hash(_category),
    description,
    isActive,
    isIntegrated,
    version,
    const DeepCollectionEquality().hash(_permissions),
    const DeepCollectionEquality().hash(_integrationConfig),
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
    final String? iconUrl,
    required final List<String> category,
    required final String description,
    required final bool isActive,
    required final bool isIntegrated,
    required final String version,
    required final List<String> permissions,
    final Map<String, dynamic>? integrationConfig,
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
  String? get iconUrl;
  @override
  List<String> get category;
  @override
  String get description;
  @override
  bool get isActive;
  @override
  bool get isIntegrated;
  @override
  String get version;
  @override
  List<String> get permissions;
  @override
  Map<String, dynamic>? get integrationConfig;
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
  PaginationModel get pagination => throw _privateConstructorUsedError;

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
  $Res call({List<AppModel> apps, PaginationModel pagination});

  $PaginationModelCopyWith<$Res> get pagination;
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
  $Res call({Object? apps = null, Object? pagination = null}) {
    return _then(
      _value.copyWith(
            apps: null == apps
                ? _value.apps
                : apps // ignore: cast_nullable_to_non_nullable
                      as List<AppModel>,
            pagination: null == pagination
                ? _value.pagination
                : pagination // ignore: cast_nullable_to_non_nullable
                      as PaginationModel,
          )
          as $Val,
    );
  }

  /// Create a copy of AppListModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginationModelCopyWith<$Res> get pagination {
    return $PaginationModelCopyWith<$Res>(_value.pagination, (value) {
      return _then(_value.copyWith(pagination: value) as $Val);
    });
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
  $Res call({List<AppModel> apps, PaginationModel pagination});

  @override
  $PaginationModelCopyWith<$Res> get pagination;
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
  $Res call({Object? apps = null, Object? pagination = null}) {
    return _then(
      _$AppListModelImpl(
        apps: null == apps
            ? _value._apps
            : apps // ignore: cast_nullable_to_non_nullable
                  as List<AppModel>,
        pagination: null == pagination
            ? _value.pagination
            : pagination // ignore: cast_nullable_to_non_nullable
                  as PaginationModel,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AppListModelImpl implements _AppListModel {
  const _$AppListModelImpl({
    required final List<AppModel> apps,
    required this.pagination,
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
  final PaginationModel pagination;

  @override
  String toString() {
    return 'AppListModel(apps: $apps, pagination: $pagination)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppListModelImpl &&
            const DeepCollectionEquality().equals(other._apps, _apps) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_apps),
    pagination,
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
    required final PaginationModel pagination,
  }) = _$AppListModelImpl;

  factory _AppListModel.fromJson(Map<String, dynamic> json) =
      _$AppListModelImpl.fromJson;

  @override
  List<AppModel> get apps;
  @override
  PaginationModel get pagination;

  /// Create a copy of AppListModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppListModelImplCopyWith<_$AppListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PaginationModel _$PaginationModelFromJson(Map<String, dynamic> json) {
  return _PaginationModel.fromJson(json);
}

/// @nodoc
mixin _$PaginationModel {
  int get total => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get pages => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;

  /// Serializes this PaginationModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaginationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaginationModelCopyWith<PaginationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationModelCopyWith<$Res> {
  factory $PaginationModelCopyWith(
    PaginationModel value,
    $Res Function(PaginationModel) then,
  ) = _$PaginationModelCopyWithImpl<$Res, PaginationModel>;
  @useResult
  $Res call({int total, int page, int pages, int limit});
}

/// @nodoc
class _$PaginationModelCopyWithImpl<$Res, $Val extends PaginationModel>
    implements $PaginationModelCopyWith<$Res> {
  _$PaginationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaginationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? page = null,
    Object? pages = null,
    Object? limit = null,
  }) {
    return _then(
      _value.copyWith(
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
abstract class _$$PaginationModelImplCopyWith<$Res>
    implements $PaginationModelCopyWith<$Res> {
  factory _$$PaginationModelImplCopyWith(
    _$PaginationModelImpl value,
    $Res Function(_$PaginationModelImpl) then,
  ) = __$$PaginationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int total, int page, int pages, int limit});
}

/// @nodoc
class __$$PaginationModelImplCopyWithImpl<$Res>
    extends _$PaginationModelCopyWithImpl<$Res, _$PaginationModelImpl>
    implements _$$PaginationModelImplCopyWith<$Res> {
  __$$PaginationModelImplCopyWithImpl(
    _$PaginationModelImpl _value,
    $Res Function(_$PaginationModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PaginationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? page = null,
    Object? pages = null,
    Object? limit = null,
  }) {
    return _then(
      _$PaginationModelImpl(
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
class _$PaginationModelImpl implements _PaginationModel {
  const _$PaginationModelImpl({
    required this.total,
    required this.page,
    required this.pages,
    required this.limit,
  });

  factory _$PaginationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaginationModelImplFromJson(json);

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
    return 'PaginationModel(total: $total, page: $page, pages: $pages, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginationModelImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pages, pages) || other.pages == pages) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, total, page, pages, limit);

  /// Create a copy of PaginationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginationModelImplCopyWith<_$PaginationModelImpl> get copyWith =>
      __$$PaginationModelImplCopyWithImpl<_$PaginationModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PaginationModelImplToJson(this);
  }
}

abstract class _PaginationModel implements PaginationModel {
  const factory _PaginationModel({
    required final int total,
    required final int page,
    required final int pages,
    required final int limit,
  }) = _$PaginationModelImpl;

  factory _PaginationModel.fromJson(Map<String, dynamic> json) =
      _$PaginationModelImpl.fromJson;

  @override
  int get total;
  @override
  int get page;
  @override
  int get pages;
  @override
  int get limit;

  /// Create a copy of PaginationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaginationModelImplCopyWith<_$PaginationModelImpl> get copyWith =>
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
  String? get iconUrl => throw _privateConstructorUsedError;
  List<String> get category => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  bool get isIntegrated => throw _privateConstructorUsedError;
  String get version => throw _privateConstructorUsedError;
  List<String> get permissions => throw _privateConstructorUsedError;
  Map<String, dynamic>? get integrationConfig =>
      throw _privateConstructorUsedError;

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
    String? iconUrl,
    List<String> category,
    String description,
    bool isActive,
    bool isIntegrated,
    String version,
    List<String> permissions,
    Map<String, dynamic>? integrationConfig,
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
    Object? iconUrl = freezed,
    Object? category = null,
    Object? description = null,
    Object? isActive = null,
    Object? isIntegrated = null,
    Object? version = null,
    Object? permissions = null,
    Object? integrationConfig = freezed,
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
            iconUrl: freezed == iconUrl
                ? _value.iconUrl
                : iconUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            category: null == category
                ? _value.category
                : category // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
            isActive: null == isActive
                ? _value.isActive
                : isActive // ignore: cast_nullable_to_non_nullable
                      as bool,
            isIntegrated: null == isIntegrated
                ? _value.isIntegrated
                : isIntegrated // ignore: cast_nullable_to_non_nullable
                      as bool,
            version: null == version
                ? _value.version
                : version // ignore: cast_nullable_to_non_nullable
                      as String,
            permissions: null == permissions
                ? _value.permissions
                : permissions // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            integrationConfig: freezed == integrationConfig
                ? _value.integrationConfig
                : integrationConfig // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>?,
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
    String? iconUrl,
    List<String> category,
    String description,
    bool isActive,
    bool isIntegrated,
    String version,
    List<String> permissions,
    Map<String, dynamic>? integrationConfig,
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
    Object? iconUrl = freezed,
    Object? category = null,
    Object? description = null,
    Object? isActive = null,
    Object? isIntegrated = null,
    Object? version = null,
    Object? permissions = null,
    Object? integrationConfig = freezed,
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
        iconUrl: freezed == iconUrl
            ? _value.iconUrl
            : iconUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        category: null == category
            ? _value._category
            : category // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
        isActive: null == isActive
            ? _value.isActive
            : isActive // ignore: cast_nullable_to_non_nullable
                  as bool,
        isIntegrated: null == isIntegrated
            ? _value.isIntegrated
            : isIntegrated // ignore: cast_nullable_to_non_nullable
                  as bool,
        version: null == version
            ? _value.version
            : version // ignore: cast_nullable_to_non_nullable
                  as String,
        permissions: null == permissions
            ? _value._permissions
            : permissions // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        integrationConfig: freezed == integrationConfig
            ? _value._integrationConfig
            : integrationConfig // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>?,
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
    this.iconUrl,
    required final List<String> category,
    required this.description,
    required this.isActive,
    required this.isIntegrated,
    required this.version,
    required final List<String> permissions,
    final Map<String, dynamic>? integrationConfig,
  }) : _category = category,
       _permissions = permissions,
       _integrationConfig = integrationConfig;

  factory _$CreateAppRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateAppRequestModelImplFromJson(json);

  @override
  final String name;
  @override
  final String appKey;
  @override
  final String? iconUrl;
  final List<String> _category;
  @override
  List<String> get category {
    if (_category is EqualUnmodifiableListView) return _category;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_category);
  }

  @override
  final String description;
  @override
  final bool isActive;
  @override
  final bool isIntegrated;
  @override
  final String version;
  final List<String> _permissions;
  @override
  List<String> get permissions {
    if (_permissions is EqualUnmodifiableListView) return _permissions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_permissions);
  }

  final Map<String, dynamic>? _integrationConfig;
  @override
  Map<String, dynamic>? get integrationConfig {
    final value = _integrationConfig;
    if (value == null) return null;
    if (_integrationConfig is EqualUnmodifiableMapView)
      return _integrationConfig;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'CreateAppRequestModel(name: $name, appKey: $appKey, iconUrl: $iconUrl, category: $category, description: $description, isActive: $isActive, isIntegrated: $isIntegrated, version: $version, permissions: $permissions, integrationConfig: $integrationConfig)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateAppRequestModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.appKey, appKey) || other.appKey == appKey) &&
            (identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl) &&
            const DeepCollectionEquality().equals(other._category, _category) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.isIntegrated, isIntegrated) ||
                other.isIntegrated == isIntegrated) &&
            (identical(other.version, version) || other.version == version) &&
            const DeepCollectionEquality().equals(
              other._permissions,
              _permissions,
            ) &&
            const DeepCollectionEquality().equals(
              other._integrationConfig,
              _integrationConfig,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    name,
    appKey,
    iconUrl,
    const DeepCollectionEquality().hash(_category),
    description,
    isActive,
    isIntegrated,
    version,
    const DeepCollectionEquality().hash(_permissions),
    const DeepCollectionEquality().hash(_integrationConfig),
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
    final String? iconUrl,
    required final List<String> category,
    required final String description,
    required final bool isActive,
    required final bool isIntegrated,
    required final String version,
    required final List<String> permissions,
    final Map<String, dynamic>? integrationConfig,
  }) = _$CreateAppRequestModelImpl;

  factory _CreateAppRequestModel.fromJson(Map<String, dynamic> json) =
      _$CreateAppRequestModelImpl.fromJson;

  @override
  String get name;
  @override
  String get appKey;
  @override
  String? get iconUrl;
  @override
  List<String> get category;
  @override
  String get description;
  @override
  bool get isActive;
  @override
  bool get isIntegrated;
  @override
  String get version;
  @override
  List<String> get permissions;
  @override
  Map<String, dynamic>? get integrationConfig;

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
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  List<String>? get category => throw _privateConstructorUsedError;
  bool? get isActive => throw _privateConstructorUsedError;
  bool? get isIntegrated => throw _privateConstructorUsedError;
  String? get version => throw _privateConstructorUsedError;
  List<String>? get permissions => throw _privateConstructorUsedError;
  Map<String, dynamic>? get integrationConfig =>
      throw _privateConstructorUsedError;

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
  $Res call({
    int appId,
    String? name,
    String? description,
    List<String>? category,
    bool? isActive,
    bool? isIntegrated,
    String? version,
    List<String>? permissions,
    Map<String, dynamic>? integrationConfig,
  });
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
    Object? name = freezed,
    Object? description = freezed,
    Object? category = freezed,
    Object? isActive = freezed,
    Object? isIntegrated = freezed,
    Object? version = freezed,
    Object? permissions = freezed,
    Object? integrationConfig = freezed,
  }) {
    return _then(
      _value.copyWith(
            appId: null == appId
                ? _value.appId
                : appId // ignore: cast_nullable_to_non_nullable
                      as int,
            name: freezed == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String?,
            description: freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String?,
            category: freezed == category
                ? _value.category
                : category // ignore: cast_nullable_to_non_nullable
                      as List<String>?,
            isActive: freezed == isActive
                ? _value.isActive
                : isActive // ignore: cast_nullable_to_non_nullable
                      as bool?,
            isIntegrated: freezed == isIntegrated
                ? _value.isIntegrated
                : isIntegrated // ignore: cast_nullable_to_non_nullable
                      as bool?,
            version: freezed == version
                ? _value.version
                : version // ignore: cast_nullable_to_non_nullable
                      as String?,
            permissions: freezed == permissions
                ? _value.permissions
                : permissions // ignore: cast_nullable_to_non_nullable
                      as List<String>?,
            integrationConfig: freezed == integrationConfig
                ? _value.integrationConfig
                : integrationConfig // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>?,
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
  $Res call({
    int appId,
    String? name,
    String? description,
    List<String>? category,
    bool? isActive,
    bool? isIntegrated,
    String? version,
    List<String>? permissions,
    Map<String, dynamic>? integrationConfig,
  });
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
    Object? name = freezed,
    Object? description = freezed,
    Object? category = freezed,
    Object? isActive = freezed,
    Object? isIntegrated = freezed,
    Object? version = freezed,
    Object? permissions = freezed,
    Object? integrationConfig = freezed,
  }) {
    return _then(
      _$UpdateAppRequestModelImpl(
        appId: null == appId
            ? _value.appId
            : appId // ignore: cast_nullable_to_non_nullable
                  as int,
        name: freezed == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String?,
        description: freezed == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String?,
        category: freezed == category
            ? _value._category
            : category // ignore: cast_nullable_to_non_nullable
                  as List<String>?,
        isActive: freezed == isActive
            ? _value.isActive
            : isActive // ignore: cast_nullable_to_non_nullable
                  as bool?,
        isIntegrated: freezed == isIntegrated
            ? _value.isIntegrated
            : isIntegrated // ignore: cast_nullable_to_non_nullable
                  as bool?,
        version: freezed == version
            ? _value.version
            : version // ignore: cast_nullable_to_non_nullable
                  as String?,
        permissions: freezed == permissions
            ? _value._permissions
            : permissions // ignore: cast_nullable_to_non_nullable
                  as List<String>?,
        integrationConfig: freezed == integrationConfig
            ? _value._integrationConfig
            : integrationConfig // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateAppRequestModelImpl implements _UpdateAppRequestModel {
  const _$UpdateAppRequestModelImpl({
    required this.appId,
    this.name,
    this.description,
    final List<String>? category,
    this.isActive,
    this.isIntegrated,
    this.version,
    final List<String>? permissions,
    final Map<String, dynamic>? integrationConfig,
  }) : _category = category,
       _permissions = permissions,
       _integrationConfig = integrationConfig;

  factory _$UpdateAppRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateAppRequestModelImplFromJson(json);

  @override
  final int appId;
  @override
  final String? name;
  @override
  final String? description;
  final List<String>? _category;
  @override
  List<String>? get category {
    final value = _category;
    if (value == null) return null;
    if (_category is EqualUnmodifiableListView) return _category;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? isActive;
  @override
  final bool? isIntegrated;
  @override
  final String? version;
  final List<String>? _permissions;
  @override
  List<String>? get permissions {
    final value = _permissions;
    if (value == null) return null;
    if (_permissions is EqualUnmodifiableListView) return _permissions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Map<String, dynamic>? _integrationConfig;
  @override
  Map<String, dynamic>? get integrationConfig {
    final value = _integrationConfig;
    if (value == null) return null;
    if (_integrationConfig is EqualUnmodifiableMapView)
      return _integrationConfig;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'UpdateAppRequestModel(appId: $appId, name: $name, description: $description, category: $category, isActive: $isActive, isIntegrated: $isIntegrated, version: $version, permissions: $permissions, integrationConfig: $integrationConfig)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateAppRequestModelImpl &&
            (identical(other.appId, appId) || other.appId == appId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._category, _category) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.isIntegrated, isIntegrated) ||
                other.isIntegrated == isIntegrated) &&
            (identical(other.version, version) || other.version == version) &&
            const DeepCollectionEquality().equals(
              other._permissions,
              _permissions,
            ) &&
            const DeepCollectionEquality().equals(
              other._integrationConfig,
              _integrationConfig,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    appId,
    name,
    description,
    const DeepCollectionEquality().hash(_category),
    isActive,
    isIntegrated,
    version,
    const DeepCollectionEquality().hash(_permissions),
    const DeepCollectionEquality().hash(_integrationConfig),
  );

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
    final String? name,
    final String? description,
    final List<String>? category,
    final bool? isActive,
    final bool? isIntegrated,
    final String? version,
    final List<String>? permissions,
    final Map<String, dynamic>? integrationConfig,
  }) = _$UpdateAppRequestModelImpl;

  factory _UpdateAppRequestModel.fromJson(Map<String, dynamic> json) =
      _$UpdateAppRequestModelImpl.fromJson;

  @override
  int get appId;
  @override
  String? get name;
  @override
  String? get description;
  @override
  List<String>? get category;
  @override
  bool? get isActive;
  @override
  bool? get isIntegrated;
  @override
  String? get version;
  @override
  List<String>? get permissions;
  @override
  Map<String, dynamic>? get integrationConfig;

  /// Create a copy of UpdateAppRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateAppRequestModelImplCopyWith<_$UpdateAppRequestModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}

UpdateAppStatusRequestModel _$UpdateAppStatusRequestModelFromJson(
  Map<String, dynamic> json,
) {
  return _UpdateAppStatusRequestModel.fromJson(json);
}

/// @nodoc
mixin _$UpdateAppStatusRequestModel {
  int get appId => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  bool get isIntegrated => throw _privateConstructorUsedError;

  /// Serializes this UpdateAppStatusRequestModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateAppStatusRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateAppStatusRequestModelCopyWith<UpdateAppStatusRequestModel>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateAppStatusRequestModelCopyWith<$Res> {
  factory $UpdateAppStatusRequestModelCopyWith(
    UpdateAppStatusRequestModel value,
    $Res Function(UpdateAppStatusRequestModel) then,
  ) =
      _$UpdateAppStatusRequestModelCopyWithImpl<
        $Res,
        UpdateAppStatusRequestModel
      >;
  @useResult
  $Res call({int appId, bool isActive, bool isIntegrated});
}

/// @nodoc
class _$UpdateAppStatusRequestModelCopyWithImpl<
  $Res,
  $Val extends UpdateAppStatusRequestModel
>
    implements $UpdateAppStatusRequestModelCopyWith<$Res> {
  _$UpdateAppStatusRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateAppStatusRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appId = null,
    Object? isActive = null,
    Object? isIntegrated = null,
  }) {
    return _then(
      _value.copyWith(
            appId: null == appId
                ? _value.appId
                : appId // ignore: cast_nullable_to_non_nullable
                      as int,
            isActive: null == isActive
                ? _value.isActive
                : isActive // ignore: cast_nullable_to_non_nullable
                      as bool,
            isIntegrated: null == isIntegrated
                ? _value.isIntegrated
                : isIntegrated // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UpdateAppStatusRequestModelImplCopyWith<$Res>
    implements $UpdateAppStatusRequestModelCopyWith<$Res> {
  factory _$$UpdateAppStatusRequestModelImplCopyWith(
    _$UpdateAppStatusRequestModelImpl value,
    $Res Function(_$UpdateAppStatusRequestModelImpl) then,
  ) = __$$UpdateAppStatusRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int appId, bool isActive, bool isIntegrated});
}

/// @nodoc
class __$$UpdateAppStatusRequestModelImplCopyWithImpl<$Res>
    extends
        _$UpdateAppStatusRequestModelCopyWithImpl<
          $Res,
          _$UpdateAppStatusRequestModelImpl
        >
    implements _$$UpdateAppStatusRequestModelImplCopyWith<$Res> {
  __$$UpdateAppStatusRequestModelImplCopyWithImpl(
    _$UpdateAppStatusRequestModelImpl _value,
    $Res Function(_$UpdateAppStatusRequestModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UpdateAppStatusRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appId = null,
    Object? isActive = null,
    Object? isIntegrated = null,
  }) {
    return _then(
      _$UpdateAppStatusRequestModelImpl(
        appId: null == appId
            ? _value.appId
            : appId // ignore: cast_nullable_to_non_nullable
                  as int,
        isActive: null == isActive
            ? _value.isActive
            : isActive // ignore: cast_nullable_to_non_nullable
                  as bool,
        isIntegrated: null == isIntegrated
            ? _value.isIntegrated
            : isIntegrated // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateAppStatusRequestModelImpl
    implements _UpdateAppStatusRequestModel {
  const _$UpdateAppStatusRequestModelImpl({
    required this.appId,
    required this.isActive,
    required this.isIntegrated,
  });

  factory _$UpdateAppStatusRequestModelImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$UpdateAppStatusRequestModelImplFromJson(json);

  @override
  final int appId;
  @override
  final bool isActive;
  @override
  final bool isIntegrated;

  @override
  String toString() {
    return 'UpdateAppStatusRequestModel(appId: $appId, isActive: $isActive, isIntegrated: $isIntegrated)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateAppStatusRequestModelImpl &&
            (identical(other.appId, appId) || other.appId == appId) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.isIntegrated, isIntegrated) ||
                other.isIntegrated == isIntegrated));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, appId, isActive, isIntegrated);

  /// Create a copy of UpdateAppStatusRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateAppStatusRequestModelImplCopyWith<_$UpdateAppStatusRequestModelImpl>
  get copyWith =>
      __$$UpdateAppStatusRequestModelImplCopyWithImpl<
        _$UpdateAppStatusRequestModelImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateAppStatusRequestModelImplToJson(this);
  }
}

abstract class _UpdateAppStatusRequestModel
    implements UpdateAppStatusRequestModel {
  const factory _UpdateAppStatusRequestModel({
    required final int appId,
    required final bool isActive,
    required final bool isIntegrated,
  }) = _$UpdateAppStatusRequestModelImpl;

  factory _UpdateAppStatusRequestModel.fromJson(Map<String, dynamic> json) =
      _$UpdateAppStatusRequestModelImpl.fromJson;

  @override
  int get appId;
  @override
  bool get isActive;
  @override
  bool get isIntegrated;

  /// Create a copy of UpdateAppStatusRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateAppStatusRequestModelImplCopyWith<_$UpdateAppStatusRequestModelImpl>
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

AppAnalyticsModel _$AppAnalyticsModelFromJson(Map<String, dynamic> json) {
  return _AppAnalyticsModel.fromJson(json);
}

/// @nodoc
mixin _$AppAnalyticsModel {
  List<CategoryAnalyticsModel> get categories =>
      throw _privateConstructorUsedError;
  int get totalApps => throw _privateConstructorUsedError;
  int get activeApps => throw _privateConstructorUsedError;
  int get integratedApps => throw _privateConstructorUsedError;

  /// Serializes this AppAnalyticsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppAnalyticsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppAnalyticsModelCopyWith<AppAnalyticsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppAnalyticsModelCopyWith<$Res> {
  factory $AppAnalyticsModelCopyWith(
    AppAnalyticsModel value,
    $Res Function(AppAnalyticsModel) then,
  ) = _$AppAnalyticsModelCopyWithImpl<$Res, AppAnalyticsModel>;
  @useResult
  $Res call({
    List<CategoryAnalyticsModel> categories,
    int totalApps,
    int activeApps,
    int integratedApps,
  });
}

/// @nodoc
class _$AppAnalyticsModelCopyWithImpl<$Res, $Val extends AppAnalyticsModel>
    implements $AppAnalyticsModelCopyWith<$Res> {
  _$AppAnalyticsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppAnalyticsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
    Object? totalApps = null,
    Object? activeApps = null,
    Object? integratedApps = null,
  }) {
    return _then(
      _value.copyWith(
            categories: null == categories
                ? _value.categories
                : categories // ignore: cast_nullable_to_non_nullable
                      as List<CategoryAnalyticsModel>,
            totalApps: null == totalApps
                ? _value.totalApps
                : totalApps // ignore: cast_nullable_to_non_nullable
                      as int,
            activeApps: null == activeApps
                ? _value.activeApps
                : activeApps // ignore: cast_nullable_to_non_nullable
                      as int,
            integratedApps: null == integratedApps
                ? _value.integratedApps
                : integratedApps // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AppAnalyticsModelImplCopyWith<$Res>
    implements $AppAnalyticsModelCopyWith<$Res> {
  factory _$$AppAnalyticsModelImplCopyWith(
    _$AppAnalyticsModelImpl value,
    $Res Function(_$AppAnalyticsModelImpl) then,
  ) = __$$AppAnalyticsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<CategoryAnalyticsModel> categories,
    int totalApps,
    int activeApps,
    int integratedApps,
  });
}

/// @nodoc
class __$$AppAnalyticsModelImplCopyWithImpl<$Res>
    extends _$AppAnalyticsModelCopyWithImpl<$Res, _$AppAnalyticsModelImpl>
    implements _$$AppAnalyticsModelImplCopyWith<$Res> {
  __$$AppAnalyticsModelImplCopyWithImpl(
    _$AppAnalyticsModelImpl _value,
    $Res Function(_$AppAnalyticsModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AppAnalyticsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
    Object? totalApps = null,
    Object? activeApps = null,
    Object? integratedApps = null,
  }) {
    return _then(
      _$AppAnalyticsModelImpl(
        categories: null == categories
            ? _value._categories
            : categories // ignore: cast_nullable_to_non_nullable
                  as List<CategoryAnalyticsModel>,
        totalApps: null == totalApps
            ? _value.totalApps
            : totalApps // ignore: cast_nullable_to_non_nullable
                  as int,
        activeApps: null == activeApps
            ? _value.activeApps
            : activeApps // ignore: cast_nullable_to_non_nullable
                  as int,
        integratedApps: null == integratedApps
            ? _value.integratedApps
            : integratedApps // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AppAnalyticsModelImpl implements _AppAnalyticsModel {
  const _$AppAnalyticsModelImpl({
    required final List<CategoryAnalyticsModel> categories,
    required this.totalApps,
    required this.activeApps,
    required this.integratedApps,
  }) : _categories = categories;

  factory _$AppAnalyticsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppAnalyticsModelImplFromJson(json);

  final List<CategoryAnalyticsModel> _categories;
  @override
  List<CategoryAnalyticsModel> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  final int totalApps;
  @override
  final int activeApps;
  @override
  final int integratedApps;

  @override
  String toString() {
    return 'AppAnalyticsModel(categories: $categories, totalApps: $totalApps, activeApps: $activeApps, integratedApps: $integratedApps)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppAnalyticsModelImpl &&
            const DeepCollectionEquality().equals(
              other._categories,
              _categories,
            ) &&
            (identical(other.totalApps, totalApps) ||
                other.totalApps == totalApps) &&
            (identical(other.activeApps, activeApps) ||
                other.activeApps == activeApps) &&
            (identical(other.integratedApps, integratedApps) ||
                other.integratedApps == integratedApps));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_categories),
    totalApps,
    activeApps,
    integratedApps,
  );

  /// Create a copy of AppAnalyticsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppAnalyticsModelImplCopyWith<_$AppAnalyticsModelImpl> get copyWith =>
      __$$AppAnalyticsModelImplCopyWithImpl<_$AppAnalyticsModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AppAnalyticsModelImplToJson(this);
  }
}

abstract class _AppAnalyticsModel implements AppAnalyticsModel {
  const factory _AppAnalyticsModel({
    required final List<CategoryAnalyticsModel> categories,
    required final int totalApps,
    required final int activeApps,
    required final int integratedApps,
  }) = _$AppAnalyticsModelImpl;

  factory _AppAnalyticsModel.fromJson(Map<String, dynamic> json) =
      _$AppAnalyticsModelImpl.fromJson;

  @override
  List<CategoryAnalyticsModel> get categories;
  @override
  int get totalApps;
  @override
  int get activeApps;
  @override
  int get integratedApps;

  /// Create a copy of AppAnalyticsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppAnalyticsModelImplCopyWith<_$AppAnalyticsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CategoryAnalyticsModel _$CategoryAnalyticsModelFromJson(
  Map<String, dynamic> json,
) {
  return _CategoryAnalyticsModel.fromJson(json);
}

/// @nodoc
mixin _$CategoryAnalyticsModel {
  String get category => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  int get activeCount => throw _privateConstructorUsedError;
  int get integratedCount => throw _privateConstructorUsedError;

  /// Serializes this CategoryAnalyticsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoryAnalyticsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryAnalyticsModelCopyWith<CategoryAnalyticsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryAnalyticsModelCopyWith<$Res> {
  factory $CategoryAnalyticsModelCopyWith(
    CategoryAnalyticsModel value,
    $Res Function(CategoryAnalyticsModel) then,
  ) = _$CategoryAnalyticsModelCopyWithImpl<$Res, CategoryAnalyticsModel>;
  @useResult
  $Res call({String category, int count, int activeCount, int integratedCount});
}

/// @nodoc
class _$CategoryAnalyticsModelCopyWithImpl<
  $Res,
  $Val extends CategoryAnalyticsModel
>
    implements $CategoryAnalyticsModelCopyWith<$Res> {
  _$CategoryAnalyticsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryAnalyticsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? count = null,
    Object? activeCount = null,
    Object? integratedCount = null,
  }) {
    return _then(
      _value.copyWith(
            category: null == category
                ? _value.category
                : category // ignore: cast_nullable_to_non_nullable
                      as String,
            count: null == count
                ? _value.count
                : count // ignore: cast_nullable_to_non_nullable
                      as int,
            activeCount: null == activeCount
                ? _value.activeCount
                : activeCount // ignore: cast_nullable_to_non_nullable
                      as int,
            integratedCount: null == integratedCount
                ? _value.integratedCount
                : integratedCount // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CategoryAnalyticsModelImplCopyWith<$Res>
    implements $CategoryAnalyticsModelCopyWith<$Res> {
  factory _$$CategoryAnalyticsModelImplCopyWith(
    _$CategoryAnalyticsModelImpl value,
    $Res Function(_$CategoryAnalyticsModelImpl) then,
  ) = __$$CategoryAnalyticsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String category, int count, int activeCount, int integratedCount});
}

/// @nodoc
class __$$CategoryAnalyticsModelImplCopyWithImpl<$Res>
    extends
        _$CategoryAnalyticsModelCopyWithImpl<$Res, _$CategoryAnalyticsModelImpl>
    implements _$$CategoryAnalyticsModelImplCopyWith<$Res> {
  __$$CategoryAnalyticsModelImplCopyWithImpl(
    _$CategoryAnalyticsModelImpl _value,
    $Res Function(_$CategoryAnalyticsModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CategoryAnalyticsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? count = null,
    Object? activeCount = null,
    Object? integratedCount = null,
  }) {
    return _then(
      _$CategoryAnalyticsModelImpl(
        category: null == category
            ? _value.category
            : category // ignore: cast_nullable_to_non_nullable
                  as String,
        count: null == count
            ? _value.count
            : count // ignore: cast_nullable_to_non_nullable
                  as int,
        activeCount: null == activeCount
            ? _value.activeCount
            : activeCount // ignore: cast_nullable_to_non_nullable
                  as int,
        integratedCount: null == integratedCount
            ? _value.integratedCount
            : integratedCount // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryAnalyticsModelImpl implements _CategoryAnalyticsModel {
  const _$CategoryAnalyticsModelImpl({
    required this.category,
    required this.count,
    required this.activeCount,
    required this.integratedCount,
  });

  factory _$CategoryAnalyticsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryAnalyticsModelImplFromJson(json);

  @override
  final String category;
  @override
  final int count;
  @override
  final int activeCount;
  @override
  final int integratedCount;

  @override
  String toString() {
    return 'CategoryAnalyticsModel(category: $category, count: $count, activeCount: $activeCount, integratedCount: $integratedCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryAnalyticsModelImpl &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.activeCount, activeCount) ||
                other.activeCount == activeCount) &&
            (identical(other.integratedCount, integratedCount) ||
                other.integratedCount == integratedCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, category, count, activeCount, integratedCount);

  /// Create a copy of CategoryAnalyticsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryAnalyticsModelImplCopyWith<_$CategoryAnalyticsModelImpl>
  get copyWith =>
      __$$CategoryAnalyticsModelImplCopyWithImpl<_$CategoryAnalyticsModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryAnalyticsModelImplToJson(this);
  }
}

abstract class _CategoryAnalyticsModel implements CategoryAnalyticsModel {
  const factory _CategoryAnalyticsModel({
    required final String category,
    required final int count,
    required final int activeCount,
    required final int integratedCount,
  }) = _$CategoryAnalyticsModelImpl;

  factory _CategoryAnalyticsModel.fromJson(Map<String, dynamic> json) =
      _$CategoryAnalyticsModelImpl.fromJson;

  @override
  String get category;
  @override
  int get count;
  @override
  int get activeCount;
  @override
  int get integratedCount;

  /// Create a copy of CategoryAnalyticsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryAnalyticsModelImplCopyWith<_$CategoryAnalyticsModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}
