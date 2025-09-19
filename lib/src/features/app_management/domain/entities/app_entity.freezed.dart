// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AppEntity _$AppEntityFromJson(Map<String, dynamic> json) {
  return _AppEntity.fromJson(json);
}

/// @nodoc
mixin _$AppEntity {
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

  /// Serializes this AppEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppEntityCopyWith<AppEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppEntityCopyWith<$Res> {
  factory $AppEntityCopyWith(AppEntity value, $Res Function(AppEntity) then) =
      _$AppEntityCopyWithImpl<$Res, AppEntity>;
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
class _$AppEntityCopyWithImpl<$Res, $Val extends AppEntity>
    implements $AppEntityCopyWith<$Res> {
  _$AppEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppEntity
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
abstract class _$$AppEntityImplCopyWith<$Res>
    implements $AppEntityCopyWith<$Res> {
  factory _$$AppEntityImplCopyWith(
    _$AppEntityImpl value,
    $Res Function(_$AppEntityImpl) then,
  ) = __$$AppEntityImplCopyWithImpl<$Res>;
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
class __$$AppEntityImplCopyWithImpl<$Res>
    extends _$AppEntityCopyWithImpl<$Res, _$AppEntityImpl>
    implements _$$AppEntityImplCopyWith<$Res> {
  __$$AppEntityImplCopyWithImpl(
    _$AppEntityImpl _value,
    $Res Function(_$AppEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AppEntity
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
      _$AppEntityImpl(
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
class _$AppEntityImpl implements _AppEntity {
  const _$AppEntityImpl({
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

  factory _$AppEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppEntityImplFromJson(json);

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
    return 'AppEntity(id: $id, name: $name, appKey: $appKey, iconUrl: $iconUrl, category: $category, description: $description, isActive: $isActive, isIntegrated: $isIntegrated, version: $version, permissions: $permissions, integrationConfig: $integrationConfig, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppEntityImpl &&
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

  /// Create a copy of AppEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppEntityImplCopyWith<_$AppEntityImpl> get copyWith =>
      __$$AppEntityImplCopyWithImpl<_$AppEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppEntityImplToJson(this);
  }
}

abstract class _AppEntity implements AppEntity {
  const factory _AppEntity({
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
  }) = _$AppEntityImpl;

  factory _AppEntity.fromJson(Map<String, dynamic> json) =
      _$AppEntityImpl.fromJson;

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

  /// Create a copy of AppEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppEntityImplCopyWith<_$AppEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AppListEntity _$AppListEntityFromJson(Map<String, dynamic> json) {
  return _AppListEntity.fromJson(json);
}

/// @nodoc
mixin _$AppListEntity {
  List<AppEntity> get apps => throw _privateConstructorUsedError;
  PaginationEntity get pagination => throw _privateConstructorUsedError;

  /// Serializes this AppListEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppListEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppListEntityCopyWith<AppListEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppListEntityCopyWith<$Res> {
  factory $AppListEntityCopyWith(
    AppListEntity value,
    $Res Function(AppListEntity) then,
  ) = _$AppListEntityCopyWithImpl<$Res, AppListEntity>;
  @useResult
  $Res call({List<AppEntity> apps, PaginationEntity pagination});

  $PaginationEntityCopyWith<$Res> get pagination;
}

/// @nodoc
class _$AppListEntityCopyWithImpl<$Res, $Val extends AppListEntity>
    implements $AppListEntityCopyWith<$Res> {
  _$AppListEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppListEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? apps = null, Object? pagination = null}) {
    return _then(
      _value.copyWith(
            apps: null == apps
                ? _value.apps
                : apps // ignore: cast_nullable_to_non_nullable
                      as List<AppEntity>,
            pagination: null == pagination
                ? _value.pagination
                : pagination // ignore: cast_nullable_to_non_nullable
                      as PaginationEntity,
          )
          as $Val,
    );
  }

  /// Create a copy of AppListEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginationEntityCopyWith<$Res> get pagination {
    return $PaginationEntityCopyWith<$Res>(_value.pagination, (value) {
      return _then(_value.copyWith(pagination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppListEntityImplCopyWith<$Res>
    implements $AppListEntityCopyWith<$Res> {
  factory _$$AppListEntityImplCopyWith(
    _$AppListEntityImpl value,
    $Res Function(_$AppListEntityImpl) then,
  ) = __$$AppListEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<AppEntity> apps, PaginationEntity pagination});

  @override
  $PaginationEntityCopyWith<$Res> get pagination;
}

/// @nodoc
class __$$AppListEntityImplCopyWithImpl<$Res>
    extends _$AppListEntityCopyWithImpl<$Res, _$AppListEntityImpl>
    implements _$$AppListEntityImplCopyWith<$Res> {
  __$$AppListEntityImplCopyWithImpl(
    _$AppListEntityImpl _value,
    $Res Function(_$AppListEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AppListEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? apps = null, Object? pagination = null}) {
    return _then(
      _$AppListEntityImpl(
        apps: null == apps
            ? _value._apps
            : apps // ignore: cast_nullable_to_non_nullable
                  as List<AppEntity>,
        pagination: null == pagination
            ? _value.pagination
            : pagination // ignore: cast_nullable_to_non_nullable
                  as PaginationEntity,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AppListEntityImpl implements _AppListEntity {
  const _$AppListEntityImpl({
    required final List<AppEntity> apps,
    required this.pagination,
  }) : _apps = apps;

  factory _$AppListEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppListEntityImplFromJson(json);

  final List<AppEntity> _apps;
  @override
  List<AppEntity> get apps {
    if (_apps is EqualUnmodifiableListView) return _apps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_apps);
  }

  @override
  final PaginationEntity pagination;

  @override
  String toString() {
    return 'AppListEntity(apps: $apps, pagination: $pagination)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppListEntityImpl &&
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

  /// Create a copy of AppListEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppListEntityImplCopyWith<_$AppListEntityImpl> get copyWith =>
      __$$AppListEntityImplCopyWithImpl<_$AppListEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppListEntityImplToJson(this);
  }
}

abstract class _AppListEntity implements AppListEntity {
  const factory _AppListEntity({
    required final List<AppEntity> apps,
    required final PaginationEntity pagination,
  }) = _$AppListEntityImpl;

  factory _AppListEntity.fromJson(Map<String, dynamic> json) =
      _$AppListEntityImpl.fromJson;

  @override
  List<AppEntity> get apps;
  @override
  PaginationEntity get pagination;

  /// Create a copy of AppListEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppListEntityImplCopyWith<_$AppListEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PaginationEntity _$PaginationEntityFromJson(Map<String, dynamic> json) {
  return _PaginationEntity.fromJson(json);
}

/// @nodoc
mixin _$PaginationEntity {
  int get total => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get pages => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;

  /// Serializes this PaginationEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaginationEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaginationEntityCopyWith<PaginationEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationEntityCopyWith<$Res> {
  factory $PaginationEntityCopyWith(
    PaginationEntity value,
    $Res Function(PaginationEntity) then,
  ) = _$PaginationEntityCopyWithImpl<$Res, PaginationEntity>;
  @useResult
  $Res call({int total, int page, int pages, int limit});
}

/// @nodoc
class _$PaginationEntityCopyWithImpl<$Res, $Val extends PaginationEntity>
    implements $PaginationEntityCopyWith<$Res> {
  _$PaginationEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaginationEntity
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
abstract class _$$PaginationEntityImplCopyWith<$Res>
    implements $PaginationEntityCopyWith<$Res> {
  factory _$$PaginationEntityImplCopyWith(
    _$PaginationEntityImpl value,
    $Res Function(_$PaginationEntityImpl) then,
  ) = __$$PaginationEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int total, int page, int pages, int limit});
}

/// @nodoc
class __$$PaginationEntityImplCopyWithImpl<$Res>
    extends _$PaginationEntityCopyWithImpl<$Res, _$PaginationEntityImpl>
    implements _$$PaginationEntityImplCopyWith<$Res> {
  __$$PaginationEntityImplCopyWithImpl(
    _$PaginationEntityImpl _value,
    $Res Function(_$PaginationEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PaginationEntity
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
      _$PaginationEntityImpl(
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
class _$PaginationEntityImpl implements _PaginationEntity {
  const _$PaginationEntityImpl({
    required this.total,
    required this.page,
    required this.pages,
    required this.limit,
  });

  factory _$PaginationEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaginationEntityImplFromJson(json);

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
    return 'PaginationEntity(total: $total, page: $page, pages: $pages, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginationEntityImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pages, pages) || other.pages == pages) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, total, page, pages, limit);

  /// Create a copy of PaginationEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginationEntityImplCopyWith<_$PaginationEntityImpl> get copyWith =>
      __$$PaginationEntityImplCopyWithImpl<_$PaginationEntityImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PaginationEntityImplToJson(this);
  }
}

abstract class _PaginationEntity implements PaginationEntity {
  const factory _PaginationEntity({
    required final int total,
    required final int page,
    required final int pages,
    required final int limit,
  }) = _$PaginationEntityImpl;

  factory _PaginationEntity.fromJson(Map<String, dynamic> json) =
      _$PaginationEntityImpl.fromJson;

  @override
  int get total;
  @override
  int get page;
  @override
  int get pages;
  @override
  int get limit;

  /// Create a copy of PaginationEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaginationEntityImplCopyWith<_$PaginationEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateAppRequest _$CreateAppRequestFromJson(Map<String, dynamic> json) {
  return _CreateAppRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateAppRequest {
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

  /// Serializes this CreateAppRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateAppRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateAppRequestCopyWith<CreateAppRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateAppRequestCopyWith<$Res> {
  factory $CreateAppRequestCopyWith(
    CreateAppRequest value,
    $Res Function(CreateAppRequest) then,
  ) = _$CreateAppRequestCopyWithImpl<$Res, CreateAppRequest>;
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
class _$CreateAppRequestCopyWithImpl<$Res, $Val extends CreateAppRequest>
    implements $CreateAppRequestCopyWith<$Res> {
  _$CreateAppRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateAppRequest
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
abstract class _$$CreateAppRequestImplCopyWith<$Res>
    implements $CreateAppRequestCopyWith<$Res> {
  factory _$$CreateAppRequestImplCopyWith(
    _$CreateAppRequestImpl value,
    $Res Function(_$CreateAppRequestImpl) then,
  ) = __$$CreateAppRequestImplCopyWithImpl<$Res>;
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
class __$$CreateAppRequestImplCopyWithImpl<$Res>
    extends _$CreateAppRequestCopyWithImpl<$Res, _$CreateAppRequestImpl>
    implements _$$CreateAppRequestImplCopyWith<$Res> {
  __$$CreateAppRequestImplCopyWithImpl(
    _$CreateAppRequestImpl _value,
    $Res Function(_$CreateAppRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CreateAppRequest
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
      _$CreateAppRequestImpl(
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
class _$CreateAppRequestImpl implements _CreateAppRequest {
  const _$CreateAppRequestImpl({
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

  factory _$CreateAppRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateAppRequestImplFromJson(json);

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
    return 'CreateAppRequest(name: $name, appKey: $appKey, iconUrl: $iconUrl, category: $category, description: $description, isActive: $isActive, isIntegrated: $isIntegrated, version: $version, permissions: $permissions, integrationConfig: $integrationConfig)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateAppRequestImpl &&
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

  /// Create a copy of CreateAppRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateAppRequestImplCopyWith<_$CreateAppRequestImpl> get copyWith =>
      __$$CreateAppRequestImplCopyWithImpl<_$CreateAppRequestImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateAppRequestImplToJson(this);
  }
}

abstract class _CreateAppRequest implements CreateAppRequest {
  const factory _CreateAppRequest({
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
  }) = _$CreateAppRequestImpl;

  factory _CreateAppRequest.fromJson(Map<String, dynamic> json) =
      _$CreateAppRequestImpl.fromJson;

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

  /// Create a copy of CreateAppRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateAppRequestImplCopyWith<_$CreateAppRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdateAppRequest _$UpdateAppRequestFromJson(Map<String, dynamic> json) {
  return _UpdateAppRequest.fromJson(json);
}

/// @nodoc
mixin _$UpdateAppRequest {
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

  /// Serializes this UpdateAppRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateAppRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateAppRequestCopyWith<UpdateAppRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateAppRequestCopyWith<$Res> {
  factory $UpdateAppRequestCopyWith(
    UpdateAppRequest value,
    $Res Function(UpdateAppRequest) then,
  ) = _$UpdateAppRequestCopyWithImpl<$Res, UpdateAppRequest>;
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
class _$UpdateAppRequestCopyWithImpl<$Res, $Val extends UpdateAppRequest>
    implements $UpdateAppRequestCopyWith<$Res> {
  _$UpdateAppRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateAppRequest
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
abstract class _$$UpdateAppRequestImplCopyWith<$Res>
    implements $UpdateAppRequestCopyWith<$Res> {
  factory _$$UpdateAppRequestImplCopyWith(
    _$UpdateAppRequestImpl value,
    $Res Function(_$UpdateAppRequestImpl) then,
  ) = __$$UpdateAppRequestImplCopyWithImpl<$Res>;
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
class __$$UpdateAppRequestImplCopyWithImpl<$Res>
    extends _$UpdateAppRequestCopyWithImpl<$Res, _$UpdateAppRequestImpl>
    implements _$$UpdateAppRequestImplCopyWith<$Res> {
  __$$UpdateAppRequestImplCopyWithImpl(
    _$UpdateAppRequestImpl _value,
    $Res Function(_$UpdateAppRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UpdateAppRequest
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
      _$UpdateAppRequestImpl(
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
class _$UpdateAppRequestImpl implements _UpdateAppRequest {
  const _$UpdateAppRequestImpl({
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

  factory _$UpdateAppRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateAppRequestImplFromJson(json);

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
    return 'UpdateAppRequest(appId: $appId, name: $name, description: $description, category: $category, isActive: $isActive, isIntegrated: $isIntegrated, version: $version, permissions: $permissions, integrationConfig: $integrationConfig)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateAppRequestImpl &&
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

  /// Create a copy of UpdateAppRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateAppRequestImplCopyWith<_$UpdateAppRequestImpl> get copyWith =>
      __$$UpdateAppRequestImplCopyWithImpl<_$UpdateAppRequestImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateAppRequestImplToJson(this);
  }
}

abstract class _UpdateAppRequest implements UpdateAppRequest {
  const factory _UpdateAppRequest({
    required final int appId,
    final String? name,
    final String? description,
    final List<String>? category,
    final bool? isActive,
    final bool? isIntegrated,
    final String? version,
    final List<String>? permissions,
    final Map<String, dynamic>? integrationConfig,
  }) = _$UpdateAppRequestImpl;

  factory _UpdateAppRequest.fromJson(Map<String, dynamic> json) =
      _$UpdateAppRequestImpl.fromJson;

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

  /// Create a copy of UpdateAppRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateAppRequestImplCopyWith<_$UpdateAppRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdateAppStatusRequest _$UpdateAppStatusRequestFromJson(
  Map<String, dynamic> json,
) {
  return _UpdateAppStatusRequest.fromJson(json);
}

/// @nodoc
mixin _$UpdateAppStatusRequest {
  int get appId => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  bool get isIntegrated => throw _privateConstructorUsedError;

  /// Serializes this UpdateAppStatusRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateAppStatusRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateAppStatusRequestCopyWith<UpdateAppStatusRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateAppStatusRequestCopyWith<$Res> {
  factory $UpdateAppStatusRequestCopyWith(
    UpdateAppStatusRequest value,
    $Res Function(UpdateAppStatusRequest) then,
  ) = _$UpdateAppStatusRequestCopyWithImpl<$Res, UpdateAppStatusRequest>;
  @useResult
  $Res call({int appId, bool isActive, bool isIntegrated});
}

/// @nodoc
class _$UpdateAppStatusRequestCopyWithImpl<
  $Res,
  $Val extends UpdateAppStatusRequest
>
    implements $UpdateAppStatusRequestCopyWith<$Res> {
  _$UpdateAppStatusRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateAppStatusRequest
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
abstract class _$$UpdateAppStatusRequestImplCopyWith<$Res>
    implements $UpdateAppStatusRequestCopyWith<$Res> {
  factory _$$UpdateAppStatusRequestImplCopyWith(
    _$UpdateAppStatusRequestImpl value,
    $Res Function(_$UpdateAppStatusRequestImpl) then,
  ) = __$$UpdateAppStatusRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int appId, bool isActive, bool isIntegrated});
}

/// @nodoc
class __$$UpdateAppStatusRequestImplCopyWithImpl<$Res>
    extends
        _$UpdateAppStatusRequestCopyWithImpl<$Res, _$UpdateAppStatusRequestImpl>
    implements _$$UpdateAppStatusRequestImplCopyWith<$Res> {
  __$$UpdateAppStatusRequestImplCopyWithImpl(
    _$UpdateAppStatusRequestImpl _value,
    $Res Function(_$UpdateAppStatusRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UpdateAppStatusRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appId = null,
    Object? isActive = null,
    Object? isIntegrated = null,
  }) {
    return _then(
      _$UpdateAppStatusRequestImpl(
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
class _$UpdateAppStatusRequestImpl implements _UpdateAppStatusRequest {
  const _$UpdateAppStatusRequestImpl({
    required this.appId,
    required this.isActive,
    required this.isIntegrated,
  });

  factory _$UpdateAppStatusRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateAppStatusRequestImplFromJson(json);

  @override
  final int appId;
  @override
  final bool isActive;
  @override
  final bool isIntegrated;

  @override
  String toString() {
    return 'UpdateAppStatusRequest(appId: $appId, isActive: $isActive, isIntegrated: $isIntegrated)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateAppStatusRequestImpl &&
            (identical(other.appId, appId) || other.appId == appId) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.isIntegrated, isIntegrated) ||
                other.isIntegrated == isIntegrated));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, appId, isActive, isIntegrated);

  /// Create a copy of UpdateAppStatusRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateAppStatusRequestImplCopyWith<_$UpdateAppStatusRequestImpl>
  get copyWith =>
      __$$UpdateAppStatusRequestImplCopyWithImpl<_$UpdateAppStatusRequestImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateAppStatusRequestImplToJson(this);
  }
}

abstract class _UpdateAppStatusRequest implements UpdateAppStatusRequest {
  const factory _UpdateAppStatusRequest({
    required final int appId,
    required final bool isActive,
    required final bool isIntegrated,
  }) = _$UpdateAppStatusRequestImpl;

  factory _UpdateAppStatusRequest.fromJson(Map<String, dynamic> json) =
      _$UpdateAppStatusRequestImpl.fromJson;

  @override
  int get appId;
  @override
  bool get isActive;
  @override
  bool get isIntegrated;

  /// Create a copy of UpdateAppStatusRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateAppStatusRequestImplCopyWith<_$UpdateAppStatusRequestImpl>
  get copyWith => throw _privateConstructorUsedError;
}

DeleteAppRequest _$DeleteAppRequestFromJson(Map<String, dynamic> json) {
  return _DeleteAppRequest.fromJson(json);
}

/// @nodoc
mixin _$DeleteAppRequest {
  int get appId => throw _privateConstructorUsedError;

  /// Serializes this DeleteAppRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeleteAppRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeleteAppRequestCopyWith<DeleteAppRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteAppRequestCopyWith<$Res> {
  factory $DeleteAppRequestCopyWith(
    DeleteAppRequest value,
    $Res Function(DeleteAppRequest) then,
  ) = _$DeleteAppRequestCopyWithImpl<$Res, DeleteAppRequest>;
  @useResult
  $Res call({int appId});
}

/// @nodoc
class _$DeleteAppRequestCopyWithImpl<$Res, $Val extends DeleteAppRequest>
    implements $DeleteAppRequestCopyWith<$Res> {
  _$DeleteAppRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeleteAppRequest
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
abstract class _$$DeleteAppRequestImplCopyWith<$Res>
    implements $DeleteAppRequestCopyWith<$Res> {
  factory _$$DeleteAppRequestImplCopyWith(
    _$DeleteAppRequestImpl value,
    $Res Function(_$DeleteAppRequestImpl) then,
  ) = __$$DeleteAppRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int appId});
}

/// @nodoc
class __$$DeleteAppRequestImplCopyWithImpl<$Res>
    extends _$DeleteAppRequestCopyWithImpl<$Res, _$DeleteAppRequestImpl>
    implements _$$DeleteAppRequestImplCopyWith<$Res> {
  __$$DeleteAppRequestImplCopyWithImpl(
    _$DeleteAppRequestImpl _value,
    $Res Function(_$DeleteAppRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DeleteAppRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? appId = null}) {
    return _then(
      _$DeleteAppRequestImpl(
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
class _$DeleteAppRequestImpl implements _DeleteAppRequest {
  const _$DeleteAppRequestImpl({required this.appId});

  factory _$DeleteAppRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeleteAppRequestImplFromJson(json);

  @override
  final int appId;

  @override
  String toString() {
    return 'DeleteAppRequest(appId: $appId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteAppRequestImpl &&
            (identical(other.appId, appId) || other.appId == appId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, appId);

  /// Create a copy of DeleteAppRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteAppRequestImplCopyWith<_$DeleteAppRequestImpl> get copyWith =>
      __$$DeleteAppRequestImplCopyWithImpl<_$DeleteAppRequestImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DeleteAppRequestImplToJson(this);
  }
}

abstract class _DeleteAppRequest implements DeleteAppRequest {
  const factory _DeleteAppRequest({required final int appId}) =
      _$DeleteAppRequestImpl;

  factory _DeleteAppRequest.fromJson(Map<String, dynamic> json) =
      _$DeleteAppRequestImpl.fromJson;

  @override
  int get appId;

  /// Create a copy of DeleteAppRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteAppRequestImplCopyWith<_$DeleteAppRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AppAnalyticsEntity _$AppAnalyticsEntityFromJson(Map<String, dynamic> json) {
  return _AppAnalyticsEntity.fromJson(json);
}

/// @nodoc
mixin _$AppAnalyticsEntity {
  List<CategoryAnalyticsEntity> get categories =>
      throw _privateConstructorUsedError;
  int get totalApps => throw _privateConstructorUsedError;
  int get activeApps => throw _privateConstructorUsedError;
  int get integratedApps => throw _privateConstructorUsedError;

  /// Serializes this AppAnalyticsEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppAnalyticsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppAnalyticsEntityCopyWith<AppAnalyticsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppAnalyticsEntityCopyWith<$Res> {
  factory $AppAnalyticsEntityCopyWith(
    AppAnalyticsEntity value,
    $Res Function(AppAnalyticsEntity) then,
  ) = _$AppAnalyticsEntityCopyWithImpl<$Res, AppAnalyticsEntity>;
  @useResult
  $Res call({
    List<CategoryAnalyticsEntity> categories,
    int totalApps,
    int activeApps,
    int integratedApps,
  });
}

/// @nodoc
class _$AppAnalyticsEntityCopyWithImpl<$Res, $Val extends AppAnalyticsEntity>
    implements $AppAnalyticsEntityCopyWith<$Res> {
  _$AppAnalyticsEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppAnalyticsEntity
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
                      as List<CategoryAnalyticsEntity>,
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
abstract class _$$AppAnalyticsEntityImplCopyWith<$Res>
    implements $AppAnalyticsEntityCopyWith<$Res> {
  factory _$$AppAnalyticsEntityImplCopyWith(
    _$AppAnalyticsEntityImpl value,
    $Res Function(_$AppAnalyticsEntityImpl) then,
  ) = __$$AppAnalyticsEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<CategoryAnalyticsEntity> categories,
    int totalApps,
    int activeApps,
    int integratedApps,
  });
}

/// @nodoc
class __$$AppAnalyticsEntityImplCopyWithImpl<$Res>
    extends _$AppAnalyticsEntityCopyWithImpl<$Res, _$AppAnalyticsEntityImpl>
    implements _$$AppAnalyticsEntityImplCopyWith<$Res> {
  __$$AppAnalyticsEntityImplCopyWithImpl(
    _$AppAnalyticsEntityImpl _value,
    $Res Function(_$AppAnalyticsEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AppAnalyticsEntity
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
      _$AppAnalyticsEntityImpl(
        categories: null == categories
            ? _value._categories
            : categories // ignore: cast_nullable_to_non_nullable
                  as List<CategoryAnalyticsEntity>,
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
class _$AppAnalyticsEntityImpl implements _AppAnalyticsEntity {
  const _$AppAnalyticsEntityImpl({
    required final List<CategoryAnalyticsEntity> categories,
    required this.totalApps,
    required this.activeApps,
    required this.integratedApps,
  }) : _categories = categories;

  factory _$AppAnalyticsEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppAnalyticsEntityImplFromJson(json);

  final List<CategoryAnalyticsEntity> _categories;
  @override
  List<CategoryAnalyticsEntity> get categories {
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
    return 'AppAnalyticsEntity(categories: $categories, totalApps: $totalApps, activeApps: $activeApps, integratedApps: $integratedApps)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppAnalyticsEntityImpl &&
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

  /// Create a copy of AppAnalyticsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppAnalyticsEntityImplCopyWith<_$AppAnalyticsEntityImpl> get copyWith =>
      __$$AppAnalyticsEntityImplCopyWithImpl<_$AppAnalyticsEntityImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AppAnalyticsEntityImplToJson(this);
  }
}

abstract class _AppAnalyticsEntity implements AppAnalyticsEntity {
  const factory _AppAnalyticsEntity({
    required final List<CategoryAnalyticsEntity> categories,
    required final int totalApps,
    required final int activeApps,
    required final int integratedApps,
  }) = _$AppAnalyticsEntityImpl;

  factory _AppAnalyticsEntity.fromJson(Map<String, dynamic> json) =
      _$AppAnalyticsEntityImpl.fromJson;

  @override
  List<CategoryAnalyticsEntity> get categories;
  @override
  int get totalApps;
  @override
  int get activeApps;
  @override
  int get integratedApps;

  /// Create a copy of AppAnalyticsEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppAnalyticsEntityImplCopyWith<_$AppAnalyticsEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CategoryAnalyticsEntity _$CategoryAnalyticsEntityFromJson(
  Map<String, dynamic> json,
) {
  return _CategoryAnalyticsEntity.fromJson(json);
}

/// @nodoc
mixin _$CategoryAnalyticsEntity {
  String get category => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  int get activeCount => throw _privateConstructorUsedError;
  int get integratedCount => throw _privateConstructorUsedError;

  /// Serializes this CategoryAnalyticsEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoryAnalyticsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryAnalyticsEntityCopyWith<CategoryAnalyticsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryAnalyticsEntityCopyWith<$Res> {
  factory $CategoryAnalyticsEntityCopyWith(
    CategoryAnalyticsEntity value,
    $Res Function(CategoryAnalyticsEntity) then,
  ) = _$CategoryAnalyticsEntityCopyWithImpl<$Res, CategoryAnalyticsEntity>;
  @useResult
  $Res call({String category, int count, int activeCount, int integratedCount});
}

/// @nodoc
class _$CategoryAnalyticsEntityCopyWithImpl<
  $Res,
  $Val extends CategoryAnalyticsEntity
>
    implements $CategoryAnalyticsEntityCopyWith<$Res> {
  _$CategoryAnalyticsEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryAnalyticsEntity
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
abstract class _$$CategoryAnalyticsEntityImplCopyWith<$Res>
    implements $CategoryAnalyticsEntityCopyWith<$Res> {
  factory _$$CategoryAnalyticsEntityImplCopyWith(
    _$CategoryAnalyticsEntityImpl value,
    $Res Function(_$CategoryAnalyticsEntityImpl) then,
  ) = __$$CategoryAnalyticsEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String category, int count, int activeCount, int integratedCount});
}

/// @nodoc
class __$$CategoryAnalyticsEntityImplCopyWithImpl<$Res>
    extends
        _$CategoryAnalyticsEntityCopyWithImpl<
          $Res,
          _$CategoryAnalyticsEntityImpl
        >
    implements _$$CategoryAnalyticsEntityImplCopyWith<$Res> {
  __$$CategoryAnalyticsEntityImplCopyWithImpl(
    _$CategoryAnalyticsEntityImpl _value,
    $Res Function(_$CategoryAnalyticsEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CategoryAnalyticsEntity
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
      _$CategoryAnalyticsEntityImpl(
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
class _$CategoryAnalyticsEntityImpl implements _CategoryAnalyticsEntity {
  const _$CategoryAnalyticsEntityImpl({
    required this.category,
    required this.count,
    required this.activeCount,
    required this.integratedCount,
  });

  factory _$CategoryAnalyticsEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryAnalyticsEntityImplFromJson(json);

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
    return 'CategoryAnalyticsEntity(category: $category, count: $count, activeCount: $activeCount, integratedCount: $integratedCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryAnalyticsEntityImpl &&
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

  /// Create a copy of CategoryAnalyticsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryAnalyticsEntityImplCopyWith<_$CategoryAnalyticsEntityImpl>
  get copyWith =>
      __$$CategoryAnalyticsEntityImplCopyWithImpl<
        _$CategoryAnalyticsEntityImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryAnalyticsEntityImplToJson(this);
  }
}

abstract class _CategoryAnalyticsEntity implements CategoryAnalyticsEntity {
  const factory _CategoryAnalyticsEntity({
    required final String category,
    required final int count,
    required final int activeCount,
    required final int integratedCount,
  }) = _$CategoryAnalyticsEntityImpl;

  factory _CategoryAnalyticsEntity.fromJson(Map<String, dynamic> json) =
      _$CategoryAnalyticsEntityImpl.fromJson;

  @override
  String get category;
  @override
  int get count;
  @override
  int get activeCount;
  @override
  int get integratedCount;

  /// Create a copy of CategoryAnalyticsEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryAnalyticsEntityImplCopyWith<_$CategoryAnalyticsEntityImpl>
  get copyWith => throw _privateConstructorUsedError;
}
