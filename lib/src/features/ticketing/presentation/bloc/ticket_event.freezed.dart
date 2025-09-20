// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$TicketEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      String? category,
      String? status,
      String? priority,
      String? search,
      String? sortBy,
      String? sortOrder,
      int? page,
      int? limit,
    )
    getTickets,
    required TResult Function(int id) getTicketById,
    required TResult Function(
      String title,
      String description,
      String priority,
      int userId,
      List<TicketAttachmentEntity>? attachments,
    )
    createTicket,
    required TResult Function(int id, TicketUpdateRequest request) updateTicket,
    required TResult Function(int id, TicketReplyRequest request)
    addReplyToTicket,
    required TResult Function() getTicketStats,
    required TResult Function(int id) deleteTicket,
    required TResult Function() clearError,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      String? category,
      String? status,
      String? priority,
      String? search,
      String? sortBy,
      String? sortOrder,
      int? page,
      int? limit,
    )?
    getTickets,
    TResult? Function(int id)? getTicketById,
    TResult? Function(
      String title,
      String description,
      String priority,
      int userId,
      List<TicketAttachmentEntity>? attachments,
    )?
    createTicket,
    TResult? Function(int id, TicketUpdateRequest request)? updateTicket,
    TResult? Function(int id, TicketReplyRequest request)? addReplyToTicket,
    TResult? Function()? getTicketStats,
    TResult? Function(int id)? deleteTicket,
    TResult? Function()? clearError,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      String? category,
      String? status,
      String? priority,
      String? search,
      String? sortBy,
      String? sortOrder,
      int? page,
      int? limit,
    )?
    getTickets,
    TResult Function(int id)? getTicketById,
    TResult Function(
      String title,
      String description,
      String priority,
      int userId,
      List<TicketAttachmentEntity>? attachments,
    )?
    createTicket,
    TResult Function(int id, TicketUpdateRequest request)? updateTicket,
    TResult Function(int id, TicketReplyRequest request)? addReplyToTicket,
    TResult Function()? getTicketStats,
    TResult Function(int id)? deleteTicket,
    TResult Function()? clearError,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTicketsEvent value) getTickets,
    required TResult Function(GetTicketByIdEvent value) getTicketById,
    required TResult Function(CreateTicketEvent value) createTicket,
    required TResult Function(UpdateTicketEvent value) updateTicket,
    required TResult Function(AddReplyToTicketEvent value) addReplyToTicket,
    required TResult Function(GetTicketStatsEvent value) getTicketStats,
    required TResult Function(DeleteTicketEvent value) deleteTicket,
    required TResult Function(ClearErrorEvent value) clearError,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTicketsEvent value)? getTickets,
    TResult? Function(GetTicketByIdEvent value)? getTicketById,
    TResult? Function(CreateTicketEvent value)? createTicket,
    TResult? Function(UpdateTicketEvent value)? updateTicket,
    TResult? Function(AddReplyToTicketEvent value)? addReplyToTicket,
    TResult? Function(GetTicketStatsEvent value)? getTicketStats,
    TResult? Function(DeleteTicketEvent value)? deleteTicket,
    TResult? Function(ClearErrorEvent value)? clearError,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTicketsEvent value)? getTickets,
    TResult Function(GetTicketByIdEvent value)? getTicketById,
    TResult Function(CreateTicketEvent value)? createTicket,
    TResult Function(UpdateTicketEvent value)? updateTicket,
    TResult Function(AddReplyToTicketEvent value)? addReplyToTicket,
    TResult Function(GetTicketStatsEvent value)? getTicketStats,
    TResult Function(DeleteTicketEvent value)? deleteTicket,
    TResult Function(ClearErrorEvent value)? clearError,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketEventCopyWith<$Res> {
  factory $TicketEventCopyWith(
    TicketEvent value,
    $Res Function(TicketEvent) then,
  ) = _$TicketEventCopyWithImpl<$Res, TicketEvent>;
}

/// @nodoc
class _$TicketEventCopyWithImpl<$Res, $Val extends TicketEvent>
    implements $TicketEventCopyWith<$Res> {
  _$TicketEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TicketEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetTicketsEventImplCopyWith<$Res> {
  factory _$$GetTicketsEventImplCopyWith(
    _$GetTicketsEventImpl value,
    $Res Function(_$GetTicketsEventImpl) then,
  ) = __$$GetTicketsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    String? category,
    String? status,
    String? priority,
    String? search,
    String? sortBy,
    String? sortOrder,
    int? page,
    int? limit,
  });
}

