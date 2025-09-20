import 'package:dartz/dartz.dart';
import 'package:y_chat_admin/src/features/ticketing/domain/entities/ticket_entity.dart';
import 'package:y_chat_admin/src/features/ticketing/domain/repositories/ticket_repository.dart';
import 'package:y_chat_admin/src/features/ticketing/data/models/ticket_api_models.dart';
import 'package:y_chat_admin/src/shared/models/failure.dart';

class AddReplyToTicketUseCase {
  final TicketRepository _repository;

  AddReplyToTicketUseCase({required TicketRepository repository})
      : _repository = repository;

  Future<Either<Failure, TicketEntity>> call({
    required int id,
    required TicketReplyRequest request,
  }) async {
    return await _repository.addReplyToTicket(
      id: id,
      request: request,
    );
  }
}
