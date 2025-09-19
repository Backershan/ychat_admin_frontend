import 'package:dartz/dartz.dart';
import 'package:y_chat_admin/src/features/ticketing/domain/entities/ticket_entity.dart';
import 'package:y_chat_admin/src/features/ticketing/domain/repositories/ticket_repository.dart';
import 'package:y_chat_admin/src/features/ticketing/data/datasources/ticket_remote_datasource.dart';
import 'package:y_chat_admin/src/shared/models/failure.dart';

class TicketRepositoryImpl implements TicketRepository {
  final TicketRemoteDataSource _remoteDataSource;

  TicketRepositoryImpl({required TicketRemoteDataSource remoteDataSource})
      : _remoteDataSource = remoteDataSource;

  @override
  Future<Either<Failure, TicketListEntity>> getTickets({
    String? category,
    String? status,
    String? priority,
    int? page,
    int? limit,
  }) async {
    try {
      final result = await _remoteDataSource.getTickets(
        category: category,
        status: status,
        priority: priority,
        page: page,
        limit: limit,
      );
      return Right(result);
    } on Failure catch (e) {
      return Left(e);
    } catch (e) {
      return Left(UnknownFailure(message: 'Unexpected error: $e'));
    }
  }

  @override
  Future<Either<Failure, TicketEntity>> getTicketById(int id) async {
    try {
      final result = await _remoteDataSource.getTicketById(id);
      return Right(result);
    } on Failure catch (e) {
      return Left(e);
    } catch (e) {
      return Left(UnknownFailure(message: 'Unexpected error: $e'));
    }
  }

  @override
  Future<Either<Failure, TicketEntity>> createTicket({
    required String title,
    required String description,
    required String priority,
    required int userId,
    List<TicketAttachmentEntity>? attachments,
  }) async {
    try {
      final result = await _remoteDataSource.createTicket(
        title: title,
        description: description,
        priority: priority,
        userId: userId,
        attachments: attachments,
      );
      return Right(result);
    } on Failure catch (e) {
      return Left(e);
    } catch (e) {
      return Left(UnknownFailure(message: 'Unexpected error: $e'));
    }
  }

  @override
  Future<Either<Failure, TicketEntity>> updateTicketStatus({
    required int id,
    required String status,
    int? assignedTo,
    String? adminNotes,
  }) async {
    try {
      final result = await _remoteDataSource.updateTicketStatus(
        id: id,
        status: status,
        assignedTo: assignedTo,
        adminNotes: adminNotes,
      );
      return Right(result);
    } on Failure catch (e) {
      return Left(e);
    } catch (e) {
      return Left(UnknownFailure(message: 'Unexpected error: $e'));
    }
  }

  @override
  Future<Either<Failure, TicketEntity>> addReplyToTicket({
    required int id,
    required String text,
    String? image,
    required String from,
  }) async {
    try {
      final result = await _remoteDataSource.addReplyToTicket(
        id: id,
        text: text,
        image: image,
        from: from,
      );
      return Right(result);
    } on Failure catch (e) {
      return Left(e);
    } catch (e) {
      return Left(UnknownFailure(message: 'Unexpected error: $e'));
    }
  }

  @override
  Future<Either<Failure, TicketStatsEntity>> getTicketStats() async {
    try {
      final result = await _remoteDataSource.getTicketStats();
      return Right(result);
    } on Failure catch (e) {
      return Left(e);
    } catch (e) {
      return Left(UnknownFailure(message: 'Unexpected error: $e'));
    }
  }

  @override
  Future<Either<Failure, void>> deleteTicket(int id) async {
    try {
      await _remoteDataSource.deleteTicket(id);
      return const Right(null);
    } on Failure catch (e) {
      return Left(e);
    } catch (e) {
      return Left(UnknownFailure(message: 'Unexpected error: $e'));
    }
  }
}
