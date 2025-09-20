import 'package:dartz/dartz.dart';
import 'package:y_chat_admin/src/features/ticketing/domain/entities/ticket_entity.dart';
import 'package:y_chat_admin/src/features/ticketing/domain/repositories/ticket_repository.dart';
import 'package:y_chat_admin/src/features/ticketing/data/models/ticket_api_models.dart';
import 'package:y_chat_admin/src/shared/models/failure.dart';

class UpdateTicketStatusUseCase {
  final TicketRepository _repository;

  UpdateTicketStatusUseCase({required TicketRepository repository})
      : _repository = repository;

  Future<Either<Failure, TicketEntity>> call({
    required int id,
    required TicketUpdateRequest request,
  }) async {
    return await _repository.updateTicket(
      id: id,
      request: request,
    );
  }
}
