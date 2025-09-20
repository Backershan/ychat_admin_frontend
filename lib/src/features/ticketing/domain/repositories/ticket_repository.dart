import 'package:dartz/dartz.dart';
import 'package:y_chat_admin/src/features/ticketing/domain/entities/ticket_entity.dart';
import 'package:y_chat_admin/src/features/ticketing/data/models/ticket_api_models.dart';
import 'package:y_chat_admin/src/shared/models/failure.dart';

abstract class TicketRepository {
  Future<Either<Failure, TicketListResponse>> getTickets({
    String? category,
    String? status,
    String? priority,
    String? search,
    String? sortBy,
    String? sortOrder,
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

  Future<Either<Failure, TicketEntity>> updateTicket({
    required int id,
    required TicketUpdateRequest request,
  });

  Future<Either<Failure, TicketEntity>> addReplyToTicket({
    required int id,
    required TicketReplyRequest request,
  });

  Future<Either<Failure, TicketStatsResponse>> getTicketStats();

  Future<Either<Failure, void>> deleteTicket(int id);
}