/// @nodoc
class __$$GetTicketsEventImplCopyWithImpl<$Res>
    extends _$TicketEventCopyWithImpl<$Res, _$GetTicketsEventImpl>
    implements _$$GetTicketsEventImplCopyWith<$Res> {
  __$$GetTicketsEventImplCopyWithImpl(
    _$GetTicketsEventImpl _value,
    $Res Function(_$GetTicketsEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TicketEvent
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
    Object? page = freezed,
    Object? limit = freezed,
  }) {
    return _then(
      _$GetTicketsEventImpl(
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
        page: freezed == page
            ? _value.page
            : page // ignore: cast_nullable_to_non_nullable
                  as int?,
        limit: freezed == limit
            ? _value.limit
            : limit // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc

class _$GetTicketsEventImpl implements GetTicketsEvent {
  const _$GetTicketsEventImpl({
    this.category,
    this.status,
    this.priority,
    this.search,
    this.sortBy,
    this.sortOrder,
    this.page,
    this.limit,
  });

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
  final int? page;
  @override
  final int? limit;

  @override
  String toString() {
    return 'TicketEvent.getTickets(category: $category, status: $status, priority: $priority, search: $search, sortBy: $sortBy, sortOrder: $sortOrder, page: $page, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTicketsEventImpl &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.search, search) || other.search == search) &&
            (identical(other.sortBy, sortBy) || other.sortBy == sortBy) &&
            (identical(other.sortOrder, sortOrder) ||
                other.sortOrder == sortOrder) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    category,
    status,
    priority,
    search,
    sortBy,
    sortOrder,
    page,
    limit,
  );

  /// Create a copy of TicketEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTicketsEventImplCopyWith<_$GetTicketsEventImpl> get copyWith =>
      __$$GetTicketsEventImplCopyWithImpl<_$GetTicketsEventImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      String? category,
      String? status,
      String? priority,
      String? search,
      String? sortBy,
      String? sortOrder,
      int? page,
      int? limit,
    )
    getTickets,
    required TResult Function(int id) getTicketById,
    required TResult Function(
      String title,
      String description,
      String priority,
      int userId,
      List<TicketAttachmentEntity>? attachments,
    )
    createTicket,
    required TResult Function(int id, TicketUpdateRequest request) updateTicket,
    required TResult Function(int id, TicketReplyRequest request)
    addReplyToTicket,
    required TResult Function() getTicketStats,
    required TResult Function(int id) deleteTicket,
    required TResult Function() clearError,
  }) {
    return getTickets(
      category,
      status,
      priority,
      search,
      sortBy,
      sortOrder,
      page,
      limit,
    );
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      String? category,
      String? status,
      String? priority,
      String? search,
      String? sortBy,
      String? sortOrder,
      int? page,
      int? limit,
    )?
    getTickets,
    TResult? Function(int id)? getTicketById,
    TResult? Function(
      String title,
      String description,
      String priority,
      int userId,
      List<TicketAttachmentEntity>? attachments,
    )?
    createTicket,
    TResult? Function(int id, TicketUpdateRequest request)? updateTicket,
    TResult? Function(int id, TicketReplyRequest request)? addReplyToTicket,
    TResult? Function()? getTicketStats,
    TResult? Function(int id)? deleteTicket,
    TResult? Function()? clearError,
  }) {
    return getTickets?.call(
      category,
      status,
      priority,
      search,
      sortBy,
      sortOrder,
      page,
      limit,
    );
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      String? category,
      String? status,
      String? priority,
      String? search,
      String? sortBy,
      String? sortOrder,
      int? page,
      int? limit,
    )?
    getTickets,
    TResult Function(int id)? getTicketById,
    TResult Function(
      String title,
      String description,
      String priority,
      int userId,
      List<TicketAttachmentEntity>? attachments,
    )?
    createTicket,
    TResult Function(int id, TicketUpdateRequest request)? updateTicket,
    TResult Function(int id, TicketReplyRequest request)? addReplyToTicket,
    TResult Function()? getTicketStats,
    TResult Function(int id)? deleteTicket,
    TResult Function()? clearError,
    required TResult orElse(),
  }) {
    if (getTickets != null) {
      return getTickets(
        category,
        status,
        priority,
        search,
        sortBy,
        sortOrder,
        page,
        limit,
      );
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTicketsEvent value) getTickets,
    required TResult Function(GetTicketByIdEvent value) getTicketById,
    required TResult Function(CreateTicketEvent value) createTicket,
    required TResult Function(UpdateTicketEvent value) updateTicket,
    required TResult Function(AddReplyToTicketEvent value) addReplyToTicket,
    required TResult Function(GetTicketStatsEvent value) getTicketStats,
    required TResult Function(DeleteTicketEvent value) deleteTicket,
    required TResult Function(ClearErrorEvent value) clearError,
  }) {
    return getTickets(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTicketsEvent value)? getTickets,
    TResult? Function(GetTicketByIdEvent value)? getTicketById,
    TResult? Function(CreateTicketEvent value)? createTicket,
    TResult? Function(UpdateTicketEvent value)? updateTicket,
    TResult? Function(AddReplyToTicketEvent value)? addReplyToTicket,
    TResult? Function(GetTicketStatsEvent value)? getTicketStats,
    TResult? Function(DeleteTicketEvent value)? deleteTicket,
    TResult? Function(ClearErrorEvent value)? clearError,
  }) {
    return getTickets?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTicketsEvent value)? getTickets,
    TResult Function(GetTicketByIdEvent value)? getTicketById,
    TResult Function(CreateTicketEvent value)? createTicket,
    TResult Function(UpdateTicketEvent value)? updateTicket,
    TResult Function(AddReplyToTicketEvent value)? addReplyToTicket,
    TResult Function(GetTicketStatsEvent value)? getTicketStats,
    TResult Function(DeleteTicketEvent value)? deleteTicket,
    TResult Function(ClearErrorEvent value)? clearError,
    required TResult orElse(),
  }) {
    if (getTickets != null) {
      return getTickets(this);
    }
    return orElse();
  }
}

abstract class GetTicketsEvent implements TicketEvent {
  const factory GetTicketsEvent({
    final String? category,
    final String? status,
    final String? priority,
    final String? search,
    final String? sortBy,
    final String? sortOrder,
    final int? page,
    final int? limit,
  }) = _$GetTicketsEventImpl;

  String? get category;
  String? get status;
  String? get priority;
  String? get search;
  String? get sortBy;
  String? get sortOrder;
  int? get page;
  int? get limit;

