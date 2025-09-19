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
    required TResult Function(
      int id,
      String status,
      int? assignedTo,
      String? adminNotes,
    )
    updateTicketStatus,
    required TResult Function(int id, String text, String? image, String from)
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
    TResult? Function(
      int id,
      String status,
      int? assignedTo,
      String? adminNotes,
    )?
    updateTicketStatus,
    TResult? Function(int id, String text, String? image, String from)?
    addReplyToTicket,
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
    TResult Function(
      int id,
      String status,
      int? assignedTo,
      String? adminNotes,
    )?
    updateTicketStatus,
    TResult Function(int id, String text, String? image, String from)?
    addReplyToTicket,
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
    required TResult Function(UpdateTicketStatusEvent value) updateTicketStatus,
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
    TResult? Function(UpdateTicketStatusEvent value)? updateTicketStatus,
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
    TResult Function(UpdateTicketStatusEvent value)? updateTicketStatus,
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
  final int? page;
  @override
  final int? limit;

  @override
  String toString() {
    return 'TicketEvent.getTickets(category: $category, status: $status, priority: $priority, page: $page, limit: $limit)';
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
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, category, status, priority, page, limit);

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
    required TResult Function(
      int id,
      String status,
      int? assignedTo,
      String? adminNotes,
    )
    updateTicketStatus,
    required TResult Function(int id, String text, String? image, String from)
    addReplyToTicket,
    required TResult Function() getTicketStats,
    required TResult Function(int id) deleteTicket,
    required TResult Function() clearError,
  }) {
    return getTickets(category, status, priority, page, limit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      String? category,
      String? status,
      String? priority,
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
    TResult? Function(
      int id,
      String status,
      int? assignedTo,
      String? adminNotes,
    )?
    updateTicketStatus,
    TResult? Function(int id, String text, String? image, String from)?
    addReplyToTicket,
    TResult? Function()? getTicketStats,
    TResult? Function(int id)? deleteTicket,
    TResult? Function()? clearError,
  }) {
    return getTickets?.call(category, status, priority, page, limit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      String? category,
      String? status,
      String? priority,
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
    TResult Function(
      int id,
      String status,
      int? assignedTo,
      String? adminNotes,
    )?
    updateTicketStatus,
    TResult Function(int id, String text, String? image, String from)?
    addReplyToTicket,
    TResult Function()? getTicketStats,
    TResult Function(int id)? deleteTicket,
    TResult Function()? clearError,
    required TResult orElse(),
  }) {
    if (getTickets != null) {
      return getTickets(category, status, priority, page, limit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTicketsEvent value) getTickets,
    required TResult Function(GetTicketByIdEvent value) getTicketById,
    required TResult Function(CreateTicketEvent value) createTicket,
    required TResult Function(UpdateTicketStatusEvent value) updateTicketStatus,
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
    TResult? Function(UpdateTicketStatusEvent value)? updateTicketStatus,
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
    TResult Function(UpdateTicketStatusEvent value)? updateTicketStatus,
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
    final int? page,
    final int? limit,
  }) = _$GetTicketsEventImpl;

  String? get category;
  String? get status;
  String? get priority;
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
    required TResult Function(
      int id,
      String status,
      int? assignedTo,
      String? adminNotes,
    )
    updateTicketStatus,
    required TResult Function(int id, String text, String? image, String from)
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
    TResult? Function(
      int id,
      String status,
      int? assignedTo,
      String? adminNotes,
    )?
    updateTicketStatus,
    TResult? Function(int id, String text, String? image, String from)?
    addReplyToTicket,
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
    TResult Function(
      int id,
      String status,
      int? assignedTo,
      String? adminNotes,
    )?
    updateTicketStatus,
    TResult Function(int id, String text, String? image, String from)?
    addReplyToTicket,
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
    required TResult Function(UpdateTicketStatusEvent value) updateTicketStatus,
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
    TResult? Function(UpdateTicketStatusEvent value)? updateTicketStatus,
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
    TResult Function(UpdateTicketStatusEvent value)? updateTicketStatus,
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
    required TResult Function(
      int id,
      String status,
      int? assignedTo,
      String? adminNotes,
    )
    updateTicketStatus,
    required TResult Function(int id, String text, String? image, String from)
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
    TResult? Function(
      int id,
      String status,
      int? assignedTo,
      String? adminNotes,
    )?
    updateTicketStatus,
    TResult? Function(int id, String text, String? image, String from)?
    addReplyToTicket,
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
    TResult Function(
      int id,
      String status,
      int? assignedTo,
      String? adminNotes,
    )?
    updateTicketStatus,
    TResult Function(int id, String text, String? image, String from)?
    addReplyToTicket,
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
    required TResult Function(UpdateTicketStatusEvent value) updateTicketStatus,
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
    TResult? Function(UpdateTicketStatusEvent value)? updateTicketStatus,
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
    TResult Function(UpdateTicketStatusEvent value)? updateTicketStatus,
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
abstract class _$$UpdateTicketStatusEventImplCopyWith<$Res> {
  factory _$$UpdateTicketStatusEventImplCopyWith(
    _$UpdateTicketStatusEventImpl value,
    $Res Function(_$UpdateTicketStatusEventImpl) then,
  ) = __$$UpdateTicketStatusEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id, String status, int? assignedTo, String? adminNotes});
}

