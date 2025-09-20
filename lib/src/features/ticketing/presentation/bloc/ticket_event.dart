import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:y_chat_admin/src/features/ticketing/domain/entities/ticket_entity.dart';
import 'package:y_chat_admin/src/features/ticketing/data/models/ticket_api_models.dart';

part 'ticket_event.freezed.dart';

@freezed
class TicketEvent with _$TicketEvent {
  const factory TicketEvent.getTickets({
    String? category,
    String? status,
    String? priority,
    String? search,
    String? sortBy,
    String? sortOrder,
    int? page,
    int? limit,
  }) = GetTicketsEvent;

  const factory TicketEvent.getTicketById(int id) = GetTicketByIdEvent;

  const factory TicketEvent.createTicket({
    required String title,
    required String description,
    required String priority,
    required int userId,
    List<TicketAttachmentEntity>? attachments,
  }) = CreateTicketEvent;

  const factory TicketEvent.updateTicket({
    required int id,
    required TicketUpdateRequest request,
  }) = UpdateTicketEvent;

  const factory TicketEvent.addReplyToTicket({
    required int id,
    required TicketReplyRequest request,
  }) = AddReplyToTicketEvent;

  const factory TicketEvent.getTicketStats() = GetTicketStatsEvent;

  const factory TicketEvent.deleteTicket(int id) = DeleteTicketEvent;

  const factory TicketEvent.clearError() = ClearErrorEvent;
}