  /// Create a copy of TicketEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetTicketsEventImplCopyWith<_$GetTicketsEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetTicketByIdEventImplCopyWith<$Res> {
  factory _$$GetTicketByIdEventImplCopyWith(
    _$GetTicketByIdEventImpl value,
    $Res Function(_$GetTicketByIdEventImpl) then,
  ) = __$$GetTicketByIdEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$GetTicketByIdEventImplCopyWithImpl<$Res>
    extends _$TicketEventCopyWithImpl<$Res, _$GetTicketByIdEventImpl>
    implements _$$GetTicketByIdEventImplCopyWith<$Res> {
  __$$GetTicketByIdEventImplCopyWithImpl(
    _$GetTicketByIdEventImpl _value,
    $Res Function(_$GetTicketByIdEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TicketEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null}) {
    return _then(
      _$GetTicketByIdEventImpl(
        null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$GetTicketByIdEventImpl implements GetTicketByIdEvent {
  const _$GetTicketByIdEventImpl(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'TicketEvent.getTicketById(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTicketByIdEventImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of TicketEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTicketByIdEventImplCopyWith<_$GetTicketByIdEventImpl> get copyWith =>
      __$$GetTicketByIdEventImplCopyWithImpl<_$GetTicketByIdEventImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      String? category,
      String? status,
      String? priority,
      String? search,
      String? sortBy,
      String? sortOrder,
      int? page,
      int? limit,
    )
    getTickets,
    required TResult Function(int id) getTicketById,
    required TResult Function(
      String title,
      String description,
      String priority,
      int userId,
      List<TicketAttachmentEntity>? attachments,
    )
    createTicket,
    required TResult Function(int id, TicketUpdateRequest request) updateTicket,
    required TResult Function(int id, TicketReplyRequest request)
    addReplyToTicket,
    required TResult Function() getTicketStats,
    required TResult Function(int id) deleteTicket,
    required TResult Function() clearError,
  }) {
    return getTicketById(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      String? category,
      String? status,
      String? priority,
      String? search,
      String? sortBy,
      String? sortOrder,
      int? page,
      int? limit,
    )?
    getTickets,
    TResult? Function(int id)? getTicketById,
    TResult? Function(
      String title,
      String description,
      String priority,
      int userId,
      List<TicketAttachmentEntity>? attachments,
    )?
    createTicket,
    TResult? Function(int id, TicketUpdateRequest request)? updateTicket,
    TResult? Function(int id, TicketReplyRequest request)? addReplyToTicket,
    TResult? Function()? getTicketStats,
    TResult? Function(int id)? deleteTicket,
    TResult? Function()? clearError,
  }) {
    return getTicketById?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      String? category,
      String? status,
      String? priority,
      String? search,
      String? sortBy,
      String? sortOrder,
      int? page,
      int? limit,
    )?
    getTickets,
    TResult Function(int id)? getTicketById,
    TResult Function(
      String title,
      String description,
      String priority,
      int userId,
      List<TicketAttachmentEntity>? attachments,
    )?
    createTicket,
    TResult Function(int id, TicketUpdateRequest request)? updateTicket,
    TResult Function(int id, TicketReplyRequest request)? addReplyToTicket,
    TResult Function()? getTicketStats,
    TResult Function(int id)? deleteTicket,
    TResult Function()? clearError,
    required TResult orElse(),
  }) {
    if (getTicketById != null) {
      return getTicketById(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTicketsEvent value) getTickets,
    required TResult Function(GetTicketByIdEvent value) getTicketById,
    required TResult Function(CreateTicketEvent value) createTicket,
    required TResult Function(UpdateTicketEvent value) updateTicket,
    required TResult Function(AddReplyToTicketEvent value) addReplyToTicket,
    required TResult Function(GetTicketStatsEvent value) getTicketStats,
    required TResult Function(DeleteTicketEvent value) deleteTicket,
    required TResult Function(ClearErrorEvent value) clearError,
  }) {
    return getTicketById(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTicketsEvent value)? getTickets,
    TResult? Function(GetTicketByIdEvent value)? getTicketById,
    TResult? Function(CreateTicketEvent value)? createTicket,
    TResult? Function(UpdateTicketEvent value)? updateTicket,
    TResult? Function(AddReplyToTicketEvent value)? addReplyToTicket,
    TResult? Function(GetTicketStatsEvent value)? getTicketStats,
    TResult? Function(DeleteTicketEvent value)? deleteTicket,
    TResult? Function(ClearErrorEvent value)? clearError,
  }) {
    return getTicketById?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTicketsEvent value)? getTickets,
    TResult Function(GetTicketByIdEvent value)? getTicketById,
    TResult Function(CreateTicketEvent value)? createTicket,
    TResult Function(UpdateTicketEvent value)? updateTicket,
    TResult Function(AddReplyToTicketEvent value)? addReplyToTicket,
    TResult Function(GetTicketStatsEvent value)? getTicketStats,
    TResult Function(DeleteTicketEvent value)? deleteTicket,
    TResult Function(ClearErrorEvent value)? clearError,
    required TResult orElse(),
  }) {
    if (getTicketById != null) {
      return getTicketById(this);
    }
    return orElse();
  }
}

abstract class GetTicketByIdEvent implements TicketEvent {
  const factory GetTicketByIdEvent(final int id) = _$GetTicketByIdEventImpl;

  int get id;

  /// Create a copy of TicketEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetTicketByIdEventImplCopyWith<_$GetTicketByIdEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateTicketEventImplCopyWith<$Res> {
  factory _$$CreateTicketEventImplCopyWith(
    _$CreateTicketEventImpl value,
    $Res Function(_$CreateTicketEventImpl) then,
  ) = __$$CreateTicketEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    String title,
    String description,
    String priority,
    int userId,
    List<TicketAttachmentEntity>? attachments,
  });
}

/// @nodoc
class __$$CreateTicketEventImplCopyWithImpl<$Res>
    extends _$TicketEventCopyWithImpl<$Res, _$CreateTicketEventImpl>
    implements _$$CreateTicketEventImplCopyWith<$Res> {
  __$$CreateTicketEventImplCopyWithImpl(
    _$CreateTicketEventImpl _value,
    $Res Function(_$CreateTicketEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TicketEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? priority = null,
    Object? userId = null,
    Object? attachments = freezed,
  }) {
    return _then(
      _$CreateTicketEventImpl(
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
        priority: null == priority
            ? _value.priority
            : priority // ignore: cast_nullable_to_non_nullable
                  as String,
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as int,
        attachments: freezed == attachments
            ? _value._attachments
            : attachments // ignore: cast_nullable_to_non_nullable
                  as List<TicketAttachmentEntity>?,
      ),
    );
  }
}

/// @nodoc

class _$CreateTicketEventImpl implements CreateTicketEvent {
  const _$CreateTicketEventImpl({
    required this.title,
    required this.description,
    required this.priority,
    required this.userId,
    final List<TicketAttachmentEntity>? attachments,
  }) : _attachments = attachments;

