// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$TicketState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      TicketListEntity tickets,
      TicketStatsEntity? stats,
    )
    loaded,
    required TResult Function(TicketEntity ticket) ticketDetailLoaded,
    required TResult Function(TicketEntity ticket) ticketCreated,
    required TResult Function(TicketEntity ticket) ticketUpdated,
    required TResult Function() ticketDeleted,
    required TResult Function(TicketStatsEntity stats) statsLoaded,
    required TResult Function(Failure failure) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(TicketListEntity tickets, TicketStatsEntity? stats)?
    loaded,
    TResult? Function(TicketEntity ticket)? ticketDetailLoaded,
    TResult? Function(TicketEntity ticket)? ticketCreated,
    TResult? Function(TicketEntity ticket)? ticketUpdated,
    TResult? Function()? ticketDeleted,
    TResult? Function(TicketStatsEntity stats)? statsLoaded,
    TResult? Function(Failure failure)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TicketListEntity tickets, TicketStatsEntity? stats)?
    loaded,
    TResult Function(TicketEntity ticket)? ticketDetailLoaded,
    TResult Function(TicketEntity ticket)? ticketCreated,
    TResult Function(TicketEntity ticket)? ticketUpdated,
    TResult Function()? ticketDeleted,
    TResult Function(TicketStatsEntity stats)? statsLoaded,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TicketInitialState value) initial,
    required TResult Function(TicketLoadingState value) loading,
    required TResult Function(TicketLoadedState value) loaded,
    required TResult Function(TicketDetailLoadedState value) ticketDetailLoaded,
    required TResult Function(TicketCreatedState value) ticketCreated,
    required TResult Function(TicketUpdatedState value) ticketUpdated,
    required TResult Function(TicketDeletedState value) ticketDeleted,
    required TResult Function(TicketStatsLoadedState value) statsLoaded,
    required TResult Function(TicketErrorState value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TicketInitialState value)? initial,
    TResult? Function(TicketLoadingState value)? loading,
    TResult? Function(TicketLoadedState value)? loaded,
    TResult? Function(TicketDetailLoadedState value)? ticketDetailLoaded,
    TResult? Function(TicketCreatedState value)? ticketCreated,
    TResult? Function(TicketUpdatedState value)? ticketUpdated,
    TResult? Function(TicketDeletedState value)? ticketDeleted,
    TResult? Function(TicketStatsLoadedState value)? statsLoaded,
    TResult? Function(TicketErrorState value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TicketInitialState value)? initial,
    TResult Function(TicketLoadingState value)? loading,
    TResult Function(TicketLoadedState value)? loaded,
    TResult Function(TicketDetailLoadedState value)? ticketDetailLoaded,
    TResult Function(TicketCreatedState value)? ticketCreated,
    TResult Function(TicketUpdatedState value)? ticketUpdated,
    TResult Function(TicketDeletedState value)? ticketDeleted,
    TResult Function(TicketStatsLoadedState value)? statsLoaded,
    TResult Function(TicketErrorState value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketStateCopyWith<$Res> {
  factory $TicketStateCopyWith(
    TicketState value,
    $Res Function(TicketState) then,
  ) = _$TicketStateCopyWithImpl<$Res, TicketState>;
}

/// @nodoc
class _$TicketStateCopyWithImpl<$Res, $Val extends TicketState>
    implements $TicketStateCopyWith<$Res> {
  _$TicketStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TicketState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$TicketInitialStateImplCopyWith<$Res> {
  factory _$$TicketInitialStateImplCopyWith(
    _$TicketInitialStateImpl value,
    $Res Function(_$TicketInitialStateImpl) then,
  ) = __$$TicketInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TicketInitialStateImplCopyWithImpl<$Res>
    extends _$TicketStateCopyWithImpl<$Res, _$TicketInitialStateImpl>
    implements _$$TicketInitialStateImplCopyWith<$Res> {
  __$$TicketInitialStateImplCopyWithImpl(
    _$TicketInitialStateImpl _value,
    $Res Function(_$TicketInitialStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TicketState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TicketInitialStateImpl implements TicketInitialState {
  const _$TicketInitialStateImpl();

  @override
  String toString() {
    return 'TicketState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TicketInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      TicketListEntity tickets,
      TicketStatsEntity? stats,
    )
    loaded,
    required TResult Function(TicketEntity ticket) ticketDetailLoaded,
    required TResult Function(TicketEntity ticket) ticketCreated,
    required TResult Function(TicketEntity ticket) ticketUpdated,
    required TResult Function() ticketDeleted,
    required TResult Function(TicketStatsEntity stats) statsLoaded,
    required TResult Function(Failure failure) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(TicketListEntity tickets, TicketStatsEntity? stats)?
    loaded,
    TResult? Function(TicketEntity ticket)? ticketDetailLoaded,
    TResult? Function(TicketEntity ticket)? ticketCreated,
    TResult? Function(TicketEntity ticket)? ticketUpdated,
    TResult? Function()? ticketDeleted,
    TResult? Function(TicketStatsEntity stats)? statsLoaded,
    TResult? Function(Failure failure)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TicketListEntity tickets, TicketStatsEntity? stats)?
    loaded,
    TResult Function(TicketEntity ticket)? ticketDetailLoaded,
    TResult Function(TicketEntity ticket)? ticketCreated,
    TResult Function(TicketEntity ticket)? ticketUpdated,
    TResult Function()? ticketDeleted,
    TResult Function(TicketStatsEntity stats)? statsLoaded,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TicketInitialState value) initial,
    required TResult Function(TicketLoadingState value) loading,
    required TResult Function(TicketLoadedState value) loaded,
    required TResult Function(TicketDetailLoadedState value) ticketDetailLoaded,
    required TResult Function(TicketCreatedState value) ticketCreated,
    required TResult Function(TicketUpdatedState value) ticketUpdated,
    required TResult Function(TicketDeletedState value) ticketDeleted,
    required TResult Function(TicketStatsLoadedState value) statsLoaded,
    required TResult Function(TicketErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TicketInitialState value)? initial,
    TResult? Function(TicketLoadingState value)? loading,
    TResult? Function(TicketLoadedState value)? loaded,
    TResult? Function(TicketDetailLoadedState value)? ticketDetailLoaded,
    TResult? Function(TicketCreatedState value)? ticketCreated,
    TResult? Function(TicketUpdatedState value)? ticketUpdated,
    TResult? Function(TicketDeletedState value)? ticketDeleted,
    TResult? Function(TicketStatsLoadedState value)? statsLoaded,
    TResult? Function(TicketErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TicketInitialState value)? initial,
    TResult Function(TicketLoadingState value)? loading,
    TResult Function(TicketLoadedState value)? loaded,
    TResult Function(TicketDetailLoadedState value)? ticketDetailLoaded,
    TResult Function(TicketCreatedState value)? ticketCreated,
    TResult Function(TicketUpdatedState value)? ticketUpdated,
    TResult Function(TicketDeletedState value)? ticketDeleted,
    TResult Function(TicketStatsLoadedState value)? statsLoaded,
    TResult Function(TicketErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class TicketInitialState implements TicketState {
  const factory TicketInitialState() = _$TicketInitialStateImpl;
}

/// @nodoc
abstract class _$$TicketLoadingStateImplCopyWith<$Res> {
  factory _$$TicketLoadingStateImplCopyWith(
    _$TicketLoadingStateImpl value,
    $Res Function(_$TicketLoadingStateImpl) then,
  ) = __$$TicketLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TicketLoadingStateImplCopyWithImpl<$Res>
    extends _$TicketStateCopyWithImpl<$Res, _$TicketLoadingStateImpl>
    implements _$$TicketLoadingStateImplCopyWith<$Res> {
  __$$TicketLoadingStateImplCopyWithImpl(
    _$TicketLoadingStateImpl _value,
    $Res Function(_$TicketLoadingStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TicketState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TicketLoadingStateImpl implements TicketLoadingState {
  const _$TicketLoadingStateImpl();

  @override
  String toString() {
    return 'TicketState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TicketLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      TicketListEntity tickets,
      TicketStatsEntity? stats,
    )
    loaded,
    required TResult Function(TicketEntity ticket) ticketDetailLoaded,
    required TResult Function(TicketEntity ticket) ticketCreated,
    required TResult Function(TicketEntity ticket) ticketUpdated,
    required TResult Function() ticketDeleted,
    required TResult Function(TicketStatsEntity stats) statsLoaded,
    required TResult Function(Failure failure) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(TicketListEntity tickets, TicketStatsEntity? stats)?
    loaded,
    TResult? Function(TicketEntity ticket)? ticketDetailLoaded,
    TResult? Function(TicketEntity ticket)? ticketCreated,
    TResult? Function(TicketEntity ticket)? ticketUpdated,
    TResult? Function()? ticketDeleted,
    TResult? Function(TicketStatsEntity stats)? statsLoaded,
    TResult? Function(Failure failure)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TicketListEntity tickets, TicketStatsEntity? stats)?
    loaded,
    TResult Function(TicketEntity ticket)? ticketDetailLoaded,
    TResult Function(TicketEntity ticket)? ticketCreated,
    TResult Function(TicketEntity ticket)? ticketUpdated,
    TResult Function()? ticketDeleted,
    TResult Function(TicketStatsEntity stats)? statsLoaded,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TicketInitialState value) initial,
    required TResult Function(TicketLoadingState value) loading,
    required TResult Function(TicketLoadedState value) loaded,
    required TResult Function(TicketDetailLoadedState value) ticketDetailLoaded,
    required TResult Function(TicketCreatedState value) ticketCreated,
    required TResult Function(TicketUpdatedState value) ticketUpdated,
    required TResult Function(TicketDeletedState value) ticketDeleted,
    required TResult Function(TicketStatsLoadedState value) statsLoaded,
    required TResult Function(TicketErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TicketInitialState value)? initial,
    TResult? Function(TicketLoadingState value)? loading,
    TResult? Function(TicketLoadedState value)? loaded,
    TResult? Function(TicketDetailLoadedState value)? ticketDetailLoaded,
    TResult? Function(TicketCreatedState value)? ticketCreated,
    TResult? Function(TicketUpdatedState value)? ticketUpdated,
    TResult? Function(TicketDeletedState value)? ticketDeleted,
    TResult? Function(TicketStatsLoadedState value)? statsLoaded,
    TResult? Function(TicketErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TicketInitialState value)? initial,
    TResult Function(TicketLoadingState value)? loading,
    TResult Function(TicketLoadedState value)? loaded,
    TResult Function(TicketDetailLoadedState value)? ticketDetailLoaded,
    TResult Function(TicketCreatedState value)? ticketCreated,
    TResult Function(TicketUpdatedState value)? ticketUpdated,
    TResult Function(TicketDeletedState value)? ticketDeleted,
    TResult Function(TicketStatsLoadedState value)? statsLoaded,
    TResult Function(TicketErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class TicketLoadingState implements TicketState {
  const factory TicketLoadingState() = _$TicketLoadingStateImpl;
}

/// @nodoc
abstract class _$$TicketLoadedStateImplCopyWith<$Res> {
  factory _$$TicketLoadedStateImplCopyWith(
    _$TicketLoadedStateImpl value,
    $Res Function(_$TicketLoadedStateImpl) then,
  ) = __$$TicketLoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TicketListEntity tickets, TicketStatsEntity? stats});

  $TicketListEntityCopyWith<$Res> get tickets;
  $TicketStatsEntityCopyWith<$Res>? get stats;
}

/// @nodoc
class __$$TicketLoadedStateImplCopyWithImpl<$Res>
    extends _$TicketStateCopyWithImpl<$Res, _$TicketLoadedStateImpl>
    implements _$$TicketLoadedStateImplCopyWith<$Res> {
  __$$TicketLoadedStateImplCopyWithImpl(
    _$TicketLoadedStateImpl _value,
    $Res Function(_$TicketLoadedStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TicketState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? tickets = null, Object? stats = freezed}) {
    return _then(
      _$TicketLoadedStateImpl(
        tickets: null == tickets
            ? _value.tickets
            : tickets // ignore: cast_nullable_to_non_nullable
                  as TicketListEntity,
        stats: freezed == stats
            ? _value.stats
            : stats // ignore: cast_nullable_to_non_nullable
                  as TicketStatsEntity?,
      ),
    );
  }

  /// Create a copy of TicketState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TicketListEntityCopyWith<$Res> get tickets {
    return $TicketListEntityCopyWith<$Res>(_value.tickets, (value) {
      return _then(_value.copyWith(tickets: value));
    });
  }

  /// Create a copy of TicketState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TicketStatsEntityCopyWith<$Res>? get stats {
    if (_value.stats == null) {
      return null;
    }

    return $TicketStatsEntityCopyWith<$Res>(_value.stats!, (value) {
      return _then(_value.copyWith(stats: value));
    });
  }
}

/// @nodoc

class _$TicketLoadedStateImpl implements TicketLoadedState {
  const _$TicketLoadedStateImpl({required this.tickets, this.stats});

  @override
  final TicketListEntity tickets;
  @override
  final TicketStatsEntity? stats;

  @override
  String toString() {
    return 'TicketState.loaded(tickets: $tickets, stats: $stats)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketLoadedStateImpl &&
            (identical(other.tickets, tickets) || other.tickets == tickets) &&
            (identical(other.stats, stats) || other.stats == stats));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tickets, stats);

  /// Create a copy of TicketState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketLoadedStateImplCopyWith<_$TicketLoadedStateImpl> get copyWith =>
      __$$TicketLoadedStateImplCopyWithImpl<_$TicketLoadedStateImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      TicketListEntity tickets,
      TicketStatsEntity? stats,
    )
    loaded,
    required TResult Function(TicketEntity ticket) ticketDetailLoaded,
    required TResult Function(TicketEntity ticket) ticketCreated,
    required TResult Function(TicketEntity ticket) ticketUpdated,
    required TResult Function() ticketDeleted,
    required TResult Function(TicketStatsEntity stats) statsLoaded,
    required TResult Function(Failure failure) error,
  }) {
    return loaded(tickets, stats);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(TicketListEntity tickets, TicketStatsEntity? stats)?
    loaded,
    TResult? Function(TicketEntity ticket)? ticketDetailLoaded,
    TResult? Function(TicketEntity ticket)? ticketCreated,
    TResult? Function(TicketEntity ticket)? ticketUpdated,
    TResult? Function()? ticketDeleted,
    TResult? Function(TicketStatsEntity stats)? statsLoaded,
    TResult? Function(Failure failure)? error,
  }) {
    return loaded?.call(tickets, stats);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TicketListEntity tickets, TicketStatsEntity? stats)?
    loaded,
    TResult Function(TicketEntity ticket)? ticketDetailLoaded,
    TResult Function(TicketEntity ticket)? ticketCreated,
    TResult Function(TicketEntity ticket)? ticketUpdated,
    TResult Function()? ticketDeleted,
    TResult Function(TicketStatsEntity stats)? statsLoaded,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(tickets, stats);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TicketInitialState value) initial,
    required TResult Function(TicketLoadingState value) loading,
    required TResult Function(TicketLoadedState value) loaded,
    required TResult Function(TicketDetailLoadedState value) ticketDetailLoaded,
    required TResult Function(TicketCreatedState value) ticketCreated,
    required TResult Function(TicketUpdatedState value) ticketUpdated,
    required TResult Function(TicketDeletedState value) ticketDeleted,
    required TResult Function(TicketStatsLoadedState value) statsLoaded,
    required TResult Function(TicketErrorState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TicketInitialState value)? initial,
    TResult? Function(TicketLoadingState value)? loading,
    TResult? Function(TicketLoadedState value)? loaded,
    TResult? Function(TicketDetailLoadedState value)? ticketDetailLoaded,
    TResult? Function(TicketCreatedState value)? ticketCreated,
    TResult? Function(TicketUpdatedState value)? ticketUpdated,
    TResult? Function(TicketDeletedState value)? ticketDeleted,
    TResult? Function(TicketStatsLoadedState value)? statsLoaded,
    TResult? Function(TicketErrorState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TicketInitialState value)? initial,
    TResult Function(TicketLoadingState value)? loading,
    TResult Function(TicketLoadedState value)? loaded,
    TResult Function(TicketDetailLoadedState value)? ticketDetailLoaded,
    TResult Function(TicketCreatedState value)? ticketCreated,
    TResult Function(TicketUpdatedState value)? ticketUpdated,
    TResult Function(TicketDeletedState value)? ticketDeleted,
    TResult Function(TicketStatsLoadedState value)? statsLoaded,
    TResult Function(TicketErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class TicketLoadedState implements TicketState {
  const factory TicketLoadedState({
    required final TicketListEntity tickets,
    final TicketStatsEntity? stats,
  }) = _$TicketLoadedStateImpl;

  TicketListEntity get tickets;
  TicketStatsEntity? get stats;

  /// Create a copy of TicketState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TicketLoadedStateImplCopyWith<_$TicketLoadedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TicketDetailLoadedStateImplCopyWith<$Res> {
  factory _$$TicketDetailLoadedStateImplCopyWith(
    _$TicketDetailLoadedStateImpl value,
    $Res Function(_$TicketDetailLoadedStateImpl) then,
  ) = __$$TicketDetailLoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TicketEntity ticket});

  $TicketEntityCopyWith<$Res> get ticket;
}

