import 'package:dartz/dartz.dart';
import 'package:y_chat_admin/src/features/ticketing/domain/entities/ticket_entity.dart';
import 'package:y_chat_admin/src/features/ticketing/domain/repositories/ticket_repository.dart';
import 'package:y_chat_admin/src/shared/models/failure.dart';

class UpdateTicketStatusUseCase {
  final TicketRepository _repository;

  UpdateTicketStatusUseCase({required TicketRepository repository})
      : _repository = repository;

  Future<Either<Failure, TicketEntity>> call({
    required int id,
    required String status,
    int? assignedTo,
    String? adminNotes,
  }) async {
    return await _repository.updateTicketStatus(
      id: id,
      status: status,
      assignedTo: assignedTo,
      adminNotes: adminNotes,
    );
  }
}