  @override
  final String title;
  @override
  final String description;
  @override
  final String priority;
  @override
  final int userId;
  final List<TicketAttachmentEntity>? _attachments;
  @override
  List<TicketAttachmentEntity>? get attachments {
    final value = _attachments;
    if (value == null) return null;
    if (_attachments is EqualUnmodifiableListView) return _attachments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TicketEvent.createTicket(title: $title, description: $description, priority: $priority, userId: $userId, attachments: $attachments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateTicketEventImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            const DeepCollectionEquality().equals(
              other._attachments,
              _attachments,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    title,
    description,
    priority,
    userId,
    const DeepCollectionEquality().hash(_attachments),
  );

  /// Create a copy of TicketEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateTicketEventImplCopyWith<_$CreateTicketEventImpl> get copyWith =>
      __$$CreateTicketEventImplCopyWithImpl<_$CreateTicketEventImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      String? category,
      String? status,
      String? priority,
      String? search,
      String? sortBy,
      String? sortOrder,
      int? page,
      int? limit,
    )
    getTickets,
    required TResult Function(int id) getTicketById,
    required TResult Function(
      String title,
      String description,
      String priority,
      int userId,
      List<TicketAttachmentEntity>? attachments,
    )
    createTicket,
    required TResult Function(int id, TicketUpdateRequest request) updateTicket,
    required TResult Function(int id, TicketReplyRequest request)
    addReplyToTicket,
    required TResult Function() getTicketStats,
    required TResult Function(int id) deleteTicket,
    required TResult Function() clearError,
  }) {
    return createTicket(title, description, priority, userId, attachments);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      String? category,
      String? status,
      String? priority,
      String? search,
      String? sortBy,
      String? sortOrder,
      int? page,
      int? limit,
    )?
    getTickets,
    TResult? Function(int id)? getTicketById,
    TResult? Function(
      String title,
      String description,
      String priority,
      int userId,
      List<TicketAttachmentEntity>? attachments,
    )?
    createTicket,
    TResult? Function(int id, TicketUpdateRequest request)? updateTicket,
    TResult? Function(int id, TicketReplyRequest request)? addReplyToTicket,
    TResult? Function()? getTicketStats,
    TResult? Function(int id)? deleteTicket,
    TResult? Function()? clearError,
  }) {
    return createTicket?.call(
      title,
      description,
      priority,
      userId,
      attachments,
    );
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      String? category,
      String? status,
      String? priority,
      String? search,
      String? sortBy,
      String? sortOrder,
      int? page,
      int? limit,
    )?
    getTickets,
    TResult Function(int id)? getTicketById,
    TResult Function(
      String title,
      String description,
      String priority,
      int userId,
      List<TicketAttachmentEntity>? attachments,
    )?
    createTicket,
    TResult Function(int id, TicketUpdateRequest request)? updateTicket,
    TResult Function(int id, TicketReplyRequest request)? addReplyToTicket,
    TResult Function()? getTicketStats,
    TResult Function(int id)? deleteTicket,
    TResult Function()? clearError,
    required TResult orElse(),
  }) {
    if (createTicket != null) {
      return createTicket(title, description, priority, userId, attachments);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTicketsEvent value) getTickets,
    required TResult Function(GetTicketByIdEvent value) getTicketById,
    required TResult Function(CreateTicketEvent value) createTicket,
    required TResult Function(UpdateTicketEvent value) updateTicket,
    required TResult Function(AddReplyToTicketEvent value) addReplyToTicket,
    required TResult Function(GetTicketStatsEvent value) getTicketStats,
    required TResult Function(DeleteTicketEvent value) deleteTicket,
    required TResult Function(ClearErrorEvent value) clearError,
  }) {
    return createTicket(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTicketsEvent value)? getTickets,
    TResult? Function(GetTicketByIdEvent value)? getTicketById,
    TResult? Function(CreateTicketEvent value)? createTicket,
    TResult? Function(UpdateTicketEvent value)? updateTicket,
    TResult? Function(AddReplyToTicketEvent value)? addReplyToTicket,
    TResult? Function(GetTicketStatsEvent value)? getTicketStats,
    TResult? Function(DeleteTicketEvent value)? deleteTicket,
    TResult? Function(ClearErrorEvent value)? clearError,
  }) {
    return createTicket?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTicketsEvent value)? getTickets,
    TResult Function(GetTicketByIdEvent value)? getTicketById,
    TResult Function(CreateTicketEvent value)? createTicket,
    TResult Function(UpdateTicketEvent value)? updateTicket,
    TResult Function(AddReplyToTicketEvent value)? addReplyToTicket,
    TResult Function(GetTicketStatsEvent value)? getTicketStats,
    TResult Function(DeleteTicketEvent value)? deleteTicket,
    TResult Function(ClearErrorEvent value)? clearError,
    required TResult orElse(),
  }) {
    if (createTicket != null) {
      return createTicket(this);
    }
    return orElse();
  }
}

abstract class CreateTicketEvent implements TicketEvent {
  const factory CreateTicketEvent({
    required final String title,
    required final String description,
    required final String priority,
    required final int userId,
    final List<TicketAttachmentEntity>? attachments,
  }) = _$CreateTicketEventImpl;

  String get title;
  String get description;
  String get priority;
  int get userId;
  List<TicketAttachmentEntity>? get attachments;

  /// Create a copy of TicketEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateTicketEventImplCopyWith<_$CreateTicketEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateTicketEventImplCopyWith<$Res> {
  factory _$$UpdateTicketEventImplCopyWith(
    _$UpdateTicketEventImpl value,
    $Res Function(_$UpdateTicketEventImpl) then,
  ) = __$$UpdateTicketEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id, TicketUpdateRequest request});

  $TicketUpdateRequestCopyWith<$Res> get request;
}

