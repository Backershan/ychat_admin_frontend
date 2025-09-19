import 'package:dartz/dartz.dart';
import 'package:y_chat_admin/src/features/ticketing/domain/entities/ticket_entity.dart';
import 'package:y_chat_admin/src/features/ticketing/domain/repositories/ticket_repository.dart';
import 'package:y_chat_admin/src/shared/models/failure.dart';

class CreateTicketUseCase {
  final TicketRepository _repository;

  CreateTicketUseCase({required TicketRepository repository})
      : _repository = repository;

  Future<Either<Failure, TicketEntity>> call({
    required String title,
    required String description,
    required String priority,
    required int userId,
    List<TicketAttachmentEntity>? attachments,
  }) async {
    return await _repository.createTicket(
      title: title,
      description: description,
      priority: priority,
      userId: userId,
      attachments: attachments,
    );
  }
}