/// @nodoc
class __$$TicketDetailLoadedStateImplCopyWithImpl<$Res>
    extends _$TicketStateCopyWithImpl<$Res, _$TicketDetailLoadedStateImpl>
    implements _$$TicketDetailLoadedStateImplCopyWith<$Res> {
  __$$TicketDetailLoadedStateImplCopyWithImpl(
    _$TicketDetailLoadedStateImpl _value,
    $Res Function(_$TicketDetailLoadedStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TicketState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? ticket = null}) {
    return _then(
      _$TicketDetailLoadedStateImpl(
        ticket: null == ticket
            ? _value.ticket
            : ticket // ignore: cast_nullable_to_non_nullable
                  as TicketEntity,
      ),
    );
  }

  /// Create a copy of TicketState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TicketEntityCopyWith<$Res> get ticket {
    return $TicketEntityCopyWith<$Res>(_value.ticket, (value) {
      return _then(_value.copyWith(ticket: value));
    });
  }
}

/// @nodoc

class _$TicketDetailLoadedStateImpl implements TicketDetailLoadedState {
  const _$TicketDetailLoadedStateImpl({required this.ticket});

  @override
  final TicketEntity ticket;

  @override
  String toString() {
    return 'TicketState.ticketDetailLoaded(ticket: $ticket)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketDetailLoadedStateImpl &&
            (identical(other.ticket, ticket) || other.ticket == ticket));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ticket);

  /// Create a copy of TicketState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketDetailLoadedStateImplCopyWith<_$TicketDetailLoadedStateImpl>
  get copyWith =>
      __$$TicketDetailLoadedStateImplCopyWithImpl<
        _$TicketDetailLoadedStateImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      TicketListEntity tickets,
      TicketStatsEntity? stats,
    )
    loaded,
    required TResult Function(TicketEntity ticket) ticketDetailLoaded,
    required TResult Function(TicketEntity ticket) ticketCreated,
    required TResult Function(TicketEntity ticket) ticketUpdated,
    required TResult Function() ticketDeleted,
    required TResult Function(TicketStatsEntity stats) statsLoaded,
    required TResult Function(Failure failure) error,
  }) {
    return ticketDetailLoaded(ticket);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(TicketListEntity tickets, TicketStatsEntity? stats)?
    loaded,
    TResult? Function(TicketEntity ticket)? ticketDetailLoaded,
    TResult? Function(TicketEntity ticket)? ticketCreated,
    TResult? Function(TicketEntity ticket)? ticketUpdated,
    TResult? Function()? ticketDeleted,
    TResult? Function(TicketStatsEntity stats)? statsLoaded,
    TResult? Function(Failure failure)? error,
  }) {
    return ticketDetailLoaded?.call(ticket);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TicketListEntity tickets, TicketStatsEntity? stats)?
    loaded,
    TResult Function(TicketEntity ticket)? ticketDetailLoaded,
    TResult Function(TicketEntity ticket)? ticketCreated,
    TResult Function(TicketEntity ticket)? ticketUpdated,
    TResult Function()? ticketDeleted,
    TResult Function(TicketStatsEntity stats)? statsLoaded,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (ticketDetailLoaded != null) {
      return ticketDetailLoaded(ticket);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TicketInitialState value) initial,
    required TResult Function(TicketLoadingState value) loading,
    required TResult Function(TicketLoadedState value) loaded,
    required TResult Function(TicketDetailLoadedState value) ticketDetailLoaded,
    required TResult Function(TicketCreatedState value) ticketCreated,
    required TResult Function(TicketUpdatedState value) ticketUpdated,
    required TResult Function(TicketDeletedState value) ticketDeleted,
    required TResult Function(TicketStatsLoadedState value) statsLoaded,
    required TResult Function(TicketErrorState value) error,
  }) {
    return ticketDetailLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TicketInitialState value)? initial,
    TResult? Function(TicketLoadingState value)? loading,
    TResult? Function(TicketLoadedState value)? loaded,
    TResult? Function(TicketDetailLoadedState value)? ticketDetailLoaded,
    TResult? Function(TicketCreatedState value)? ticketCreated,
    TResult? Function(TicketUpdatedState value)? ticketUpdated,
    TResult? Function(TicketDeletedState value)? ticketDeleted,
    TResult? Function(TicketStatsLoadedState value)? statsLoaded,
    TResult? Function(TicketErrorState value)? error,
  }) {
    return ticketDetailLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TicketInitialState value)? initial,
    TResult Function(TicketLoadingState value)? loading,
    TResult Function(TicketLoadedState value)? loaded,
    TResult Function(TicketDetailLoadedState value)? ticketDetailLoaded,
    TResult Function(TicketCreatedState value)? ticketCreated,
    TResult Function(TicketUpdatedState value)? ticketUpdated,
    TResult Function(TicketDeletedState value)? ticketDeleted,
    TResult Function(TicketStatsLoadedState value)? statsLoaded,
    TResult Function(TicketErrorState value)? error,
    required TResult orElse(),
  }) {
    if (ticketDetailLoaded != null) {
      return ticketDetailLoaded(this);
    }
    return orElse();
  }
}