/// @nodoc
class __$$UpdateTicketEventImplCopyWithImpl<$Res>
    extends _$TicketEventCopyWithImpl<$Res, _$UpdateTicketEventImpl>
    implements _$$UpdateTicketEventImplCopyWith<$Res> {
  __$$UpdateTicketEventImplCopyWithImpl(
    _$UpdateTicketEventImpl _value,
    $Res Function(_$UpdateTicketEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TicketEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? request = null}) {
    return _then(
      _$UpdateTicketEventImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        request: null == request
            ? _value.request
            : request // ignore: cast_nullable_to_non_nullable
                  as TicketUpdateRequest,
      ),
    );
  }

  /// Create a copy of TicketEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TicketUpdateRequestCopyWith<$Res> get request {
    return $TicketUpdateRequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$UpdateTicketEventImpl implements UpdateTicketEvent {
  const _$UpdateTicketEventImpl({required this.id, required this.request});

  @override
  final int id;
  @override
  final TicketUpdateRequest request;

  @override
  String toString() {
    return 'TicketEvent.updateTicket(id: $id, request: $request)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTicketEventImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, request);

  /// Create a copy of TicketEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTicketEventImplCopyWith<_$UpdateTicketEventImpl> get copyWith =>
      __$$UpdateTicketEventImplCopyWithImpl<_$UpdateTicketEventImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      String? category,
      String? status,
      String? priority,
      String? search,
      String? sortBy,
      String? sortOrder,
      int? page,
      int? limit,
    )
    getTickets,
    required TResult Function(int id) getTicketById,
    required TResult Function(
      String title,
      String description,
      String priority,
      int userId,
      List<TicketAttachmentEntity>? attachments,
    )
    createTicket,
    required TResult Function(int id, TicketUpdateRequest request) updateTicket,
    required TResult Function(int id, TicketReplyRequest request)
    addReplyToTicket,
    required TResult Function() getTicketStats,
    required TResult Function(int id) deleteTicket,
    required TResult Function() clearError,
  }) {
    return updateTicket(id, request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      String? category,
      String? status,
      String? priority,
      String? search,
      String? sortBy,
      String? sortOrder,
      int? page,
      int? limit,
    )?
    getTickets,
    TResult? Function(int id)? getTicketById,
    TResult? Function(
      String title,
      String description,
      String priority,
      int userId,
      List<TicketAttachmentEntity>? attachments,
    )?
    createTicket,
    TResult? Function(int id, TicketUpdateRequest request)? updateTicket,
    TResult? Function(int id, TicketReplyRequest request)? addReplyToTicket,
    TResult? Function()? getTicketStats,
    TResult? Function(int id)? deleteTicket,
    TResult? Function()? clearError,
  }) {
    return updateTicket?.call(id, request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      String? category,
      String? status,
      String? priority,
      String? search,
      String? sortBy,
      String? sortOrder,
      int? page,
      int? limit,
    )?
    getTickets,
    TResult Function(int id)? getTicketById,
    TResult Function(
      String title,
      String description,
      String priority,
      int userId,
      List<TicketAttachmentEntity>? attachments,
    )?
    createTicket,
    TResult Function(int id, TicketUpdateRequest request)? updateTicket,
    TResult Function(int id, TicketReplyRequest request)? addReplyToTicket,
    TResult Function()? getTicketStats,
    TResult Function(int id)? deleteTicket,
    TResult Function()? clearError,
    required TResult orElse(),
  }) {
    if (updateTicket != null) {
      return updateTicket(id, request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTicketsEvent value) getTickets,
    required TResult Function(GetTicketByIdEvent value) getTicketById,
    required TResult Function(CreateTicketEvent value) createTicket,
    required TResult Function(UpdateTicketEvent value) updateTicket,
    required TResult Function(AddReplyToTicketEvent value) addReplyToTicket,
    required TResult Function(GetTicketStatsEvent value) getTicketStats,
    required TResult Function(DeleteTicketEvent value) deleteTicket,
    required TResult Function(ClearErrorEvent value) clearError,
  }) {
    return updateTicket(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTicketsEvent value)? getTickets,
    TResult? Function(GetTicketByIdEvent value)? getTicketById,
    TResult? Function(CreateTicketEvent value)? createTicket,
    TResult? Function(UpdateTicketEvent value)? updateTicket,
    TResult? Function(AddReplyToTicketEvent value)? addReplyToTicket,
    TResult? Function(GetTicketStatsEvent value)? getTicketStats,
    TResult? Function(DeleteTicketEvent value)? deleteTicket,
    TResult? Function(ClearErrorEvent value)? clearError,
  }) {
    return updateTicket?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTicketsEvent value)? getTickets,
    TResult Function(GetTicketByIdEvent value)? getTicketById,
    TResult Function(CreateTicketEvent value)? createTicket,
    TResult Function(UpdateTicketEvent value)? updateTicket,
    TResult Function(AddReplyToTicketEvent value)? addReplyToTicket,
    TResult Function(GetTicketStatsEvent value)? getTicketStats,
    TResult Function(DeleteTicketEvent value)? deleteTicket,
    TResult Function(ClearErrorEvent value)? clearError,
    required TResult orElse(),
  }) {
    if (updateTicket != null) {
      return updateTicket(this);
    }
    return orElse();
  }
}

abstract class UpdateTicketEvent implements TicketEvent {
  const factory UpdateTicketEvent({
    required final int id,
    required final TicketUpdateRequest request,
  }) = _$UpdateTicketEventImpl;

  int get id;
  TicketUpdateRequest get request;

  /// Create a copy of TicketEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateTicketEventImplCopyWith<_$UpdateTicketEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddReplyToTicketEventImplCopyWith<$Res> {
  factory _$$AddReplyToTicketEventImplCopyWith(
    _$AddReplyToTicketEventImpl value,
    $Res Function(_$AddReplyToTicketEventImpl) then,
  ) = __$$AddReplyToTicketEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id, TicketReplyRequest request});

  $TicketReplyRequestCopyWith<$Res> get request;
}

