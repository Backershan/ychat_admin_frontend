import 'package:dartz/dartz.dart';
import 'package:y_chat_admin/src/features/ticketing/domain/repositories/ticket_repository.dart';
import 'package:y_chat_admin/src/features/ticketing/data/models/ticket_api_models.dart';
import 'package:y_chat_admin/src/shared/models/failure.dart';

class GetTicketsUseCase {
  final TicketRepository _repository;

  GetTicketsUseCase({required TicketRepository repository})
      : _repository = repository;

  Future<Either<Failure, TicketListResponse>> call({
    String? category,
    String? status,
    String? priority,
    String? search,
    String? sortBy,
    String? sortOrder,
    int? page,
    int? limit,
  }) async {
    return await _repository.getTickets(
      category: category,
      status: status,
      priority: priority,
      search: search,
      sortBy: sortBy,
      sortOrder: sortOrder,
      page: page,
      limit: limit,
    );
  }
}