abstract class TicketDetailLoadedState implements TicketState {
  const factory TicketDetailLoadedState({required final TicketEntity ticket}) =
      _$TicketDetailLoadedStateImpl;

  TicketEntity get ticket;

  /// Create a copy of TicketState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TicketDetailLoadedStateImplCopyWith<_$TicketDetailLoadedStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TicketCreatedStateImplCopyWith<$Res> {
  factory _$$TicketCreatedStateImplCopyWith(
    _$TicketCreatedStateImpl value,
    $Res Function(_$TicketCreatedStateImpl) then,
  ) = __$$TicketCreatedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TicketEntity ticket});

  $TicketEntityCopyWith<$Res> get ticket;
}

/// @nodoc
class __$$TicketCreatedStateImplCopyWithImpl<$Res>
    extends _$TicketStateCopyWithImpl<$Res, _$TicketCreatedStateImpl>
    implements _$$TicketCreatedStateImplCopyWith<$Res> {
  __$$TicketCreatedStateImplCopyWithImpl(
    _$TicketCreatedStateImpl _value,
    $Res Function(_$TicketCreatedStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TicketState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? ticket = null}) {
    return _then(
      _$TicketCreatedStateImpl(
        ticket: null == ticket
            ? _value.ticket
            : ticket // ignore: cast_nullable_to_non_nullable
                  as TicketEntity,
      ),
    );
  }

  /// Create a copy of TicketState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TicketEntityCopyWith<$Res> get ticket {
    return $TicketEntityCopyWith<$Res>(_value.ticket, (value) {
      return _then(_value.copyWith(ticket: value));
    });
  }
}