/// @nodoc
class __$$AddReplyToTicketEventImplCopyWithImpl<$Res>
    extends _$TicketEventCopyWithImpl<$Res, _$AddReplyToTicketEventImpl>
    implements _$$AddReplyToTicketEventImplCopyWith<$Res> {
  __$$AddReplyToTicketEventImplCopyWithImpl(
    _$AddReplyToTicketEventImpl _value,
    $Res Function(_$AddReplyToTicketEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TicketEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? request = null}) {
    return _then(
      _$AddReplyToTicketEventImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        request: null == request
            ? _value.request
            : request // ignore: cast_nullable_to_non_nullable
                  as TicketReplyRequest,
      ),
    );
  }

  /// Create a copy of TicketEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TicketReplyRequestCopyWith<$Res> get request {
    return $TicketReplyRequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$AddReplyToTicketEventImpl implements AddReplyToTicketEvent {
  const _$AddReplyToTicketEventImpl({required this.id, required this.request});

  @override
  final int id;
  @override
  final TicketReplyRequest request;

  @override
  String toString() {
    return 'TicketEvent.addReplyToTicket(id: $id, request: $request)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddReplyToTicketEventImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, request);

  /// Create a copy of TicketEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddReplyToTicketEventImplCopyWith<_$AddReplyToTicketEventImpl>
  get copyWith =>
      __$$AddReplyToTicketEventImplCopyWithImpl<_$AddReplyToTicketEventImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      String? category,
      String? status,
      String? priority,
      String? search,
      String? sortBy,
      String? sortOrder,
      int? page,
      int? limit,
    )
    getTickets,
    required TResult Function(int id) getTicketById,
    required TResult Function(
      String title,
      String description,
      String priority,
      int userId,
      List<TicketAttachmentEntity>? attachments,
    )
    createTicket,
    required TResult Function(int id, TicketUpdateRequest request) updateTicket,
    required TResult Function(int id, TicketReplyRequest request)
    addReplyToTicket,
    required TResult Function() getTicketStats,
    required TResult Function(int id) deleteTicket,
    required TResult Function() clearError,
  }) {
    return addReplyToTicket(id, request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      String? category,
      String? status,
      String? priority,
      String? search,
      String? sortBy,
      String? sortOrder,
      int? page,
      int? limit,
    )?
    getTickets,
    TResult? Function(int id)? getTicketById,
    TResult? Function(
      String title,
      String description,
      String priority,
      int userId,
      List<TicketAttachmentEntity>? attachments,
    )?
    createTicket,
    TResult? Function(int id, TicketUpdateRequest request)? updateTicket,
    TResult? Function(int id, TicketReplyRequest request)? addReplyToTicket,
    TResult? Function()? getTicketStats,
    TResult? Function(int id)? deleteTicket,
    TResult? Function()? clearError,
  }) {
    return addReplyToTicket?.call(id, request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      String? category,
      String? status,
      String? priority,
      String? search,
      String? sortBy,
      String? sortOrder,
      int? page,
      int? limit,
    )?
    getTickets,
    TResult Function(int id)? getTicketById,
    TResult Function(
      String title,
      String description,
      String priority,
      int userId,
      List<TicketAttachmentEntity>? attachments,
    )?
    createTicket,
    TResult Function(int id, TicketUpdateRequest request)? updateTicket,
    TResult Function(int id, TicketReplyRequest request)? addReplyToTicket,
    TResult Function()? getTicketStats,
    TResult Function(int id)? deleteTicket,
    TResult Function()? clearError,
    required TResult orElse(),
  }) {
    if (addReplyToTicket != null) {
      return addReplyToTicket(id, request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTicketsEvent value) getTickets,
    required TResult Function(GetTicketByIdEvent value) getTicketById,
    required TResult Function(CreateTicketEvent value) createTicket,
    required TResult Function(UpdateTicketEvent value) updateTicket,
    required TResult Function(AddReplyToTicketEvent value) addReplyToTicket,
    required TResult Function(GetTicketStatsEvent value) getTicketStats,
    required TResult Function(DeleteTicketEvent value) deleteTicket,
    required TResult Function(ClearErrorEvent value) clearError,
  }) {
    return addReplyToTicket(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTicketsEvent value)? getTickets,
    TResult? Function(GetTicketByIdEvent value)? getTicketById,
    TResult? Function(CreateTicketEvent value)? createTicket,
    TResult? Function(UpdateTicketEvent value)? updateTicket,
    TResult? Function(AddReplyToTicketEvent value)? addReplyToTicket,
    TResult? Function(GetTicketStatsEvent value)? getTicketStats,
    TResult? Function(DeleteTicketEvent value)? deleteTicket,
    TResult? Function(ClearErrorEvent value)? clearError,
  }) {
    return addReplyToTicket?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTicketsEvent value)? getTickets,
    TResult Function(GetTicketByIdEvent value)? getTicketById,
    TResult Function(CreateTicketEvent value)? createTicket,
    TResult Function(UpdateTicketEvent value)? updateTicket,
    TResult Function(AddReplyToTicketEvent value)? addReplyToTicket,
    TResult Function(GetTicketStatsEvent value)? getTicketStats,
    TResult Function(DeleteTicketEvent value)? deleteTicket,
    TResult Function(ClearErrorEvent value)? clearError,
    required TResult orElse(),
  }) {
    if (addReplyToTicket != null) {
      return addReplyToTicket(this);
    }
    return orElse();
  }
}

abstract class AddReplyToTicketEvent implements TicketEvent {
  const factory AddReplyToTicketEvent({
    required final int id,
    required final TicketReplyRequest request,
  }) = _$AddReplyToTicketEventImpl;

  int get id;
  TicketReplyRequest get request;

  /// Create a copy of TicketEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddReplyToTicketEventImplCopyWith<_$AddReplyToTicketEventImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetTicketStatsEventImplCopyWith<$Res> {
  factory _$$GetTicketStatsEventImplCopyWith(
    _$GetTicketStatsEventImpl value,
    $Res Function(_$GetTicketStatsEventImpl) then,
  ) = __$$GetTicketStatsEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetTicketStatsEventImplCopyWithImpl<$Res>
    extends _$TicketEventCopyWithImpl<$Res, _$GetTicketStatsEventImpl>
    implements _$$GetTicketStatsEventImplCopyWith<$Res> {
  __$$GetTicketStatsEventImplCopyWithImpl(
    _$GetTicketStatsEventImpl _value,
    $Res Function(_$GetTicketStatsEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TicketEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetTicketStatsEventImpl implements GetTicketStatsEvent {
  const _$GetTicketStatsEventImpl();

  @override
  String toString() {
    return 'TicketEvent.getTicketStats()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTicketStatsEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      String? category,
      String? status,
      String? priority,
      String? search,
      String? sortBy,
      String? sortOrder,
      int? page,
      int? limit,
    )
    getTickets,
    required TResult Function(int id) getTicketById,
    required TResult Function(
      String title,
      String description,
      String priority,
      int userId,
      List<TicketAttachmentEntity>? attachments,
    )
    createTicket,
    required TResult Function(int id, TicketUpdateRequest request) updateTicket,
    required TResult Function(int id, TicketReplyRequest request)
    addReplyToTicket,
    required TResult Function() getTicketStats,
    required TResult Function(int id) deleteTicket,
    required TResult Function() clearError,
  }) {
    return getTicketStats();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      String? category,
      String? status,
      String? priority,
      String? search,
      String? sortBy,
      String? sortOrder,
      int? page,
      int? limit,
    )?
    getTickets,
    TResult? Function(int id)? getTicketById,
    TResult? Function(
      String title,
      String description,
      String priority,
      int userId,
      List<TicketAttachmentEntity>? attachments,
    )?
    createTicket,
    TResult? Function(int id, TicketUpdateRequest request)? updateTicket,
    TResult? Function(int id, TicketReplyRequest request)? addReplyToTicket,
    TResult? Function()? getTicketStats,
    TResult? Function(int id)? deleteTicket,
    TResult? Function()? clearError,
  }) {
    return getTicketStats?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      String? category,
      String? status,
      String? priority,
      String? search,
      String? sortBy,
      String? sortOrder,
      int? page,
      int? limit,
    )?
    getTickets,
    TResult Function(int id)? getTicketById,
    TResult Function(
      String title,
      String description,
      String priority,
      int userId,
      List<TicketAttachmentEntity>? attachments,
    )?
    createTicket,
    TResult Function(int id, TicketUpdateRequest request)? updateTicket,
    TResult Function(int id, TicketReplyRequest request)? addReplyToTicket,
    TResult Function()? getTicketStats,
    TResult Function(int id)? deleteTicket,
    TResult Function()? clearError,
    required TResult orElse(),
  }) {
    if (getTicketStats != null) {
      return getTicketStats();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTicketsEvent value) getTickets,
    required TResult Function(GetTicketByIdEvent value) getTicketById,
    required TResult Function(CreateTicketEvent value) createTicket,
    required TResult Function(UpdateTicketEvent value) updateTicket,
    required TResult Function(AddReplyToTicketEvent value) addReplyToTicket,
    required TResult Function(GetTicketStatsEvent value) getTicketStats,
    required TResult Function(DeleteTicketEvent value) deleteTicket,
    required TResult Function(ClearErrorEvent value) clearError,
  }) {
    return getTicketStats(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTicketsEvent value)? getTickets,
    TResult? Function(GetTicketByIdEvent value)? getTicketById,
    TResult? Function(CreateTicketEvent value)? createTicket,
    TResult? Function(UpdateTicketEvent value)? updateTicket,
    TResult? Function(AddReplyToTicketEvent value)? addReplyToTicket,
    TResult? Function(GetTicketStatsEvent value)? getTicketStats,
    TResult? Function(DeleteTicketEvent value)? deleteTicket,
    TResult? Function(ClearErrorEvent value)? clearError,
  }) {
    return getTicketStats?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTicketsEvent value)? getTickets,
    TResult Function(GetTicketByIdEvent value)? getTicketById,
    TResult Function(CreateTicketEvent value)? createTicket,
    TResult Function(UpdateTicketEvent value)? updateTicket,
    TResult Function(AddReplyToTicketEvent value)? addReplyToTicket,
    TResult Function(GetTicketStatsEvent value)? getTicketStats,
    TResult Function(DeleteTicketEvent value)? deleteTicket,
    TResult Function(ClearErrorEvent value)? clearError,
    required TResult orElse(),
  }) {
    if (getTicketStats != null) {
      return getTicketStats(this);
    }
    return orElse();
  }
}

