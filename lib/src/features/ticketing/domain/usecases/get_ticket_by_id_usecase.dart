import 'package:dartz/dartz.dart';
import 'package:y_chat_admin/src/features/ticketing/domain/entities/ticket_entity.dart';
import 'package:y_chat_admin/src/features/ticketing/domain/repositories/ticket_repository.dart';
import 'package:y_chat_admin/src/shared/models/failure.dart';

class GetTicketByIdUseCase {
  final TicketRepository _repository;

  GetTicketByIdUseCase({required TicketRepository repository})
      : _repository = repository;

  Future<Either<Failure, TicketEntity>> call(int id) async {
    return await _repository.getTicketById(id);
  }
}