/// @nodoc

class _$TicketCreatedStateImpl implements TicketCreatedState {
  const _$TicketCreatedStateImpl({required this.ticket});

  @override
  final TicketEntity ticket;

  @override
  String toString() {
    return 'TicketState.ticketCreated(ticket: $ticket)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketCreatedStateImpl &&
            (identical(other.ticket, ticket) || other.ticket == ticket));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ticket);

  /// Create a copy of TicketState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketCreatedStateImplCopyWith<_$TicketCreatedStateImpl> get copyWith =>
      __$$TicketCreatedStateImplCopyWithImpl<_$TicketCreatedStateImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      TicketListEntity tickets,
      TicketStatsEntity? stats,
    )
    loaded,
    required TResult Function(TicketEntity ticket) ticketDetailLoaded,
    required TResult Function(TicketEntity ticket) ticketCreated,
    required TResult Function(TicketEntity ticket) ticketUpdated,
    required TResult Function() ticketDeleted,
    required TResult Function(TicketStatsEntity stats) statsLoaded,
    required TResult Function(Failure failure) error,
  }) {
    return ticketCreated(ticket);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(TicketListEntity tickets, TicketStatsEntity? stats)?
    loaded,
    TResult? Function(TicketEntity ticket)? ticketDetailLoaded,
    TResult? Function(TicketEntity ticket)? ticketCreated,
    TResult? Function(TicketEntity ticket)? ticketUpdated,
    TResult? Function()? ticketDeleted,
    TResult? Function(TicketStatsEntity stats)? statsLoaded,
    TResult? Function(Failure failure)? error,
  }) {
    return ticketCreated?.call(ticket);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TicketListEntity tickets, TicketStatsEntity? stats)?
    loaded,
    TResult Function(TicketEntity ticket)? ticketDetailLoaded,
    TResult Function(TicketEntity ticket)? ticketCreated,
    TResult Function(TicketEntity ticket)? ticketUpdated,
    TResult Function()? ticketDeleted,
    TResult Function(TicketStatsEntity stats)? statsLoaded,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (ticketCreated != null) {
      return ticketCreated(ticket);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TicketInitialState value) initial,
    required TResult Function(TicketLoadingState value) loading,
    required TResult Function(TicketLoadedState value) loaded,
    required TResult Function(TicketDetailLoadedState value) ticketDetailLoaded,
    required TResult Function(TicketCreatedState value) ticketCreated,
    required TResult Function(TicketUpdatedState value) ticketUpdated,
    required TResult Function(TicketDeletedState value) ticketDeleted,
    required TResult Function(TicketStatsLoadedState value) statsLoaded,
    required TResult Function(TicketErrorState value) error,
  }) {
    return ticketCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TicketInitialState value)? initial,
    TResult? Function(TicketLoadingState value)? loading,
    TResult? Function(TicketLoadedState value)? loaded,
    TResult? Function(TicketDetailLoadedState value)? ticketDetailLoaded,
    TResult? Function(TicketCreatedState value)? ticketCreated,
    TResult? Function(TicketUpdatedState value)? ticketUpdated,
    TResult? Function(TicketDeletedState value)? ticketDeleted,
    TResult? Function(TicketStatsLoadedState value)? statsLoaded,
    TResult? Function(TicketErrorState value)? error,
  }) {
    return ticketCreated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TicketInitialState value)? initial,
    TResult Function(TicketLoadingState value)? loading,
    TResult Function(TicketLoadedState value)? loaded,
    TResult Function(TicketDetailLoadedState value)? ticketDetailLoaded,
    TResult Function(TicketCreatedState value)? ticketCreated,
    TResult Function(TicketUpdatedState value)? ticketUpdated,
    TResult Function(TicketDeletedState value)? ticketDeleted,
    TResult Function(TicketStatsLoadedState value)? statsLoaded,
    TResult Function(TicketErrorState value)? error,
    required TResult orElse(),
  }) {
    if (ticketCreated != null) {
      return ticketCreated(this);
    }
    return orElse();
  }
}