abstract class GetTicketStatsEvent implements TicketEvent {
  const factory GetTicketStatsEvent() = _$GetTicketStatsEventImpl;
}

/// @nodoc
abstract class _$$DeleteTicketEventImplCopyWith<$Res> {
  factory _$$DeleteTicketEventImplCopyWith(
    _$DeleteTicketEventImpl value,
    $Res Function(_$DeleteTicketEventImpl) then,
  ) = __$$DeleteTicketEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$DeleteTicketEventImplCopyWithImpl<$Res>
    extends _$TicketEventCopyWithImpl<$Res, _$DeleteTicketEventImpl>
    implements _$$DeleteTicketEventImplCopyWith<$Res> {
  __$$DeleteTicketEventImplCopyWithImpl(
    _$DeleteTicketEventImpl _value,
    $Res Function(_$DeleteTicketEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TicketEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null}) {
    return _then(
      _$DeleteTicketEventImpl(
        null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$DeleteTicketEventImpl implements DeleteTicketEvent {
  const _$DeleteTicketEventImpl(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'TicketEvent.deleteTicket(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteTicketEventImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of TicketEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteTicketEventImplCopyWith<_$DeleteTicketEventImpl> get copyWith =>
      __$$DeleteTicketEventImplCopyWithImpl<_$DeleteTicketEventImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      String? category,
      String? status,
      String? priority,
      String? search,
      String? sortBy,
      String? sortOrder,
      int? page,
      int? limit,
    )
    getTickets,
    required TResult Function(int id) getTicketById,
    required TResult Function(
      String title,
      String description,
      String priority,
      int userId,
      List<TicketAttachmentEntity>? attachments,
    )
    createTicket,
    required TResult Function(int id, TicketUpdateRequest request) updateTicket,
    required TResult Function(int id, TicketReplyRequest request)
    addReplyToTicket,
    required TResult Function() getTicketStats,
    required TResult Function(int id) deleteTicket,
    required TResult Function() clearError,
  }) {
    return deleteTicket(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      String? category,
      String? status,
      String? priority,
      String? search,
      String? sortBy,
      String? sortOrder,
      int? page,
      int? limit,
    )?
    getTickets,
    TResult? Function(int id)? getTicketById,
    TResult? Function(
      String title,
      String description,
      String priority,
      int userId,
      List<TicketAttachmentEntity>? attachments,
    )?
    createTicket,
    TResult? Function(int id, TicketUpdateRequest request)? updateTicket,
    TResult? Function(int id, TicketReplyRequest request)? addReplyToTicket,
    TResult? Function()? getTicketStats,
    TResult? Function(int id)? deleteTicket,
    TResult? Function()? clearError,
  }) {
    return deleteTicket?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      String? category,
      String? status,
      String? priority,
      String? search,
      String? sortBy,
      String? sortOrder,
      int? page,
      int? limit,
    )?
    getTickets,
    TResult Function(int id)? getTicketById,
    TResult Function(
      String title,
      String description,
      String priority,
      int userId,
      List<TicketAttachmentEntity>? attachments,
    )?
    createTicket,
    TResult Function(int id, TicketUpdateRequest request)? updateTicket,
    TResult Function(int id, TicketReplyRequest request)? addReplyToTicket,
    TResult Function()? getTicketStats,
    TResult Function(int id)? deleteTicket,
    TResult Function()? clearError,
    required TResult orElse(),
  }) {
    if (deleteTicket != null) {
      return deleteTicket(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTicketsEvent value) getTickets,
    required TResult Function(GetTicketByIdEvent value) getTicketById,
    required TResult Function(CreateTicketEvent value) createTicket,
    required TResult Function(UpdateTicketEvent value) updateTicket,
    required TResult Function(AddReplyToTicketEvent value) addReplyToTicket,
    required TResult Function(GetTicketStatsEvent value) getTicketStats,
    required TResult Function(DeleteTicketEvent value) deleteTicket,
    required TResult Function(ClearErrorEvent value) clearError,
  }) {
    return deleteTicket(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTicketsEvent value)? getTickets,
    TResult? Function(GetTicketByIdEvent value)? getTicketById,
    TResult? Function(CreateTicketEvent value)? createTicket,
    TResult? Function(UpdateTicketEvent value)? updateTicket,
    TResult? Function(AddReplyToTicketEvent value)? addReplyToTicket,
    TResult? Function(GetTicketStatsEvent value)? getTicketStats,
    TResult? Function(DeleteTicketEvent value)? deleteTicket,
    TResult? Function(ClearErrorEvent value)? clearError,
  }) {
    return deleteTicket?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTicketsEvent value)? getTickets,
    TResult Function(GetTicketByIdEvent value)? getTicketById,
    TResult Function(CreateTicketEvent value)? createTicket,
    TResult Function(UpdateTicketEvent value)? updateTicket,
    TResult Function(AddReplyToTicketEvent value)? addReplyToTicket,
    TResult Function(GetTicketStatsEvent value)? getTicketStats,
    TResult Function(DeleteTicketEvent value)? deleteTicket,
    TResult Function(ClearErrorEvent value)? clearError,
    required TResult orElse(),
  }) {
    if (deleteTicket != null) {
      return deleteTicket(this);
    }
    return orElse();
  }
}