/// @nodoc
class __$$UpdateTicketStatusEventImplCopyWithImpl<$Res>
    extends _$TicketEventCopyWithImpl<$Res, _$UpdateTicketStatusEventImpl>
    implements _$$UpdateTicketStatusEventImplCopyWith<$Res> {
  __$$UpdateTicketStatusEventImplCopyWithImpl(
    _$UpdateTicketStatusEventImpl _value,
    $Res Function(_$UpdateTicketStatusEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TicketEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? assignedTo = freezed,
    Object? adminNotes = freezed,
  }) {
    return _then(
      _$UpdateTicketStatusEventImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
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

class _$UpdateTicketStatusEventImpl implements UpdateTicketStatusEvent {
  const _$UpdateTicketStatusEventImpl({
    required this.id,
    required this.status,
    this.assignedTo,
    this.adminNotes,
  });

  @override
  final int id;
  @override
  final String status;
  @override
  final int? assignedTo;
  @override
  final String? adminNotes;

  @override
  String toString() {
    return 'TicketEvent.updateTicketStatus(id: $id, status: $status, assignedTo: $assignedTo, adminNotes: $adminNotes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTicketStatusEventImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.assignedTo, assignedTo) ||
                other.assignedTo == assignedTo) &&
            (identical(other.adminNotes, adminNotes) ||
                other.adminNotes == adminNotes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, status, assignedTo, adminNotes);

  /// Create a copy of TicketEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTicketStatusEventImplCopyWith<_$UpdateTicketStatusEventImpl>
  get copyWith =>
      __$$UpdateTicketStatusEventImplCopyWithImpl<
        _$UpdateTicketStatusEventImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      String? category,
      String? status,
      String? priority,
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
    required TResult Function(
      int id,
      String status,
      int? assignedTo,
      String? adminNotes,
    )
    updateTicketStatus,
    required TResult Function(int id, String text, String? image, String from)
    addReplyToTicket,
    required TResult Function() getTicketStats,
    required TResult Function(int id) deleteTicket,
    required TResult Function() clearError,
  }) {
    return updateTicketStatus(id, status, assignedTo, adminNotes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      String? category,
      String? status,
      String? priority,
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
    TResult? Function(
      int id,
      String status,
      int? assignedTo,
      String? adminNotes,
    )?
    updateTicketStatus,
    TResult? Function(int id, String text, String? image, String from)?
    addReplyToTicket,
    TResult? Function()? getTicketStats,
    TResult? Function(int id)? deleteTicket,
    TResult? Function()? clearError,
  }) {
    return updateTicketStatus?.call(id, status, assignedTo, adminNotes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      String? category,
      String? status,
      String? priority,
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
    TResult Function(
      int id,
      String status,
      int? assignedTo,
      String? adminNotes,
    )?
    updateTicketStatus,
    TResult Function(int id, String text, String? image, String from)?
    addReplyToTicket,
    TResult Function()? getTicketStats,
    TResult Function(int id)? deleteTicket,
    TResult Function()? clearError,
    required TResult orElse(),
  }) {
    if (updateTicketStatus != null) {
      return updateTicketStatus(id, status, assignedTo, adminNotes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTicketsEvent value) getTickets,
    required TResult Function(GetTicketByIdEvent value) getTicketById,
    required TResult Function(CreateTicketEvent value) createTicket,
    required TResult Function(UpdateTicketStatusEvent value) updateTicketStatus,
    required TResult Function(AddReplyToTicketEvent value) addReplyToTicket,
    required TResult Function(GetTicketStatsEvent value) getTicketStats,
    required TResult Function(DeleteTicketEvent value) deleteTicket,
    required TResult Function(ClearErrorEvent value) clearError,
  }) {
    return updateTicketStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTicketsEvent value)? getTickets,
    TResult? Function(GetTicketByIdEvent value)? getTicketById,
    TResult? Function(CreateTicketEvent value)? createTicket,
    TResult? Function(UpdateTicketStatusEvent value)? updateTicketStatus,
    TResult? Function(AddReplyToTicketEvent value)? addReplyToTicket,
    TResult? Function(GetTicketStatsEvent value)? getTicketStats,
    TResult? Function(DeleteTicketEvent value)? deleteTicket,
    TResult? Function(ClearErrorEvent value)? clearError,
  }) {
    return updateTicketStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTicketsEvent value)? getTickets,
    TResult Function(GetTicketByIdEvent value)? getTicketById,
    TResult Function(CreateTicketEvent value)? createTicket,
    TResult Function(UpdateTicketStatusEvent value)? updateTicketStatus,
    TResult Function(AddReplyToTicketEvent value)? addReplyToTicket,
    TResult Function(GetTicketStatsEvent value)? getTicketStats,
    TResult Function(DeleteTicketEvent value)? deleteTicket,
    TResult Function(ClearErrorEvent value)? clearError,
    required TResult orElse(),
  }) {
    if (updateTicketStatus != null) {
      return updateTicketStatus(this);
    }
    return orElse();
  }
}