abstract class TicketCreatedState implements TicketState {
  const factory TicketCreatedState({required final TicketEntity ticket}) =
      _$TicketCreatedStateImpl;

  TicketEntity get ticket;

  /// Create a copy of TicketState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TicketCreatedStateImplCopyWith<_$TicketCreatedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TicketUpdatedStateImplCopyWith<$Res> {
  factory _$$TicketUpdatedStateImplCopyWith(
    _$TicketUpdatedStateImpl value,
    $Res Function(_$TicketUpdatedStateImpl) then,
  ) = __$$TicketUpdatedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TicketEntity ticket});

  $TicketEntityCopyWith<$Res> get ticket;
}

/// @nodoc
class __$$TicketUpdatedStateImplCopyWithImpl<$Res>
    extends _$TicketStateCopyWithImpl<$Res, _$TicketUpdatedStateImpl>
    implements _$$TicketUpdatedStateImplCopyWith<$Res> {
  __$$TicketUpdatedStateImplCopyWithImpl(
    _$TicketUpdatedStateImpl _value,
    $Res Function(_$TicketUpdatedStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TicketState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? ticket = null}) {
    return _then(
      _$TicketUpdatedStateImpl(
        ticket: null == ticket
            ? _value.ticket
            : ticket // ignore: cast_nullable_to_non_nullable
                  as TicketEntity,
      ),
    );
  }

  /// Create a copy of TicketState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TicketEntityCopyWith<$Res> get ticket {
    return $TicketEntityCopyWith<$Res>(_value.ticket, (value) {
      return _then(_value.copyWith(ticket: value));
    });
  }
}

/// @nodoc

class _$TicketUpdatedStateImpl implements TicketUpdatedState {
  const _$TicketUpdatedStateImpl({required this.ticket});

  @override
  final TicketEntity ticket;