abstract class DeleteTicketEvent implements TicketEvent {
  const factory DeleteTicketEvent(final int id) = _$DeleteTicketEventImpl;

  int get id;

  /// Create a copy of TicketEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteTicketEventImplCopyWith<_$DeleteTicketEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearErrorEventImplCopyWith<$Res> {
  factory _$$ClearErrorEventImplCopyWith(
    _$ClearErrorEventImpl value,
    $Res Function(_$ClearErrorEventImpl) then,
  ) = __$$ClearErrorEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearErrorEventImplCopyWithImpl<$Res>
    extends _$TicketEventCopyWithImpl<$Res, _$ClearErrorEventImpl>
    implements _$$ClearErrorEventImplCopyWith<$Res> {
  __$$ClearErrorEventImplCopyWithImpl(
    _$ClearErrorEventImpl _value,
    $Res Function(_$ClearErrorEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TicketEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearErrorEventImpl implements ClearErrorEvent {
  const _$ClearErrorEventImpl();

  @override
  String toString() {
    return 'TicketEvent.clearError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearErrorEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      String? category,
      String? status,
      String? priority,
      String? search,
      String? sortBy,
      String? sortOrder,
      int? page,
      int? limit,
    )
    getTickets,
    required TResult Function(int id) getTicketById,
    required TResult Function(
      String title,
      String description,
      String priority,
      int userId,
      List<TicketAttachmentEntity>? attachments,
    )
    createTicket,
    required TResult Function(int id, TicketUpdateRequest request) updateTicket,
    required TResult Function(int id, TicketReplyRequest request)
    addReplyToTicket,
    required TResult Function() getTicketStats,
    required TResult Function(int id) deleteTicket,
    required TResult Function() clearError,
  }) {
    return clearError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      String? category,
      String? status,
      String? priority,
      String? search,
      String? sortBy,
      String? sortOrder,
      int? page,
      int? limit,
    )?
    getTickets,
    TResult? Function(int id)? getTicketById,
    TResult? Function(
      String title,
      String description,
      String priority,
      int userId,
      List<TicketAttachmentEntity>? attachments,
    )?
    createTicket,
    TResult? Function(int id, TicketUpdateRequest request)? updateTicket,
    TResult? Function(int id, TicketReplyRequest request)? addReplyToTicket,
    TResult? Function()? getTicketStats,
    TResult? Function(int id)? deleteTicket,
    TResult? Function()? clearError,
  }) {
    return clearError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      String? category,
      String? status,
      String? priority,
      String? search,
      String? sortBy,
      String? sortOrder,
      int? page,
      int? limit,
    )?
    getTickets,
    TResult Function(int id)? getTicketById,
    TResult Function(
      String title,
      String description,
      String priority,
      int userId,
      List<TicketAttachmentEntity>? attachments,
    )?
    createTicket,
    TResult Function(int id, TicketUpdateRequest request)? updateTicket,
    TResult Function(int id, TicketReplyRequest request)? addReplyToTicket,
    TResult Function()? getTicketStats,
    TResult Function(int id)? deleteTicket,
    TResult Function()? clearError,
    required TResult orElse(),
  }) {
    if (clearError != null) {
      return clearError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTicketsEvent value) getTickets,
    required TResult Function(GetTicketByIdEvent value) getTicketById,
    required TResult Function(CreateTicketEvent value) createTicket,
    required TResult Function(UpdateTicketEvent value) updateTicket,
    required TResult Function(AddReplyToTicketEvent value) addReplyToTicket,
    required TResult Function(GetTicketStatsEvent value) getTicketStats,
    required TResult Function(DeleteTicketEvent value) deleteTicket,
    required TResult Function(ClearErrorEvent value) clearError,
  }) {
    return clearError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTicketsEvent value)? getTickets,
    TResult? Function(GetTicketByIdEvent value)? getTicketById,
    TResult? Function(CreateTicketEvent value)? createTicket,
    TResult? Function(UpdateTicketEvent value)? updateTicket,
    TResult? Function(AddReplyToTicketEvent value)? addReplyToTicket,
    TResult? Function(GetTicketStatsEvent value)? getTicketStats,
    TResult? Function(DeleteTicketEvent value)? deleteTicket,
    TResult? Function(ClearErrorEvent value)? clearError,
  }) {
    return clearError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTicketsEvent value)? getTickets,
    TResult Function(GetTicketByIdEvent value)? getTicketById,
    TResult Function(CreateTicketEvent value)? createTicket,
    TResult Function(UpdateTicketEvent value)? updateTicket,
    TResult Function(AddReplyToTicketEvent value)? addReplyToTicket,
    TResult Function(GetTicketStatsEvent value)? getTicketStats,
    TResult Function(DeleteTicketEvent value)? deleteTicket,
    TResult Function(ClearErrorEvent value)? clearError,
    required TResult orElse(),
  }) {
    if (clearError != null) {
      return clearError(this);
    }
    return orElse();
  }
}

abstract class ClearErrorEvent implements TicketEvent {
  const factory ClearErrorEvent() = _$ClearErrorEventImpl;
}
