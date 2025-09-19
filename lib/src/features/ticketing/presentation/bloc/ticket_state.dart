import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:y_chat_admin/src/features/ticketing/domain/entities/ticket_entity.dart';
import 'package:y_chat_admin/src/shared/models/failure.dart';

part 'ticket_state.freezed.dart';

@freezed
class TicketState with _$TicketState {
  const factory TicketState.initial() = TicketInitialState;

  const factory TicketState.loading() = TicketLoadingState;

  const factory TicketState.loaded({
    required TicketListEntity tickets,
    TicketStatsEntity? stats,
  }) = TicketLoadedState;

  const factory TicketState.ticketDetailLoaded({
    required TicketEntity ticket,
  }) = TicketDetailLoadedState;

  const factory TicketState.ticketCreated({
    required TicketEntity ticket,
  }) = TicketCreatedState;

  const factory TicketState.ticketUpdated({
    required TicketEntity ticket,
  }) = TicketUpdatedState;

  const factory TicketState.ticketDeleted() = TicketDeletedState;

  const factory TicketState.statsLoaded({
    required TicketStatsEntity stats,
  }) = TicketStatsLoadedState;

  const factory TicketState.error({
    required Failure failure,
  }) = TicketErrorState;
}
