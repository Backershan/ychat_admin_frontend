import 'package:dartz/dartz.dart';
import 'package:y_chat_admin/src/features/ticketing/domain/repositories/ticket_repository.dart';
import 'package:y_chat_admin/src/shared/models/failure.dart';

class DeleteTicketUseCase {
  final TicketRepository _repository;

  DeleteTicketUseCase({required TicketRepository repository})
      : _repository = repository;

  Future<Either<Failure, void>> call(int id) async {
    return await _repository.deleteTicket(id);
  }
}
