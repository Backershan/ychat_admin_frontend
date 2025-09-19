import 'package:dartz/dartz.dart';
import 'package:y_chat_admin/src/features/ticketing/domain/entities/ticket_entity.dart';
import 'package:y_chat_admin/src/shared/models/failure.dart';

abstract class TicketRepository {
  Future<Either<Failure, TicketListEntity>> getTickets({
    String? category,
    String? status,
    String? priority,
    int? page,
    int? limit,
  });

  Future<Either<Failure, TicketEntity>> getTicketById(int id);

  Future<Either<Failure, TicketEntity>> createTicket({
    required String title,
    required String description,
    required String priority,
    required int userId,
    List<TicketAttachmentEntity>? attachments,
  });

  Future<Either<Failure, TicketEntity>> updateTicketStatus({
    required int id,
    required String status,
    int? assignedTo,
    String? adminNotes,
  });

  Future<Either<Failure, TicketEntity>> addReplyToTicket({
    required int id,
    required String text,
    String? image,
    required String from,
  });

  Future<Either<Failure, TicketStatsEntity>> getTicketStats();

  Future<Either<Failure, void>> deleteTicket(int id);
}
