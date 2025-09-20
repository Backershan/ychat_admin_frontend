// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_api_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

TicketListResponse _$TicketListResponseFromJson(Map<String, dynamic> json) {
  return _TicketListResponse.fromJson(json);
}

/// @nodoc
mixin _$TicketListResponse {
  bool get success => throw _privateConstructorUsedError;
  TicketListData get data => throw _privateConstructorUsedError;

  /// Serializes this TicketListResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TicketListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TicketListResponseCopyWith<TicketListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketListResponseCopyWith<$Res> {
  factory $TicketListResponseCopyWith(
    TicketListResponse value,
    $Res Function(TicketListResponse) then,
  ) = _$TicketListResponseCopyWithImpl<$Res, TicketListResponse>;
  @useResult
  $Res call({bool success, TicketListData data});

  $TicketListDataCopyWith<$Res> get data;
}

/// @nodoc
class _$TicketListResponseCopyWithImpl<$Res, $Val extends TicketListResponse>
    implements $TicketListResponseCopyWith<$Res> {
  _$TicketListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TicketListResponse
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
                      as TicketListData,
          )
          as $Val,
    );
  }

  /// Create a copy of TicketListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TicketListDataCopyWith<$Res> get data {
    return $TicketListDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TicketListResponseImplCopyWith<$Res>
    implements $TicketListResponseCopyWith<$Res> {
  factory _$$TicketListResponseImplCopyWith(
    _$TicketListResponseImpl value,
    $Res Function(_$TicketListResponseImpl) then,
  ) = __$$TicketListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, TicketListData data});

  @override
  $TicketListDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$TicketListResponseImplCopyWithImpl<$Res>
    extends _$TicketListResponseCopyWithImpl<$Res, _$TicketListResponseImpl>
    implements _$$TicketListResponseImplCopyWith<$Res> {
  __$$TicketListResponseImplCopyWithImpl(
    _$TicketListResponseImpl _value,
    $Res Function(_$TicketListResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TicketListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? success = null, Object? data = null}) {
    return _then(
      _$TicketListResponseImpl(
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
        data: null == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                  as TicketListData,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TicketListResponseImpl implements _TicketListResponse {
  const _$TicketListResponseImpl({required this.success, required this.data});

  factory _$TicketListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$TicketListResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final TicketListData data;

  @override
  String toString() {
    return 'TicketListResponse(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketListResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data);

  /// Create a copy of TicketListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketListResponseImplCopyWith<_$TicketListResponseImpl> get copyWith =>
      __$$TicketListResponseImplCopyWithImpl<_$TicketListResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$TicketListResponseImplToJson(this);
  }
}

abstract class _TicketListResponse implements TicketListResponse {
  const factory _TicketListResponse({
    required final bool success,
    required final TicketListData data,
  }) = _$TicketListResponseImpl;

  factory _TicketListResponse.fromJson(Map<String, dynamic> json) =
      _$TicketListResponseImpl.fromJson;

  @override
  bool get success;
  @override
  TicketListData get data;

  /// Create a copy of TicketListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TicketListResponseImplCopyWith<_$TicketListResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TicketListData _$TicketListDataFromJson(Map<String, dynamic> json) {
  return _TicketListData.fromJson(json);
}

/// @nodoc
mixin _$TicketListData {
  TicketGroups get tickets => throw _privateConstructorUsedError;
  List<TicketModel> get allTickets => throw _privateConstructorUsedError;
  TicketStatistics? get statistics => throw _privateConstructorUsedError;
  TicketPagination get pagination => throw _privateConstructorUsedError;
  TicketFilters? get filters => throw _privateConstructorUsedError;

  /// Serializes this TicketListData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TicketListData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TicketListDataCopyWith<TicketListData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketListDataCopyWith<$Res> {
  factory $TicketListDataCopyWith(
    TicketListData value,
    $Res Function(TicketListData) then,
  ) = _$TicketListDataCopyWithImpl<$Res, TicketListData>;
  @useResult
  $Res call({
    TicketGroups tickets,
    List<TicketModel> allTickets,
    TicketStatistics? statistics,
    TicketPagination pagination,
    TicketFilters? filters,
  });

  $TicketGroupsCopyWith<$Res> get tickets;
  $TicketStatisticsCopyWith<$Res>? get statistics;
  $TicketPaginationCopyWith<$Res> get pagination;
  $TicketFiltersCopyWith<$Res>? get filters;
}

/// @nodoc
class _$TicketListDataCopyWithImpl<$Res, $Val extends TicketListData>
    implements $TicketListDataCopyWith<$Res> {
  _$TicketListDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TicketListData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tickets = null,
    Object? allTickets = null,
    Object? statistics = freezed,
    Object? pagination = null,
    Object? filters = freezed,
  }) {
    return _then(
      _value.copyWith(
            tickets: null == tickets
                ? _value.tickets
                : tickets // ignore: cast_nullable_to_non_nullable
                      as TicketGroups,
            allTickets: null == allTickets
                ? _value.allTickets
                : allTickets // ignore: cast_nullable_to_non_nullable
                      as List<TicketModel>,
            statistics: freezed == statistics
                ? _value.statistics
                : statistics // ignore: cast_nullable_to_non_nullable
                      as TicketStatistics?,
            pagination: null == pagination
                ? _value.pagination
                : pagination // ignore: cast_nullable_to_non_nullable
                      as TicketPagination,
            filters: freezed == filters
                ? _value.filters
                : filters // ignore: cast_nullable_to_non_nullable
                      as TicketFilters?,
          )
          as $Val,
    );
  }

  /// Create a copy of TicketListData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TicketGroupsCopyWith<$Res> get tickets {
    return $TicketGroupsCopyWith<$Res>(_value.tickets, (value) {
      return _then(_value.copyWith(tickets: value) as $Val);
    });
  }

  /// Create a copy of TicketListData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TicketStatisticsCopyWith<$Res>? get statistics {
    if (_value.statistics == null) {
      return null;
    }

    return $TicketStatisticsCopyWith<$Res>(_value.statistics!, (value) {
      return _then(_value.copyWith(statistics: value) as $Val);
    });
  }

  /// Create a copy of TicketListData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TicketPaginationCopyWith<$Res> get pagination {
    return $TicketPaginationCopyWith<$Res>(_value.pagination, (value) {
      return _then(_value.copyWith(pagination: value) as $Val);
    });
  }

  /// Create a copy of TicketListData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TicketFiltersCopyWith<$Res>? get filters {
    if (_value.filters == null) {
      return null;
    }

    return $TicketFiltersCopyWith<$Res>(_value.filters!, (value) {
      return _then(_value.copyWith(filters: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TicketListDataImplCopyWith<$Res>
    implements $TicketListDataCopyWith<$Res> {
  factory _$$TicketListDataImplCopyWith(
    _$TicketListDataImpl value,
    $Res Function(_$TicketListDataImpl) then,
  ) = __$$TicketListDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    TicketGroups tickets,
    List<TicketModel> allTickets,
    TicketStatistics? statistics,
    TicketPagination pagination,
    TicketFilters? filters,
  });

  @override
  $TicketGroupsCopyWith<$Res> get tickets;
  @override
  $TicketStatisticsCopyWith<$Res>? get statistics;
  @override
  $TicketPaginationCopyWith<$Res> get pagination;
  @override
  $TicketFiltersCopyWith<$Res>? get filters;
}

/// @nodoc
class __$$TicketListDataImplCopyWithImpl<$Res>
    extends _$TicketListDataCopyWithImpl<$Res, _$TicketListDataImpl>
    implements _$$TicketListDataImplCopyWith<$Res> {
  __$$TicketListDataImplCopyWithImpl(
    _$TicketListDataImpl _value,
    $Res Function(_$TicketListDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TicketListData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tickets = null,
    Object? allTickets = null,
    Object? statistics = freezed,
    Object? pagination = null,
    Object? filters = freezed,
  }) {
    return _then(
      _$TicketListDataImpl(
        tickets: null == tickets
            ? _value.tickets
            : tickets // ignore: cast_nullable_to_non_nullable
                  as TicketGroups,
        allTickets: null == allTickets
            ? _value._allTickets
            : allTickets // ignore: cast_nullable_to_non_nullable
                  as List<TicketModel>,
        statistics: freezed == statistics
            ? _value.statistics
            : statistics // ignore: cast_nullable_to_non_nullable
                  as TicketStatistics?,
        pagination: null == pagination
            ? _value.pagination
            : pagination // ignore: cast_nullable_to_non_nullable
                  as TicketPagination,
        filters: freezed == filters
            ? _value.filters
            : filters // ignore: cast_nullable_to_non_nullable
                  as TicketFilters?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TicketListDataImpl implements _TicketListData {
  const _$TicketListDataImpl({
    required this.tickets,
    final List<TicketModel> allTickets = const [],
    this.statistics,
    required this.pagination,
    this.filters,
  }) : _allTickets = allTickets;

  factory _$TicketListDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$TicketListDataImplFromJson(json);

  @override
  final TicketGroups tickets;
  final List<TicketModel> _allTickets;
  @override
  @JsonKey()
  List<TicketModel> get allTickets {
    if (_allTickets is EqualUnmodifiableListView) return _allTickets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allTickets);
  }

  @override
  final TicketStatistics? statistics;
  @override
  final TicketPagination pagination;
  @override
  final TicketFilters? filters;

  @override
  String toString() {
    return 'TicketListData(tickets: $tickets, allTickets: $allTickets, statistics: $statistics, pagination: $pagination, filters: $filters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketListDataImpl &&
            (identical(other.tickets, tickets) || other.tickets == tickets) &&
            const DeepCollectionEquality().equals(
              other._allTickets,
              _allTickets,
            ) &&
            (identical(other.statistics, statistics) ||
                other.statistics == statistics) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination) &&
            (identical(other.filters, filters) || other.filters == filters));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    tickets,
    const DeepCollectionEquality().hash(_allTickets),
    statistics,
    pagination,
    filters,
  );

  /// Create a copy of TicketListData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketListDataImplCopyWith<_$TicketListDataImpl> get copyWith =>
      __$$TicketListDataImplCopyWithImpl<_$TicketListDataImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$TicketListDataImplToJson(this);
  }
}

abstract class _TicketListData implements TicketListData {
  const factory _TicketListData({
    required final TicketGroups tickets,
    final List<TicketModel> allTickets,
    final TicketStatistics? statistics,
    required final TicketPagination pagination,
    final TicketFilters? filters,
  }) = _$TicketListDataImpl;

  factory _TicketListData.fromJson(Map<String, dynamic> json) =
      _$TicketListDataImpl.fromJson;

  @override
  TicketGroups get tickets;
  @override
  List<TicketModel> get allTickets;
  @override
  TicketStatistics? get statistics;
  @override
  TicketPagination get pagination;
  @override
  TicketFilters? get filters;

  /// Create a copy of TicketListData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TicketListDataImplCopyWith<_$TicketListDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TicketGroups _$TicketGroupsFromJson(Map<String, dynamic> json) {
  return _TicketGroups.fromJson(json);
}

/// @nodoc
mixin _$TicketGroups {
  List<TicketModel> get opened => throw _privateConstructorUsedError;
  List<TicketModel> get pending => throw _privateConstructorUsedError;
  List<TicketModel> get closed => throw _privateConstructorUsedError;

  /// Serializes this TicketGroups to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TicketGroups
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TicketGroupsCopyWith<TicketGroups> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketGroupsCopyWith<$Res> {
  factory $TicketGroupsCopyWith(
    TicketGroups value,
    $Res Function(TicketGroups) then,
  ) = _$TicketGroupsCopyWithImpl<$Res, TicketGroups>;
  @useResult
  $Res call({
    List<TicketModel> opened,
    List<TicketModel> pending,
    List<TicketModel> closed,
  });
}

/// @nodoc
class _$TicketGroupsCopyWithImpl<$Res, $Val extends TicketGroups>
    implements $TicketGroupsCopyWith<$Res> {
  _$TicketGroupsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TicketGroups
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? opened = null,
    Object? pending = null,
    Object? closed = null,
  }) {
    return _then(
      _value.copyWith(
            opened: null == opened
                ? _value.opened
                : opened // ignore: cast_nullable_to_non_nullable
                      as List<TicketModel>,
            pending: null == pending
                ? _value.pending
                : pending // ignore: cast_nullable_to_non_nullable
                      as List<TicketModel>,
            closed: null == closed
                ? _value.closed
                : closed // ignore: cast_nullable_to_non_nullable
                      as List<TicketModel>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TicketGroupsImplCopyWith<$Res>
    implements $TicketGroupsCopyWith<$Res> {
  factory _$$TicketGroupsImplCopyWith(
    _$TicketGroupsImpl value,
    $Res Function(_$TicketGroupsImpl) then,
  ) = __$$TicketGroupsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<TicketModel> opened,
    List<TicketModel> pending,
    List<TicketModel> closed,
  });
}

/// @nodoc
class __$$TicketGroupsImplCopyWithImpl<$Res>
    extends _$TicketGroupsCopyWithImpl<$Res, _$TicketGroupsImpl>
    implements _$$TicketGroupsImplCopyWith<$Res> {
  __$$TicketGroupsImplCopyWithImpl(
    _$TicketGroupsImpl _value,
    $Res Function(_$TicketGroupsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TicketGroups
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? opened = null,
    Object? pending = null,
    Object? closed = null,
  }) {
    return _then(
      _$TicketGroupsImpl(
        opened: null == opened
            ? _value._opened
            : opened // ignore: cast_nullable_to_non_nullable
                  as List<TicketModel>,
        pending: null == pending
            ? _value._pending
            : pending // ignore: cast_nullable_to_non_nullable
                  as List<TicketModel>,
        closed: null == closed
            ? _value._closed
            : closed // ignore: cast_nullable_to_non_nullable
                  as List<TicketModel>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TicketGroupsImpl implements _TicketGroups {
  const _$TicketGroupsImpl({
    final List<TicketModel> opened = const [],
    final List<TicketModel> pending = const [],
    final List<TicketModel> closed = const [],
  }) : _opened = opened,
       _pending = pending,
       _closed = closed;

  factory _$TicketGroupsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TicketGroupsImplFromJson(json);

  final List<TicketModel> _opened;
  @override
  @JsonKey()
  List<TicketModel> get opened {
    if (_opened is EqualUnmodifiableListView) return _opened;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_opened);
  }

  final List<TicketModel> _pending;
  @override
  @JsonKey()
  List<TicketModel> get pending {
    if (_pending is EqualUnmodifiableListView) return _pending;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pending);
  }

  final List<TicketModel> _closed;
  @override
  @JsonKey()
  List<TicketModel> get closed {
    if (_closed is EqualUnmodifiableListView) return _closed;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_closed);
  }

  @override
  String toString() {
    return 'TicketGroups(opened: $opened, pending: $pending, closed: $closed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketGroupsImpl &&
            const DeepCollectionEquality().equals(other._opened, _opened) &&
            const DeepCollectionEquality().equals(other._pending, _pending) &&
            const DeepCollectionEquality().equals(other._closed, _closed));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_opened),
    const DeepCollectionEquality().hash(_pending),
    const DeepCollectionEquality().hash(_closed),
  );

  /// Create a copy of TicketGroups
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketGroupsImplCopyWith<_$TicketGroupsImpl> get copyWith =>
      __$$TicketGroupsImplCopyWithImpl<_$TicketGroupsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TicketGroupsImplToJson(this);
  }
}

abstract class _TicketGroups implements TicketGroups {
  const factory _TicketGroups({
    final List<TicketModel> opened,
    final List<TicketModel> pending,
    final List<TicketModel> closed,
  }) = _$TicketGroupsImpl;

  factory _TicketGroups.fromJson(Map<String, dynamic> json) =
      _$TicketGroupsImpl.fromJson;

  @override
  List<TicketModel> get opened;
  @override
  List<TicketModel> get pending;
  @override
  List<TicketModel> get closed;

  /// Create a copy of TicketGroups
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TicketGroupsImplCopyWith<_$TicketGroupsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TicketPagination _$TicketPaginationFromJson(Map<String, dynamic> json) {
  return _TicketPagination.fromJson(json);
}

/// @nodoc
mixin _$TicketPagination {
  int get total => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get pages => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  bool get hasNext => throw _privateConstructorUsedError;
  bool get hasPrev => throw _privateConstructorUsedError;

  /// Serializes this TicketPagination to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TicketPagination
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TicketPaginationCopyWith<TicketPagination> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketPaginationCopyWith<$Res> {
  factory $TicketPaginationCopyWith(
    TicketPagination value,
    $Res Function(TicketPagination) then,
  ) = _$TicketPaginationCopyWithImpl<$Res, TicketPagination>;
  @useResult
  $Res call({
    int total,
    int page,
    int pages,
    int limit,
    bool hasNext,
    bool hasPrev,
  });
}

/// @nodoc
class _$TicketPaginationCopyWithImpl<$Res, $Val extends TicketPagination>
    implements $TicketPaginationCopyWith<$Res> {
  _$TicketPaginationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TicketPagination
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? page = null,
    Object? pages = null,
    Object? limit = null,
    Object? hasNext = null,
    Object? hasPrev = null,
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
            hasNext: null == hasNext
                ? _value.hasNext
                : hasNext // ignore: cast_nullable_to_non_nullable
                      as bool,
            hasPrev: null == hasPrev
                ? _value.hasPrev
                : hasPrev // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TicketPaginationImplCopyWith<$Res>
    implements $TicketPaginationCopyWith<$Res> {
  factory _$$TicketPaginationImplCopyWith(
    _$TicketPaginationImpl value,
    $Res Function(_$TicketPaginationImpl) then,
  ) = __$$TicketPaginationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int total,
    int page,
    int pages,
    int limit,
    bool hasNext,
    bool hasPrev,
  });
}

/// @nodoc
class __$$TicketPaginationImplCopyWithImpl<$Res>
    extends _$TicketPaginationCopyWithImpl<$Res, _$TicketPaginationImpl>
    implements _$$TicketPaginationImplCopyWith<$Res> {
  __$$TicketPaginationImplCopyWithImpl(
    _$TicketPaginationImpl _value,
    $Res Function(_$TicketPaginationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TicketPagination
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? page = null,
    Object? pages = null,
    Object? limit = null,
    Object? hasNext = null,
    Object? hasPrev = null,
  }) {
    return _then(
      _$TicketPaginationImpl(
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
        hasNext: null == hasNext
            ? _value.hasNext
            : hasNext // ignore: cast_nullable_to_non_nullable
                  as bool,
        hasPrev: null == hasPrev
            ? _value.hasPrev
            : hasPrev // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TicketPaginationImpl implements _TicketPagination {
  const _$TicketPaginationImpl({
    required this.total,
    required this.page,
    required this.pages,
    required this.limit,
    this.hasNext = false,
    this.hasPrev = false,
  });

  factory _$TicketPaginationImpl.fromJson(Map<String, dynamic> json) =>
      _$$TicketPaginationImplFromJson(json);

  @override
  final int total;
  @override
  final int page;
  @override
  final int pages;
  @override
  final int limit;
  @override
  @JsonKey()
  final bool hasNext;
  @override
  @JsonKey()
  final bool hasPrev;

  @override
  String toString() {
    return 'TicketPagination(total: $total, page: $page, pages: $pages, limit: $limit, hasNext: $hasNext, hasPrev: $hasPrev)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketPaginationImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pages, pages) || other.pages == pages) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.hasNext, hasNext) || other.hasNext == hasNext) &&
            (identical(other.hasPrev, hasPrev) || other.hasPrev == hasPrev));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, total, page, pages, limit, hasNext, hasPrev);

  /// Create a copy of TicketPagination
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketPaginationImplCopyWith<_$TicketPaginationImpl> get copyWith =>
      __$$TicketPaginationImplCopyWithImpl<_$TicketPaginationImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$TicketPaginationImplToJson(this);
  }
}

abstract class _TicketPagination implements TicketPagination {
  const factory _TicketPagination({
    required final int total,
    required final int page,
    required final int pages,
    required final int limit,
    final bool hasNext,
    final bool hasPrev,
  }) = _$TicketPaginationImpl;

  factory _TicketPagination.fromJson(Map<String, dynamic> json) =
      _$TicketPaginationImpl.fromJson;

  @override
  int get total;
  @override
  int get page;
  @override
  int get pages;
  @override
  int get limit;
  @override
  bool get hasNext;
  @override
  bool get hasPrev;

  /// Create a copy of TicketPagination
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TicketPaginationImplCopyWith<_$TicketPaginationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TicketStatistics _$TicketStatisticsFromJson(Map<String, dynamic> json) {
  return _TicketStatistics.fromJson(json);
}

/// @nodoc
mixin _$TicketStatistics {
  List<CategoryCount> get categories => throw _privateConstructorUsedError;
  List<StatusCount> get statuses => throw _privateConstructorUsedError;

  /// Serializes this TicketStatistics to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TicketStatistics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TicketStatisticsCopyWith<TicketStatistics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketStatisticsCopyWith<$Res> {
  factory $TicketStatisticsCopyWith(
    TicketStatistics value,
    $Res Function(TicketStatistics) then,
  ) = _$TicketStatisticsCopyWithImpl<$Res, TicketStatistics>;
  @useResult
  $Res call({List<CategoryCount> categories, List<StatusCount> statuses});
}

/// @nodoc
class _$TicketStatisticsCopyWithImpl<$Res, $Val extends TicketStatistics>
    implements $TicketStatisticsCopyWith<$Res> {
  _$TicketStatisticsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TicketStatistics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? categories = null, Object? statuses = null}) {
    return _then(
      _value.copyWith(
            categories: null == categories
                ? _value.categories
                : categories // ignore: cast_nullable_to_non_nullable
                      as List<CategoryCount>,
            statuses: null == statuses
                ? _value.statuses
                : statuses // ignore: cast_nullable_to_non_nullable
                      as List<StatusCount>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TicketStatisticsImplCopyWith<$Res>
    implements $TicketStatisticsCopyWith<$Res> {
  factory _$$TicketStatisticsImplCopyWith(
    _$TicketStatisticsImpl value,
    $Res Function(_$TicketStatisticsImpl) then,
  ) = __$$TicketStatisticsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CategoryCount> categories, List<StatusCount> statuses});
}

/// @nodoc
class __$$TicketStatisticsImplCopyWithImpl<$Res>
    extends _$TicketStatisticsCopyWithImpl<$Res, _$TicketStatisticsImpl>
    implements _$$TicketStatisticsImplCopyWith<$Res> {
  __$$TicketStatisticsImplCopyWithImpl(
    _$TicketStatisticsImpl _value,
    $Res Function(_$TicketStatisticsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TicketStatistics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? categories = null, Object? statuses = null}) {
    return _then(
      _$TicketStatisticsImpl(
        categories: null == categories
            ? _value._categories
            : categories // ignore: cast_nullable_to_non_nullable
                  as List<CategoryCount>,
        statuses: null == statuses
            ? _value._statuses
            : statuses // ignore: cast_nullable_to_non_nullable
                  as List<StatusCount>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TicketStatisticsImpl implements _TicketStatistics {
  const _$TicketStatisticsImpl({
    final List<CategoryCount> categories = const [],
    final List<StatusCount> statuses = const [],
  }) : _categories = categories,
       _statuses = statuses;

  factory _$TicketStatisticsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TicketStatisticsImplFromJson(json);

  final List<CategoryCount> _categories;
  @override
  @JsonKey()
  List<CategoryCount> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  final List<StatusCount> _statuses;
  @override
  @JsonKey()
  List<StatusCount> get statuses {
    if (_statuses is EqualUnmodifiableListView) return _statuses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_statuses);
  }

  @override
  String toString() {
    return 'TicketStatistics(categories: $categories, statuses: $statuses)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketStatisticsImpl &&
            const DeepCollectionEquality().equals(
              other._categories,
              _categories,
            ) &&
            const DeepCollectionEquality().equals(other._statuses, _statuses));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_categories),
    const DeepCollectionEquality().hash(_statuses),
  );

  /// Create a copy of TicketStatistics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketStatisticsImplCopyWith<_$TicketStatisticsImpl> get copyWith =>
      __$$TicketStatisticsImplCopyWithImpl<_$TicketStatisticsImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$TicketStatisticsImplToJson(this);
  }
}

abstract class _TicketStatistics implements TicketStatistics {
  const factory _TicketStatistics({
    final List<CategoryCount> categories,
    final List<StatusCount> statuses,
  }) = _$TicketStatisticsImpl;

  factory _TicketStatistics.fromJson(Map<String, dynamic> json) =
      _$TicketStatisticsImpl.fromJson;

  @override
  List<CategoryCount> get categories;
  @override
  List<StatusCount> get statuses;

  /// Create a copy of TicketStatistics
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TicketStatisticsImplCopyWith<_$TicketStatisticsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CategoryCount _$CategoryCountFromJson(Map<String, dynamic> json) {
  return _CategoryCount.fromJson(json);
}

/// @nodoc
mixin _$CategoryCount {
  String get category => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  /// Serializes this CategoryCount to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoryCount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryCountCopyWith<CategoryCount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryCountCopyWith<$Res> {
  factory $CategoryCountCopyWith(
    CategoryCount value,
    $Res Function(CategoryCount) then,
  ) = _$CategoryCountCopyWithImpl<$Res, CategoryCount>;
  @useResult
  $Res call({String category, int count});
}

/// @nodoc
class _$CategoryCountCopyWithImpl<$Res, $Val extends CategoryCount>
    implements $CategoryCountCopyWith<$Res> {
  _$CategoryCountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryCount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? category = null, Object? count = null}) {
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
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CategoryCountImplCopyWith<$Res>
    implements $CategoryCountCopyWith<$Res> {
  factory _$$CategoryCountImplCopyWith(
    _$CategoryCountImpl value,
    $Res Function(_$CategoryCountImpl) then,
  ) = __$$CategoryCountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String category, int count});
}

/// @nodoc
class __$$CategoryCountImplCopyWithImpl<$Res>
    extends _$CategoryCountCopyWithImpl<$Res, _$CategoryCountImpl>
    implements _$$CategoryCountImplCopyWith<$Res> {
  __$$CategoryCountImplCopyWithImpl(
    _$CategoryCountImpl _value,
    $Res Function(_$CategoryCountImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CategoryCount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? category = null, Object? count = null}) {
    return _then(
      _$CategoryCountImpl(
        category: null == category
            ? _value.category
            : category // ignore: cast_nullable_to_non_nullable
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
class _$CategoryCountImpl implements _CategoryCount {
  const _$CategoryCountImpl({required this.category, required this.count});

  factory _$CategoryCountImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryCountImplFromJson(json);

  @override
  final String category;
  @override
  final int count;

  @override
  String toString() {
    return 'CategoryCount(category: $category, count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryCountImpl &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, category, count);

  /// Create a copy of CategoryCount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryCountImplCopyWith<_$CategoryCountImpl> get copyWith =>
      __$$CategoryCountImplCopyWithImpl<_$CategoryCountImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryCountImplToJson(this);
  }
}

abstract class _CategoryCount implements CategoryCount {
  const factory _CategoryCount({
    required final String category,
    required final int count,
  }) = _$CategoryCountImpl;

  factory _CategoryCount.fromJson(Map<String, dynamic> json) =
      _$CategoryCountImpl.fromJson;

  @override
  String get category;
  @override
  int get count;

  /// Create a copy of CategoryCount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryCountImplCopyWith<_$CategoryCountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StatusCount _$StatusCountFromJson(Map<String, dynamic> json) {
  return _StatusCount.fromJson(json);
}

/// @nodoc
mixin _$StatusCount {
  String get status => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  /// Serializes this StatusCount to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StatusCount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StatusCountCopyWith<StatusCount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatusCountCopyWith<$Res> {
  factory $StatusCountCopyWith(
    StatusCount value,
    $Res Function(StatusCount) then,
  ) = _$StatusCountCopyWithImpl<$Res, StatusCount>;
  @useResult
  $Res call({String status, int count});
}

/// @nodoc
class _$StatusCountCopyWithImpl<$Res, $Val extends StatusCount>
    implements $StatusCountCopyWith<$Res> {
  _$StatusCountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StatusCount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? status = null, Object? count = null}) {
    return _then(
      _value.copyWith(
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
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
abstract class _$$StatusCountImplCopyWith<$Res>
    implements $StatusCountCopyWith<$Res> {
  factory _$$StatusCountImplCopyWith(
    _$StatusCountImpl value,
    $Res Function(_$StatusCountImpl) then,
  ) = __$$StatusCountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, int count});
}

/// @nodoc
class __$$StatusCountImplCopyWithImpl<$Res>
    extends _$StatusCountCopyWithImpl<$Res, _$StatusCountImpl>
    implements _$$StatusCountImplCopyWith<$Res> {
  __$$StatusCountImplCopyWithImpl(
    _$StatusCountImpl _value,
    $Res Function(_$StatusCountImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StatusCount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? status = null, Object? count = null}) {
    return _then(
      _$StatusCountImpl(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
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
class _$StatusCountImpl implements _StatusCount {
  const _$StatusCountImpl({required this.status, required this.count});

  factory _$StatusCountImpl.fromJson(Map<String, dynamic> json) =>
      _$$StatusCountImplFromJson(json);

  @override
  final String status;
  @override
  final int count;

  @override
  String toString() {
    return 'StatusCount(status: $status, count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatusCountImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, count);

  /// Create a copy of StatusCount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StatusCountImplCopyWith<_$StatusCountImpl> get copyWith =>
      __$$StatusCountImplCopyWithImpl<_$StatusCountImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StatusCountImplToJson(this);
  }
}

abstract class _StatusCount implements StatusCount {
  const factory _StatusCount({
    required final String status,
    required final int count,
  }) = _$StatusCountImpl;

  factory _StatusCount.fromJson(Map<String, dynamic> json) =
      _$StatusCountImpl.fromJson;

  @override
  String get status;
  @override
  int get count;

  /// Create a copy of StatusCount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StatusCountImplCopyWith<_$StatusCountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TicketFilters _$TicketFiltersFromJson(Map<String, dynamic> json) {
  return _TicketFilters.fromJson(json);
}

/// @nodoc
mixin _$TicketFilters {
  String? get category => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get priority => throw _privateConstructorUsedError;
  String? get search => throw _privateConstructorUsedError;
  String? get sortBy => throw _privateConstructorUsedError;
  String? get sortOrder => throw _privateConstructorUsedError;

  /// Serializes this TicketFilters to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TicketFilters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TicketFiltersCopyWith<TicketFilters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketFiltersCopyWith<$Res> {
  factory $TicketFiltersCopyWith(
    TicketFilters value,
    $Res Function(TicketFilters) then,
  ) = _$TicketFiltersCopyWithImpl<$Res, TicketFilters>;
  @useResult
  $Res call({
    String? category,
    String? status,
    String? priority,
    String? search,
    String? sortBy,
    String? sortOrder,
  });
}

/// @nodoc
class _$TicketFiltersCopyWithImpl<$Res, $Val extends TicketFilters>
    implements $TicketFiltersCopyWith<$Res> {
  _$TicketFiltersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TicketFilters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = freezed,
    Object? status = freezed,
    Object? priority = freezed,
    Object? search = freezed,
    Object? sortBy = freezed,
    Object? sortOrder = freezed,
  }) {
    return _then(
      _value.copyWith(
            category: freezed == category
                ? _value.category
                : category // ignore: cast_nullable_to_non_nullable
                      as String?,
            status: freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String?,
            priority: freezed == priority
                ? _value.priority
                : priority // ignore: cast_nullable_to_non_nullable
                      as String?,
            search: freezed == search
                ? _value.search
                : search // ignore: cast_nullable_to_non_nullable
                      as String?,
            sortBy: freezed == sortBy
                ? _value.sortBy
                : sortBy // ignore: cast_nullable_to_non_nullable
                      as String?,
            sortOrder: freezed == sortOrder
                ? _value.sortOrder
                : sortOrder // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TicketFiltersImplCopyWith<$Res>
    implements $TicketFiltersCopyWith<$Res> {
  factory _$$TicketFiltersImplCopyWith(
    _$TicketFiltersImpl value,
    $Res Function(_$TicketFiltersImpl) then,
  ) = __$$TicketFiltersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? category,
    String? status,
    String? priority,
    String? search,
    String? sortBy,
    String? sortOrder,
  });
}

/// @nodoc
class __$$TicketFiltersImplCopyWithImpl<$Res>
    extends _$TicketFiltersCopyWithImpl<$Res, _$TicketFiltersImpl>
    implements _$$TicketFiltersImplCopyWith<$Res> {
  __$$TicketFiltersImplCopyWithImpl(
    _$TicketFiltersImpl _value,
    $Res Function(_$TicketFiltersImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TicketFilters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = freezed,
    Object? status = freezed,
    Object? priority = freezed,
    Object? search = freezed,
    Object? sortBy = freezed,
    Object? sortOrder = freezed,
  }) {
    return _then(
      _$TicketFiltersImpl(
        category: freezed == category
            ? _value.category
            : category // ignore: cast_nullable_to_non_nullable
                  as String?,
        status: freezed == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String?,
        priority: freezed == priority
            ? _value.priority
            : priority // ignore: cast_nullable_to_non_nullable
                  as String?,
        search: freezed == search
            ? _value.search
            : search // ignore: cast_nullable_to_non_nullable
                  as String?,
        sortBy: freezed == sortBy
            ? _value.sortBy
            : sortBy // ignore: cast_nullable_to_non_nullable
                  as String?,
        sortOrder: freezed == sortOrder
            ? _value.sortOrder
            : sortOrder // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TicketFiltersImpl implements _TicketFilters {
  const _$TicketFiltersImpl({
    this.category,
    this.status,
    this.priority,
    this.search,
    this.sortBy,
    this.sortOrder,
  });

  factory _$TicketFiltersImpl.fromJson(Map<String, dynamic> json) =>
      _$$TicketFiltersImplFromJson(json);

  @override
  final String? category;
  @override
  final String? status;
  @override
  final String? priority;
  @override
  final String? search;
  @override
  final String? sortBy;
  @override
  final String? sortOrder;

  @override
  String toString() {
    return 'TicketFilters(category: $category, status: $status, priority: $priority, search: $search, sortBy: $sortBy, sortOrder: $sortOrder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketFiltersImpl &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.search, search) || other.search == search) &&
            (identical(other.sortBy, sortBy) || other.sortBy == sortBy) &&
            (identical(other.sortOrder, sortOrder) ||
                other.sortOrder == sortOrder));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    category,
    status,
    priority,
    search,
    sortBy,
    sortOrder,
  );

  /// Create a copy of TicketFilters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketFiltersImplCopyWith<_$TicketFiltersImpl> get copyWith =>
      __$$TicketFiltersImplCopyWithImpl<_$TicketFiltersImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TicketFiltersImplToJson(this);
  }
}

abstract class _TicketFilters implements TicketFilters {
  const factory _TicketFilters({
    final String? category,
    final String? status,
    final String? priority,
    final String? search,
    final String? sortBy,
    final String? sortOrder,
  }) = _$TicketFiltersImpl;

  factory _TicketFilters.fromJson(Map<String, dynamic> json) =
      _$TicketFiltersImpl.fromJson;

  @override
  String? get category;
  @override
  String? get status;
  @override
  String? get priority;
  @override
  String? get search;
  @override
  String? get sortBy;
  @override
  String? get sortOrder;

  /// Create a copy of TicketFilters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TicketFiltersImplCopyWith<_$TicketFiltersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TicketStatsResponse _$TicketStatsResponseFromJson(Map<String, dynamic> json) {
  return _TicketStatsResponse.fromJson(json);
}

/// @nodoc
mixin _$TicketStatsResponse {
  bool get success => throw _privateConstructorUsedError;
  TicketStatsData get data => throw _privateConstructorUsedError;

  /// Serializes this TicketStatsResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TicketStatsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TicketStatsResponseCopyWith<TicketStatsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketStatsResponseCopyWith<$Res> {
  factory $TicketStatsResponseCopyWith(
    TicketStatsResponse value,
    $Res Function(TicketStatsResponse) then,
  ) = _$TicketStatsResponseCopyWithImpl<$Res, TicketStatsResponse>;
  @useResult
  $Res call({bool success, TicketStatsData data});

  $TicketStatsDataCopyWith<$Res> get data;
}

/// @nodoc
class _$TicketStatsResponseCopyWithImpl<$Res, $Val extends TicketStatsResponse>
    implements $TicketStatsResponseCopyWith<$Res> {
  _$TicketStatsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TicketStatsResponse
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
                      as TicketStatsData,
          )
          as $Val,
    );
  }

  /// Create a copy of TicketStatsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TicketStatsDataCopyWith<$Res> get data {
    return $TicketStatsDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TicketStatsResponseImplCopyWith<$Res>
    implements $TicketStatsResponseCopyWith<$Res> {
  factory _$$TicketStatsResponseImplCopyWith(
    _$TicketStatsResponseImpl value,
    $Res Function(_$TicketStatsResponseImpl) then,
  ) = __$$TicketStatsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, TicketStatsData data});

  @override
  $TicketStatsDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$TicketStatsResponseImplCopyWithImpl<$Res>
    extends _$TicketStatsResponseCopyWithImpl<$Res, _$TicketStatsResponseImpl>
    implements _$$TicketStatsResponseImplCopyWith<$Res> {
  __$$TicketStatsResponseImplCopyWithImpl(
    _$TicketStatsResponseImpl _value,
    $Res Function(_$TicketStatsResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TicketStatsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? success = null, Object? data = null}) {
    return _then(
      _$TicketStatsResponseImpl(
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
        data: null == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                  as TicketStatsData,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TicketStatsResponseImpl implements _TicketStatsResponse {
  const _$TicketStatsResponseImpl({required this.success, required this.data});

  factory _$TicketStatsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$TicketStatsResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final TicketStatsData data;

  @override
  String toString() {
    return 'TicketStatsResponse(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketStatsResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data);

  /// Create a copy of TicketStatsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketStatsResponseImplCopyWith<_$TicketStatsResponseImpl> get copyWith =>
      __$$TicketStatsResponseImplCopyWithImpl<_$TicketStatsResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$TicketStatsResponseImplToJson(this);
  }
}

abstract class _TicketStatsResponse implements TicketStatsResponse {
  const factory _TicketStatsResponse({
    required final bool success,
    required final TicketStatsData data,
  }) = _$TicketStatsResponseImpl;

  factory _TicketStatsResponse.fromJson(Map<String, dynamic> json) =
      _$TicketStatsResponseImpl.fromJson;

  @override
  bool get success;
  @override
  TicketStatsData get data;

  /// Create a copy of TicketStatsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TicketStatsResponseImplCopyWith<_$TicketStatsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TicketStatsData _$TicketStatsDataFromJson(Map<String, dynamic> json) {
  return _TicketStatsData.fromJson(json);
}

/// @nodoc
mixin _$TicketStatsData {
  int get total => throw _privateConstructorUsedError;
  int get opened => throw _privateConstructorUsedError;
  int get pending => throw _privateConstructorUsedError;
  int get closed => throw _privateConstructorUsedError;
  int get highPriority => throw _privateConstructorUsedError;
  int get urgent => throw _privateConstructorUsedError;

  /// Serializes this TicketStatsData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TicketStatsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TicketStatsDataCopyWith<TicketStatsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketStatsDataCopyWith<$Res> {
  factory $TicketStatsDataCopyWith(
    TicketStatsData value,
    $Res Function(TicketStatsData) then,
  ) = _$TicketStatsDataCopyWithImpl<$Res, TicketStatsData>;
  @useResult
  $Res call({
    int total,
    int opened,
    int pending,
    int closed,
    int highPriority,
    int urgent,
  });
}

/// @nodoc
class _$TicketStatsDataCopyWithImpl<$Res, $Val extends TicketStatsData>
    implements $TicketStatsDataCopyWith<$Res> {
  _$TicketStatsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TicketStatsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? opened = null,
    Object? pending = null,
    Object? closed = null,
    Object? highPriority = null,
    Object? urgent = null,
  }) {
    return _then(
      _value.copyWith(
            total: null == total
                ? _value.total
                : total // ignore: cast_nullable_to_non_nullable
                      as int,
            opened: null == opened
                ? _value.opened
                : opened // ignore: cast_nullable_to_non_nullable
                      as int,
            pending: null == pending
                ? _value.pending
                : pending // ignore: cast_nullable_to_non_nullable
                      as int,
            closed: null == closed
                ? _value.closed
                : closed // ignore: cast_nullable_to_non_nullable
                      as int,
            highPriority: null == highPriority
                ? _value.highPriority
                : highPriority // ignore: cast_nullable_to_non_nullable
                      as int,
            urgent: null == urgent
                ? _value.urgent
                : urgent // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TicketStatsDataImplCopyWith<$Res>
    implements $TicketStatsDataCopyWith<$Res> {
  factory _$$TicketStatsDataImplCopyWith(
    _$TicketStatsDataImpl value,
    $Res Function(_$TicketStatsDataImpl) then,
  ) = __$$TicketStatsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int total,
    int opened,
    int pending,
    int closed,
    int highPriority,
    int urgent,
  });
}

/// @nodoc
class __$$TicketStatsDataImplCopyWithImpl<$Res>
    extends _$TicketStatsDataCopyWithImpl<$Res, _$TicketStatsDataImpl>
    implements _$$TicketStatsDataImplCopyWith<$Res> {
  __$$TicketStatsDataImplCopyWithImpl(
    _$TicketStatsDataImpl _value,
    $Res Function(_$TicketStatsDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TicketStatsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? opened = null,
    Object? pending = null,
    Object? closed = null,
    Object? highPriority = null,
    Object? urgent = null,
  }) {
    return _then(
      _$TicketStatsDataImpl(
        total: null == total
            ? _value.total
            : total // ignore: cast_nullable_to_non_nullable
                  as int,
        opened: null == opened
            ? _value.opened
            : opened // ignore: cast_nullable_to_non_nullable
                  as int,
        pending: null == pending
            ? _value.pending
            : pending // ignore: cast_nullable_to_non_nullable
                  as int,
        closed: null == closed
            ? _value.closed
            : closed // ignore: cast_nullable_to_non_nullable
                  as int,
        highPriority: null == highPriority
            ? _value.highPriority
            : highPriority // ignore: cast_nullable_to_non_nullable
                  as int,
        urgent: null == urgent
            ? _value.urgent
            : urgent // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TicketStatsDataImpl implements _TicketStatsData {
  const _$TicketStatsDataImpl({
    required this.total,
    required this.opened,
    required this.pending,
    required this.closed,
    required this.highPriority,
    required this.urgent,
  });

  factory _$TicketStatsDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$TicketStatsDataImplFromJson(json);

  @override
  final int total;
  @override
  final int opened;
  @override
  final int pending;
  @override
  final int closed;
  @override
  final int highPriority;
  @override
  final int urgent;

  @override
  String toString() {
    return 'TicketStatsData(total: $total, opened: $opened, pending: $pending, closed: $closed, highPriority: $highPriority, urgent: $urgent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketStatsDataImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.opened, opened) || other.opened == opened) &&
            (identical(other.pending, pending) || other.pending == pending) &&
            (identical(other.closed, closed) || other.closed == closed) &&
            (identical(other.highPriority, highPriority) ||
                other.highPriority == highPriority) &&
            (identical(other.urgent, urgent) || other.urgent == urgent));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    total,
    opened,
    pending,
    closed,
    highPriority,
    urgent,
  );

  /// Create a copy of TicketStatsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketStatsDataImplCopyWith<_$TicketStatsDataImpl> get copyWith =>
      __$$TicketStatsDataImplCopyWithImpl<_$TicketStatsDataImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$TicketStatsDataImplToJson(this);
  }
}

abstract class _TicketStatsData implements TicketStatsData {
  const factory _TicketStatsData({
    required final int total,
    required final int opened,
    required final int pending,
    required final int closed,
    required final int highPriority,
    required final int urgent,
  }) = _$TicketStatsDataImpl;

  factory _TicketStatsData.fromJson(Map<String, dynamic> json) =
      _$TicketStatsDataImpl.fromJson;

  @override
  int get total;
  @override
  int get opened;
  @override
  int get pending;
  @override
  int get closed;
  @override
  int get highPriority;
  @override
  int get urgent;

  /// Create a copy of TicketStatsData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TicketStatsDataImplCopyWith<_$TicketStatsDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TicketUpdateRequest _$TicketUpdateRequestFromJson(Map<String, dynamic> json) {
  return _TicketUpdateRequest.fromJson(json);
}

/// @nodoc
mixin _$TicketUpdateRequest {
  String? get status => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  String? get priority => throw _privateConstructorUsedError;
  int? get assignedTo => throw _privateConstructorUsedError;
  String? get adminNotes => throw _privateConstructorUsedError;

  /// Serializes this TicketUpdateRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TicketUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TicketUpdateRequestCopyWith<TicketUpdateRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketUpdateRequestCopyWith<$Res> {
  factory $TicketUpdateRequestCopyWith(
    TicketUpdateRequest value,
    $Res Function(TicketUpdateRequest) then,
  ) = _$TicketUpdateRequestCopyWithImpl<$Res, TicketUpdateRequest>;
  @useResult
  $Res call({
    String? status,
    String? category,
    String? priority,
    int? assignedTo,
    String? adminNotes,
  });
}

/// @nodoc
class _$TicketUpdateRequestCopyWithImpl<$Res, $Val extends TicketUpdateRequest>
    implements $TicketUpdateRequestCopyWith<$Res> {
  _$TicketUpdateRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TicketUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? category = freezed,
    Object? priority = freezed,
    Object? assignedTo = freezed,
    Object? adminNotes = freezed,
  }) {
    return _then(
      _value.copyWith(
            status: freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String?,
            category: freezed == category
                ? _value.category
                : category // ignore: cast_nullable_to_non_nullable
                      as String?,
            priority: freezed == priority
                ? _value.priority
                : priority // ignore: cast_nullable_to_non_nullable
                      as String?,
            assignedTo: freezed == assignedTo
                ? _value.assignedTo
                : assignedTo // ignore: cast_nullable_to_non_nullable
                      as int?,
            adminNotes: freezed == adminNotes
                ? _value.adminNotes
                : adminNotes // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TicketUpdateRequestImplCopyWith<$Res>
    implements $TicketUpdateRequestCopyWith<$Res> {
  factory _$$TicketUpdateRequestImplCopyWith(
    _$TicketUpdateRequestImpl value,
    $Res Function(_$TicketUpdateRequestImpl) then,
  ) = __$$TicketUpdateRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? status,
    String? category,
    String? priority,
    int? assignedTo,
    String? adminNotes,
  });
}

/// @nodoc
class __$$TicketUpdateRequestImplCopyWithImpl<$Res>
    extends _$TicketUpdateRequestCopyWithImpl<$Res, _$TicketUpdateRequestImpl>
    implements _$$TicketUpdateRequestImplCopyWith<$Res> {
  __$$TicketUpdateRequestImplCopyWithImpl(
    _$TicketUpdateRequestImpl _value,
    $Res Function(_$TicketUpdateRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TicketUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? category = freezed,
    Object? priority = freezed,
    Object? assignedTo = freezed,
    Object? adminNotes = freezed,
  }) {
    return _then(
      _$TicketUpdateRequestImpl(
        status: freezed == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String?,
        category: freezed == category
            ? _value.category
            : category // ignore: cast_nullable_to_non_nullable
                  as String?,
        priority: freezed == priority
            ? _value.priority
            : priority // ignore: cast_nullable_to_non_nullable
                  as String?,
        assignedTo: freezed == assignedTo
            ? _value.assignedTo
            : assignedTo // ignore: cast_nullable_to_non_nullable
                  as int?,
        adminNotes: freezed == adminNotes
            ? _value.adminNotes
            : adminNotes // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TicketUpdateRequestImpl implements _TicketUpdateRequest {
  const _$TicketUpdateRequestImpl({
    this.status,
    this.category,
    this.priority,
    this.assignedTo,
    this.adminNotes,
  });

  factory _$TicketUpdateRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$TicketUpdateRequestImplFromJson(json);

  @override
  final String? status;
  @override
  final String? category;
  @override
  final String? priority;
  @override
  final int? assignedTo;
  @override
  final String? adminNotes;

  @override
  String toString() {
    return 'TicketUpdateRequest(status: $status, category: $category, priority: $priority, assignedTo: $assignedTo, adminNotes: $adminNotes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketUpdateRequestImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.assignedTo, assignedTo) ||
                other.assignedTo == assignedTo) &&
            (identical(other.adminNotes, adminNotes) ||
                other.adminNotes == adminNotes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    category,
    priority,
    assignedTo,
    adminNotes,
  );

  /// Create a copy of TicketUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketUpdateRequestImplCopyWith<_$TicketUpdateRequestImpl> get copyWith =>
      __$$TicketUpdateRequestImplCopyWithImpl<_$TicketUpdateRequestImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$TicketUpdateRequestImplToJson(this);
  }
}

abstract class _TicketUpdateRequest implements TicketUpdateRequest {
  const factory _TicketUpdateRequest({
    final String? status,
    final String? category,
    final String? priority,
    final int? assignedTo,
    final String? adminNotes,
  }) = _$TicketUpdateRequestImpl;

  factory _TicketUpdateRequest.fromJson(Map<String, dynamic> json) =
      _$TicketUpdateRequestImpl.fromJson;

  @override
  String? get status;
  @override
  String? get category;
  @override
  String? get priority;
  @override
  int? get assignedTo;
  @override
  String? get adminNotes;

  /// Create a copy of TicketUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TicketUpdateRequestImplCopyWith<_$TicketUpdateRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TicketReplyRequest _$TicketReplyRequestFromJson(Map<String, dynamic> json) {
  return _TicketReplyRequest.fromJson(json);
}

/// @nodoc
mixin _$TicketReplyRequest {
  String get text => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String get from => throw _privateConstructorUsedError;

  /// Serializes this TicketReplyRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TicketReplyRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TicketReplyRequestCopyWith<TicketReplyRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketReplyRequestCopyWith<$Res> {
  factory $TicketReplyRequestCopyWith(
    TicketReplyRequest value,
    $Res Function(TicketReplyRequest) then,
  ) = _$TicketReplyRequestCopyWithImpl<$Res, TicketReplyRequest>;
  @useResult
  $Res call({String text, String? image, String from});
}

/// @nodoc
class _$TicketReplyRequestCopyWithImpl<$Res, $Val extends TicketReplyRequest>
    implements $TicketReplyRequestCopyWith<$Res> {
  _$TicketReplyRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TicketReplyRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? image = freezed,
    Object? from = null,
  }) {
    return _then(
      _value.copyWith(
            text: null == text
                ? _value.text
                : text // ignore: cast_nullable_to_non_nullable
                      as String,
            image: freezed == image
                ? _value.image
                : image // ignore: cast_nullable_to_non_nullable
                      as String?,
            from: null == from
                ? _value.from
                : from // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TicketReplyRequestImplCopyWith<$Res>
    implements $TicketReplyRequestCopyWith<$Res> {
  factory _$$TicketReplyRequestImplCopyWith(
    _$TicketReplyRequestImpl value,
    $Res Function(_$TicketReplyRequestImpl) then,
  ) = __$$TicketReplyRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text, String? image, String from});
}

/// @nodoc
class __$$TicketReplyRequestImplCopyWithImpl<$Res>
    extends _$TicketReplyRequestCopyWithImpl<$Res, _$TicketReplyRequestImpl>
    implements _$$TicketReplyRequestImplCopyWith<$Res> {
  __$$TicketReplyRequestImplCopyWithImpl(
    _$TicketReplyRequestImpl _value,
    $Res Function(_$TicketReplyRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TicketReplyRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? image = freezed,
    Object? from = null,
  }) {
    return _then(
      _$TicketReplyRequestImpl(
        text: null == text
            ? _value.text
            : text // ignore: cast_nullable_to_non_nullable
                  as String,
        image: freezed == image
            ? _value.image
            : image // ignore: cast_nullable_to_non_nullable
                  as String?,
        from: null == from
            ? _value.from
            : from // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TicketReplyRequestImpl implements _TicketReplyRequest {
  const _$TicketReplyRequestImpl({
    required this.text,
    this.image,
    this.from = 'super_admin',
  });

  factory _$TicketReplyRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$TicketReplyRequestImplFromJson(json);

  @override
  final String text;
  @override
  final String? image;
  @override
  @JsonKey()
  final String from;

  @override
  String toString() {
    return 'TicketReplyRequest(text: $text, image: $image, from: $from)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketReplyRequestImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.from, from) || other.from == from));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, text, image, from);

  /// Create a copy of TicketReplyRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketReplyRequestImplCopyWith<_$TicketReplyRequestImpl> get copyWith =>
      __$$TicketReplyRequestImplCopyWithImpl<_$TicketReplyRequestImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$TicketReplyRequestImplToJson(this);
  }
}

abstract class _TicketReplyRequest implements TicketReplyRequest {
  const factory _TicketReplyRequest({
    required final String text,
    final String? image,
    final String from,
  }) = _$TicketReplyRequestImpl;

  factory _TicketReplyRequest.fromJson(Map<String, dynamic> json) =
      _$TicketReplyRequestImpl.fromJson;

  @override
  String get text;
  @override
  String? get image;
  @override
  String get from;

  /// Create a copy of TicketReplyRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TicketReplyRequestImplCopyWith<_$TicketReplyRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