  @override
  String toString() {
    return 'TicketState.ticketUpdated(ticket: $ticket)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketUpdatedStateImpl &&
            (identical(other.ticket, ticket) || other.ticket == ticket));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ticket);

  /// Create a copy of TicketState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketUpdatedStateImplCopyWith<_$TicketUpdatedStateImpl> get copyWith =>
      __$$TicketUpdatedStateImplCopyWithImpl<_$TicketUpdatedStateImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      TicketListEntity tickets,
      TicketStatsEntity? stats,
    )
    loaded,
    required TResult Function(TicketEntity ticket) ticketDetailLoaded,
    required TResult Function(TicketEntity ticket) ticketCreated,
    required TResult Function(TicketEntity ticket) ticketUpdated,
    required TResult Function() ticketDeleted,
    required TResult Function(TicketStatsEntity stats) statsLoaded,
    required TResult Function(Failure failure) error,
  }) {
    return ticketUpdated(ticket);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(TicketListEntity tickets, TicketStatsEntity? stats)?
    loaded,
    TResult? Function(TicketEntity ticket)? ticketDetailLoaded,
    TResult? Function(TicketEntity ticket)? ticketCreated,
    TResult? Function(TicketEntity ticket)? ticketUpdated,
    TResult? Function()? ticketDeleted,
    TResult? Function(TicketStatsEntity stats)? statsLoaded,
    TResult? Function(Failure failure)? error,
  }) {
    return ticketUpdated?.call(ticket);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TicketListEntity tickets, TicketStatsEntity? stats)?
    loaded,
    TResult Function(TicketEntity ticket)? ticketDetailLoaded,
    TResult Function(TicketEntity ticket)? ticketCreated,
    TResult Function(TicketEntity ticket)? ticketUpdated,
    TResult Function()? ticketDeleted,
    TResult Function(TicketStatsEntity stats)? statsLoaded,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (ticketUpdated != null) {
      return ticketUpdated(ticket);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TicketInitialState value) initial,
    required TResult Function(TicketLoadingState value) loading,
    required TResult Function(TicketLoadedState value) loaded,
    required TResult Function(TicketDetailLoadedState value) ticketDetailLoaded,
    required TResult Function(TicketCreatedState value) ticketCreated,
    required TResult Function(TicketUpdatedState value) ticketUpdated,
    required TResult Function(TicketDeletedState value) ticketDeleted,
    required TResult Function(TicketStatsLoadedState value) statsLoaded,
    required TResult Function(TicketErrorState value) error,
  }) {
    return ticketUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TicketInitialState value)? initial,
    TResult? Function(TicketLoadingState value)? loading,
    TResult? Function(TicketLoadedState value)? loaded,
    TResult? Function(TicketDetailLoadedState value)? ticketDetailLoaded,
    TResult? Function(TicketCreatedState value)? ticketCreated,
    TResult? Function(TicketUpdatedState value)? ticketUpdated,
    TResult? Function(TicketDeletedState value)? ticketDeleted,
    TResult? Function(TicketStatsLoadedState value)? statsLoaded,
    TResult? Function(TicketErrorState value)? error,
  }) {
    return ticketUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TicketInitialState value)? initial,
    TResult Function(TicketLoadingState value)? loading,
    TResult Function(TicketLoadedState value)? loaded,
    TResult Function(TicketDetailLoadedState value)? ticketDetailLoaded,
    TResult Function(TicketCreatedState value)? ticketCreated,
    TResult Function(TicketUpdatedState value)? ticketUpdated,
    TResult Function(TicketDeletedState value)? ticketDeleted,
    TResult Function(TicketStatsLoadedState value)? statsLoaded,
    TResult Function(TicketErrorState value)? error,
    required TResult orElse(),
  }) {
    if (ticketUpdated != null) {
      return ticketUpdated(this);
    }
    return orElse();
  }
}

abstract class TicketUpdatedState implements TicketState {
  const factory TicketUpdatedState({required final TicketEntity ticket}) =
      _$TicketUpdatedStateImpl;

  TicketEntity get ticket;

  /// Create a copy of TicketState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TicketUpdatedStateImplCopyWith<_$TicketUpdatedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TicketDeletedStateImplCopyWith<$Res> {
  factory _$$TicketDeletedStateImplCopyWith(
    _$TicketDeletedStateImpl value,
    $Res Function(_$TicketDeletedStateImpl) then,
  ) = __$$TicketDeletedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TicketDeletedStateImplCopyWithImpl<$Res>
    extends _$TicketStateCopyWithImpl<$Res, _$TicketDeletedStateImpl>
    implements _$$TicketDeletedStateImplCopyWith<$Res> {
  __$$TicketDeletedStateImplCopyWithImpl(
    _$TicketDeletedStateImpl _value,
    $Res Function(_$TicketDeletedStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TicketState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TicketDeletedStateImpl implements TicketDeletedState {
  const _$TicketDeletedStateImpl();

  @override
  String toString() {
    return 'TicketState.ticketDeleted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TicketDeletedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      TicketListEntity tickets,
      TicketStatsEntity? stats,
    )
    loaded,
    required TResult Function(TicketEntity ticket) ticketDetailLoaded,
    required TResult Function(TicketEntity ticket) ticketCreated,
    required TResult Function(TicketEntity ticket) ticketUpdated,
    required TResult Function() ticketDeleted,
    required TResult Function(TicketStatsEntity stats) statsLoaded,
    required TResult Function(Failure failure) error,
  }) {
    return ticketDeleted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(TicketListEntity tickets, TicketStatsEntity? stats)?
    loaded,
    TResult? Function(TicketEntity ticket)? ticketDetailLoaded,
    TResult? Function(TicketEntity ticket)? ticketCreated,
    TResult? Function(TicketEntity ticket)? ticketUpdated,
    TResult? Function()? ticketDeleted,
    TResult? Function(TicketStatsEntity stats)? statsLoaded,
    TResult? Function(Failure failure)? error,
  }) {
    return ticketDeleted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TicketListEntity tickets, TicketStatsEntity? stats)?
    loaded,
    TResult Function(TicketEntity ticket)? ticketDetailLoaded,
    TResult Function(TicketEntity ticket)? ticketCreated,
    TResult Function(TicketEntity ticket)? ticketUpdated,
    TResult Function()? ticketDeleted,
    TResult Function(TicketStatsEntity stats)? statsLoaded,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (ticketDeleted != null) {
      return ticketDeleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TicketInitialState value) initial,
    required TResult Function(TicketLoadingState value) loading,
    required TResult Function(TicketLoadedState value) loaded,
    required TResult Function(TicketDetailLoadedState value) ticketDetailLoaded,
    required TResult Function(TicketCreatedState value) ticketCreated,
    required TResult Function(TicketUpdatedState value) ticketUpdated,
    required TResult Function(TicketDeletedState value) ticketDeleted,
    required TResult Function(TicketStatsLoadedState value) statsLoaded,
    required TResult Function(TicketErrorState value) error,
  }) {
    return ticketDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TicketInitialState value)? initial,
    TResult? Function(TicketLoadingState value)? loading,
    TResult? Function(TicketLoadedState value)? loaded,
    TResult? Function(TicketDetailLoadedState value)? ticketDetailLoaded,
    TResult? Function(TicketCreatedState value)? ticketCreated,
    TResult? Function(TicketUpdatedState value)? ticketUpdated,
    TResult? Function(TicketDeletedState value)? ticketDeleted,
    TResult? Function(TicketStatsLoadedState value)? statsLoaded,
    TResult? Function(TicketErrorState value)? error,
  }) {
    return ticketDeleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TicketInitialState value)? initial,
    TResult Function(TicketLoadingState value)? loading,
    TResult Function(TicketLoadedState value)? loaded,
    TResult Function(TicketDetailLoadedState value)? ticketDetailLoaded,
    TResult Function(TicketCreatedState value)? ticketCreated,
    TResult Function(TicketUpdatedState value)? ticketUpdated,
    TResult Function(TicketDeletedState value)? ticketDeleted,
    TResult Function(TicketStatsLoadedState value)? statsLoaded,
    TResult Function(TicketErrorState value)? error,
    required TResult orElse(),
  }) {
    if (ticketDeleted != null) {
      return ticketDeleted(this);
    }
    return orElse();
  }
}