abstract class UpdateTicketStatusEvent implements TicketEvent {
  const factory UpdateTicketStatusEvent({
    required final int id,
    required final String status,
    final int? assignedTo,
    final String? adminNotes,
  }) = _$UpdateTicketStatusEventImpl;

  int get id;
  String get status;
  int? get assignedTo;
  String? get adminNotes;

  /// Create a copy of TicketEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateTicketStatusEventImplCopyWith<_$UpdateTicketStatusEventImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddReplyToTicketEventImplCopyWith<$Res> {
  factory _$$AddReplyToTicketEventImplCopyWith(
    _$AddReplyToTicketEventImpl value,
    $Res Function(_$AddReplyToTicketEventImpl) then,
  ) = __$$AddReplyToTicketEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id, String text, String? image, String from});
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
  $Res call({
    Object? id = null,
    Object? text = null,
    Object? image = freezed,
    Object? from = null,
  }) {
    return _then(
      _$AddReplyToTicketEventImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
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

class _$AddReplyToTicketEventImpl implements AddReplyToTicketEvent {
  const _$AddReplyToTicketEventImpl({
    required this.id,
    required this.text,
    this.image,
    required this.from,
  });

  @override
  final int id;
  @override
  final String text;
  @override
  final String? image;
  @override
  final String from;

  @override
  String toString() {
    return 'TicketEvent.addReplyToTicket(id: $id, text: $text, image: $image, from: $from)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddReplyToTicketEventImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.from, from) || other.from == from));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, text, image, from);

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
    required TResult Function(
      int id,
      String status,
      int? assignedTo,
      String? adminNotes,
    )
    updateTicketStatus,
    required TResult Function(int id, String text, String? image, String from)
    addReplyToTicket,
    required TResult Function() getTicketStats,
    required TResult Function(int id) deleteTicket,
    required TResult Function() clearError,
  }) {
    return addReplyToTicket(id, text, image, from);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      String? category,
      String? status,
      String? priority,
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
    TResult? Function(
      int id,
      String status,
      int? assignedTo,
      String? adminNotes,
    )?
    updateTicketStatus,
    TResult? Function(int id, String text, String? image, String from)?
    addReplyToTicket,
    TResult? Function()? getTicketStats,
    TResult? Function(int id)? deleteTicket,
    TResult? Function()? clearError,
  }) {
    return addReplyToTicket?.call(id, text, image, from);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      String? category,
      String? status,
      String? priority,
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
    TResult Function(
      int id,
      String status,
      int? assignedTo,
      String? adminNotes,
    )?
    updateTicketStatus,
    TResult Function(int id, String text, String? image, String from)?
    addReplyToTicket,
    TResult Function()? getTicketStats,
    TResult Function(int id)? deleteTicket,
    TResult Function()? clearError,
    required TResult orElse(),
  }) {
    if (addReplyToTicket != null) {
      return addReplyToTicket(id, text, image, from);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTicketsEvent value) getTickets,
    required TResult Function(GetTicketByIdEvent value) getTicketById,
    required TResult Function(CreateTicketEvent value) createTicket,
    required TResult Function(UpdateTicketStatusEvent value) updateTicketStatus,
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
    TResult? Function(UpdateTicketStatusEvent value)? updateTicketStatus,
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
    TResult Function(UpdateTicketStatusEvent value)? updateTicketStatus,
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
    required final String text,
    final String? image,
    required final String from,
  }) = _$AddReplyToTicketEventImpl;

  int get id;
  String get text;
  String? get image;
  String get from;

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
    required TResult Function(
      int id,
      String status,
      int? assignedTo,
      String? adminNotes,
    )
    updateTicketStatus,
    required TResult Function(int id, String text, String? image, String from)
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
    TResult? Function(
      int id,
      String status,
      int? assignedTo,
      String? adminNotes,
    )?
    updateTicketStatus,
    TResult? Function(int id, String text, String? image, String from)?
    addReplyToTicket,
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
    TResult Function(
      int id,
      String status,
      int? assignedTo,
      String? adminNotes,
    )?
    updateTicketStatus,
    TResult Function(int id, String text, String? image, String from)?
    addReplyToTicket,
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
    required TResult Function(UpdateTicketStatusEvent value) updateTicketStatus,
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
    TResult? Function(UpdateTicketStatusEvent value)? updateTicketStatus,
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
    TResult Function(UpdateTicketStatusEvent value)? updateTicketStatus,
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
    required TResult Function(
      int id,
      String status,
      int? assignedTo,
      String? adminNotes,
    )
    updateTicketStatus,
    required TResult Function(int id, String text, String? image, String from)
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
    TResult? Function(
      int id,
      String status,
      int? assignedTo,
      String? adminNotes,
    )?
    updateTicketStatus,
    TResult? Function(int id, String text, String? image, String from)?
    addReplyToTicket,
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
    TResult Function(
      int id,
      String status,
      int? assignedTo,
      String? adminNotes,
    )?
    updateTicketStatus,
    TResult Function(int id, String text, String? image, String from)?
    addReplyToTicket,
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
    required TResult Function(UpdateTicketStatusEvent value) updateTicketStatus,
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
    TResult? Function(UpdateTicketStatusEvent value)? updateTicketStatus,
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
    TResult Function(UpdateTicketStatusEvent value)? updateTicketStatus,
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
    required TResult Function(
      int id,
      String status,
      int? assignedTo,
      String? adminNotes,
    )
    updateTicketStatus,
    required TResult Function(int id, String text, String? image, String from)
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
    TResult? Function(
      int id,
      String status,
      int? assignedTo,
      String? adminNotes,
    )?
    updateTicketStatus,
    TResult? Function(int id, String text, String? image, String from)?
    addReplyToTicket,
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
    TResult Function(
      int id,
      String status,
      int? assignedTo,
      String? adminNotes,
    )?
    updateTicketStatus,
    TResult Function(int id, String text, String? image, String from)?
    addReplyToTicket,
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
    required TResult Function(UpdateTicketStatusEvent value) updateTicketStatus,
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
    TResult? Function(UpdateTicketStatusEvent value)? updateTicketStatus,
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
    TResult Function(UpdateTicketStatusEvent value)? updateTicketStatus,
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
