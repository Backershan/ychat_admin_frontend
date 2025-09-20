import 'package:dartz/dartz.dart';
import 'package:y_chat_admin/src/features/ticketing/domain/repositories/ticket_repository.dart';
import 'package:y_chat_admin/src/features/ticketing/data/models/ticket_api_models.dart';
import 'package:y_chat_admin/src/shared/models/failure.dart';

class GetTicketStatsUseCase {
  final TicketRepository _repository;

  GetTicketStatsUseCase({required TicketRepository repository})
      : _repository = repository;

  Future<Either<Failure, TicketStatsResponse>> call() async {
    return await _repository.getTicketStats();
  }
}
