import 'package:dartz/dartz.dart';
import 'package:y_chat_admin/src/features/ticketing/domain/entities/ticket_entity.dart';
import 'package:y_chat_admin/src/features/ticketing/domain/repositories/ticket_repository.dart';
import 'package:y_chat_admin/src/shared/models/failure.dart';

class AddReplyToTicketUseCase {
  final TicketRepository _repository;

  AddReplyToTicketUseCase({required TicketRepository repository})
      : _repository = repository;

  Future<Either<Failure, TicketEntity>> call({
    required int id,
    required String text,
    String? image,
    required String from,
  }) async {
    return await _repository.addReplyToTicket(
      id: id,
      text: text,
      image: image,
      from: from,
    );
  }
}