abstract class TicketDeletedState implements TicketState {
  const factory TicketDeletedState() = _$TicketDeletedStateImpl;
}

/// @nodoc
abstract class _$$TicketStatsLoadedStateImplCopyWith<$Res> {
  factory _$$TicketStatsLoadedStateImplCopyWith(
    _$TicketStatsLoadedStateImpl value,
    $Res Function(_$TicketStatsLoadedStateImpl) then,
  ) = __$$TicketStatsLoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TicketStatsEntity stats});

  $TicketStatsEntityCopyWith<$Res> get stats;
}

/// @nodoc
class __$$TicketStatsLoadedStateImplCopyWithImpl<$Res>
    extends _$TicketStateCopyWithImpl<$Res, _$TicketStatsLoadedStateImpl>
    implements _$$TicketStatsLoadedStateImplCopyWith<$Res> {
  __$$TicketStatsLoadedStateImplCopyWithImpl(
    _$TicketStatsLoadedStateImpl _value,
    $Res Function(_$TicketStatsLoadedStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TicketState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? stats = null}) {
    return _then(
      _$TicketStatsLoadedStateImpl(
        stats: null == stats
            ? _value.stats
            : stats // ignore: cast_nullable_to_non_nullable
                  as TicketStatsEntity,
      ),
    );
  }

  /// Create a copy of TicketState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TicketStatsEntityCopyWith<$Res> get stats {
    return $TicketStatsEntityCopyWith<$Res>(_value.stats, (value) {
      return _then(_value.copyWith(stats: value));
    });
  }
}

/// @nodoc

class _$TicketStatsLoadedStateImpl implements TicketStatsLoadedState {
  const _$TicketStatsLoadedStateImpl({required this.stats});

  @override
  final TicketStatsEntity stats;

  @override
  String toString() {
    return 'TicketState.statsLoaded(stats: $stats)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketStatsLoadedStateImpl &&
            (identical(other.stats, stats) || other.stats == stats));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stats);

  /// Create a copy of TicketState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketStatsLoadedStateImplCopyWith<_$TicketStatsLoadedStateImpl>
  get copyWith =>
      __$$TicketStatsLoadedStateImplCopyWithImpl<_$TicketStatsLoadedStateImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      TicketListEntity tickets,
      TicketStatsEntity? stats,
    )
    loaded,
    required TResult Function(TicketEntity ticket) ticketDetailLoaded,
    required TResult Function(TicketEntity ticket) ticketCreated,
    required TResult Function(TicketEntity ticket) ticketUpdated,
    required TResult Function() ticketDeleted,
    required TResult Function(TicketStatsEntity stats) statsLoaded,
    required TResult Function(Failure failure) error,
  }) {
    return statsLoaded(stats);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(TicketListEntity tickets, TicketStatsEntity? stats)?
    loaded,
    TResult? Function(TicketEntity ticket)? ticketDetailLoaded,
    TResult? Function(TicketEntity ticket)? ticketCreated,
    TResult? Function(TicketEntity ticket)? ticketUpdated,
    TResult? Function()? ticketDeleted,
    TResult? Function(TicketStatsEntity stats)? statsLoaded,
    TResult? Function(Failure failure)? error,
  }) {
    return statsLoaded?.call(stats);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TicketListEntity tickets, TicketStatsEntity? stats)?
    loaded,
    TResult Function(TicketEntity ticket)? ticketDetailLoaded,
    TResult Function(TicketEntity ticket)? ticketCreated,
    TResult Function(TicketEntity ticket)? ticketUpdated,
    TResult Function()? ticketDeleted,
    TResult Function(TicketStatsEntity stats)? statsLoaded,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (statsLoaded != null) {
      return statsLoaded(stats);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TicketInitialState value) initial,
    required TResult Function(TicketLoadingState value) loading,
    required TResult Function(TicketLoadedState value) loaded,
    required TResult Function(TicketDetailLoadedState value) ticketDetailLoaded,
    required TResult Function(TicketCreatedState value) ticketCreated,
    required TResult Function(TicketUpdatedState value) ticketUpdated,
    required TResult Function(TicketDeletedState value) ticketDeleted,
    required TResult Function(TicketStatsLoadedState value) statsLoaded,
    required TResult Function(TicketErrorState value) error,
  }) {
    return statsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TicketInitialState value)? initial,
    TResult? Function(TicketLoadingState value)? loading,
    TResult? Function(TicketLoadedState value)? loaded,
    TResult? Function(TicketDetailLoadedState value)? ticketDetailLoaded,
    TResult? Function(TicketCreatedState value)? ticketCreated,
    TResult? Function(TicketUpdatedState value)? ticketUpdated,
    TResult? Function(TicketDeletedState value)? ticketDeleted,
    TResult? Function(TicketStatsLoadedState value)? statsLoaded,
    TResult? Function(TicketErrorState value)? error,
  }) {
    return statsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TicketInitialState value)? initial,
    TResult Function(TicketLoadingState value)? loading,
    TResult Function(TicketLoadedState value)? loaded,
    TResult Function(TicketDetailLoadedState value)? ticketDetailLoaded,
    TResult Function(TicketCreatedState value)? ticketCreated,
    TResult Function(TicketUpdatedState value)? ticketUpdated,
    TResult Function(TicketDeletedState value)? ticketDeleted,
    TResult Function(TicketStatsLoadedState value)? statsLoaded,
    TResult Function(TicketErrorState value)? error,
    required TResult orElse(),
  }) {
    if (statsLoaded != null) {
      return statsLoaded(this);
    }
    return orElse();
  }
}

