import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:y_chat_admin/src/features/ticketing/domain/entities/ticket_entity.dart';

part 'ticket_event.freezed.dart';

@freezed
class TicketEvent with _$TicketEvent {
  const factory TicketEvent.getTickets({
    String? category,
    String? status,
    String? priority,
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

  const factory TicketEvent.updateTicketStatus({
    required int id,
    required String status,
    int? assignedTo,
    String? adminNotes,
  }) = UpdateTicketStatusEvent;

  const factory TicketEvent.addReplyToTicket({
    required int id,
    required String text,
    String? image,
    required String from,
  }) = AddReplyToTicketEvent;

  const factory TicketEvent.getTicketStats() = GetTicketStatsEvent;

  const factory TicketEvent.deleteTicket(int id) = DeleteTicketEvent;

  const factory TicketEvent.clearError() = ClearErrorEvent;
}