abstract class TicketStatsLoadedState implements TicketState {
  const factory TicketStatsLoadedState({
    required final TicketStatsEntity stats,
  }) = _$TicketStatsLoadedStateImpl;

  TicketStatsEntity get stats;

  /// Create a copy of TicketState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TicketStatsLoadedStateImplCopyWith<_$TicketStatsLoadedStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TicketErrorStateImplCopyWith<$Res> {
  factory _$$TicketErrorStateImplCopyWith(
    _$TicketErrorStateImpl value,
    $Res Function(_$TicketErrorStateImpl) then,
  ) = __$$TicketErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$TicketErrorStateImplCopyWithImpl<$Res>
    extends _$TicketStateCopyWithImpl<$Res, _$TicketErrorStateImpl>
    implements _$$TicketErrorStateImplCopyWith<$Res> {
  __$$TicketErrorStateImplCopyWithImpl(
    _$TicketErrorStateImpl _value,
    $Res Function(_$TicketErrorStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TicketState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? failure = null}) {
    return _then(
      _$TicketErrorStateImpl(
        failure: null == failure
            ? _value.failure
            : failure // ignore: cast_nullable_to_non_nullable
                  as Failure,
      ),
    );
  }

  /// Create a copy of TicketState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FailureCopyWith<$Res> get failure {
    return $FailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$TicketErrorStateImpl implements TicketErrorState {
  const _$TicketErrorStateImpl({required this.failure});

  @override
  final Failure failure;

  @override
  String toString() {
    return 'TicketState.error(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketErrorStateImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  /// Create a copy of TicketState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketErrorStateImplCopyWith<_$TicketErrorStateImpl> get copyWith =>
      __$$TicketErrorStateImplCopyWithImpl<_$TicketErrorStateImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      TicketListEntity tickets,
      TicketStatsEntity? stats,
    )
    loaded,
    required TResult Function(TicketEntity ticket) ticketDetailLoaded,
    required TResult Function(TicketEntity ticket) ticketCreated,
    required TResult Function(TicketEntity ticket) ticketUpdated,
    required TResult Function() ticketDeleted,
    required TResult Function(TicketStatsEntity stats) statsLoaded,
    required TResult Function(Failure failure) error,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(TicketListEntity tickets, TicketStatsEntity? stats)?
    loaded,
    TResult? Function(TicketEntity ticket)? ticketDetailLoaded,
    TResult? Function(TicketEntity ticket)? ticketCreated,
    TResult? Function(TicketEntity ticket)? ticketUpdated,
    TResult? Function()? ticketDeleted,
    TResult? Function(TicketStatsEntity stats)? statsLoaded,
    TResult? Function(Failure failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TicketListEntity tickets, TicketStatsEntity? stats)?
    loaded,
    TResult Function(TicketEntity ticket)? ticketDetailLoaded,
    TResult Function(TicketEntity ticket)? ticketCreated,
    TResult Function(TicketEntity ticket)? ticketUpdated,
    TResult Function()? ticketDeleted,
    TResult Function(TicketStatsEntity stats)? statsLoaded,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TicketInitialState value) initial,
    required TResult Function(TicketLoadingState value) loading,
    required TResult Function(TicketLoadedState value) loaded,
    required TResult Function(TicketDetailLoadedState value) ticketDetailLoaded,
    required TResult Function(TicketCreatedState value) ticketCreated,
    required TResult Function(TicketUpdatedState value) ticketUpdated,
    required TResult Function(TicketDeletedState value) ticketDeleted,
    required TResult Function(TicketStatsLoadedState value) statsLoaded,
    required TResult Function(TicketErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TicketInitialState value)? initial,
    TResult? Function(TicketLoadingState value)? loading,
    TResult? Function(TicketLoadedState value)? loaded,
    TResult? Function(TicketDetailLoadedState value)? ticketDetailLoaded,
    TResult? Function(TicketCreatedState value)? ticketCreated,
    TResult? Function(TicketUpdatedState value)? ticketUpdated,
    TResult? Function(TicketDeletedState value)? ticketDeleted,
    TResult? Function(TicketStatsLoadedState value)? statsLoaded,
    TResult? Function(TicketErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TicketInitialState value)? initial,
    TResult Function(TicketLoadingState value)? loading,
    TResult Function(TicketLoadedState value)? loaded,
    TResult Function(TicketDetailLoadedState value)? ticketDetailLoaded,
    TResult Function(TicketCreatedState value)? ticketCreated,
    TResult Function(TicketUpdatedState value)? ticketUpdated,
    TResult Function(TicketDeletedState value)? ticketDeleted,
    TResult Function(TicketStatsLoadedState value)? statsLoaded,
    TResult Function(TicketErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class TicketErrorState implements TicketState {
  const factory TicketErrorState({required final Failure failure}) =
      _$TicketErrorStateImpl;

  Failure get failure;

  /// Create a copy of TicketState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TicketErrorStateImplCopyWith<_$TicketErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
