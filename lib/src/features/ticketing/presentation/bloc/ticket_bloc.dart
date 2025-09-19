import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:y_chat_admin/src/features/ticketing/domain/usecases/get_tickets_usecase.dart';
import 'package:y_chat_admin/src/features/ticketing/domain/usecases/get_ticket_by_id_usecase.dart';
import 'package:y_chat_admin/src/features/ticketing/domain/usecases/create_ticket_usecase.dart';
import 'package:y_chat_admin/src/features/ticketing/domain/usecases/update_ticket_status_usecase.dart';
import 'package:y_chat_admin/src/features/ticketing/domain/usecases/add_reply_to_ticket_usecase.dart';
import 'package:y_chat_admin/src/features/ticketing/domain/usecases/get_ticket_stats_usecase.dart';
import 'package:y_chat_admin/src/features/ticketing/domain/usecases/delete_ticket_usecase.dart';
import 'package:y_chat_admin/src/features/ticketing/presentation/bloc/ticket_event.dart';
import 'package:y_chat_admin/src/features/ticketing/presentation/bloc/ticket_state.dart';

class TicketBloc extends Bloc<TicketEvent, TicketState> {
  final GetTicketsUseCase _getTicketsUseCase;
  final GetTicketByIdUseCase _getTicketByIdUseCase;
  final CreateTicketUseCase _createTicketUseCase;
  final UpdateTicketStatusUseCase _updateTicketStatusUseCase;
  final AddReplyToTicketUseCase _addReplyToTicketUseCase;
  final GetTicketStatsUseCase _getTicketStatsUseCase;
  final DeleteTicketUseCase _deleteTicketUseCase;

  TicketBloc({
    required GetTicketsUseCase getTicketsUseCase,
    required GetTicketByIdUseCase getTicketByIdUseCase,
    required CreateTicketUseCase createTicketUseCase,
    required UpdateTicketStatusUseCase updateTicketStatusUseCase,
    required AddReplyToTicketUseCase addReplyToTicketUseCase,
    required GetTicketStatsUseCase getTicketStatsUseCase,
    required DeleteTicketUseCase deleteTicketUseCase,
  })  : _getTicketsUseCase = getTicketsUseCase,
        _getTicketByIdUseCase = getTicketByIdUseCase,
        _createTicketUseCase = createTicketUseCase,
        _updateTicketStatusUseCase = updateTicketStatusUseCase,
        _addReplyToTicketUseCase = addReplyToTicketUseCase,
        _getTicketStatsUseCase = getTicketStatsUseCase,
        _deleteTicketUseCase = deleteTicketUseCase,
        super(const TicketState.initial()) {
    on<GetTicketsEvent>(_onGetTickets);
    on<GetTicketByIdEvent>(_onGetTicketById);
    on<CreateTicketEvent>(_onCreateTicket);
    on<UpdateTicketStatusEvent>(_onUpdateTicketStatus);
    on<AddReplyToTicketEvent>(_onAddReplyToTicket);
    on<GetTicketStatsEvent>(_onGetTicketStats);
    on<DeleteTicketEvent>(_onDeleteTicket);
    on<ClearErrorEvent>(_onClearError);
  }

  Future<void> _onGetTickets(
    GetTicketsEvent event,
    Emitter<TicketState> emit,
  ) async {
    emit(const TicketState.loading());

    final result = await _getTicketsUseCase(
      category: event.category,
      status: event.status,
      priority: event.priority,
      page: event.page,
      limit: event.limit,
    );

    result.fold(
      (failure) => emit(TicketState.error(failure: failure)),
      (tickets) => emit(TicketState.loaded(tickets: tickets)),
    );
  }

  Future<void> _onGetTicketById(
    GetTicketByIdEvent event,
    Emitter<TicketState> emit,
  ) async {
    emit(const TicketState.loading());

    final result = await _getTicketByIdUseCase(event.id);

    result.fold(
      (failure) => emit(TicketState.error(failure: failure)),
      (ticket) => emit(TicketState.ticketDetailLoaded(ticket: ticket)),
    );
  }

  Future<void> _onCreateTicket(
    CreateTicketEvent event,
    Emitter<TicketState> emit,
  ) async {
    emit(const TicketState.loading());

    final result = await _createTicketUseCase(
      title: event.title,
      description: event.description,
      priority: event.priority,
      userId: event.userId,
      attachments: event.attachments,
    );

    result.fold(
      (failure) => emit(TicketState.error(failure: failure)),
      (ticket) => emit(TicketState.ticketCreated(ticket: ticket)),
    );
  }

  Future<void> _onUpdateTicketStatus(
    UpdateTicketStatusEvent event,
    Emitter<TicketState> emit,
  ) async {
    emit(const TicketState.loading());

    final result = await _updateTicketStatusUseCase(
      id: event.id,
      status: event.status,
      assignedTo: event.assignedTo,
      adminNotes: event.adminNotes,
    );

    result.fold(
      (failure) => emit(TicketState.error(failure: failure)),
      (ticket) => emit(TicketState.ticketUpdated(ticket: ticket)),
    );
  }

  Future<void> _onAddReplyToTicket(
    AddReplyToTicketEvent event,
    Emitter<TicketState> emit,
  ) async {
    emit(const TicketState.loading());

    final result = await _addReplyToTicketUseCase(
      id: event.id,
      text: event.text,
      image: event.image,
      from: event.from,
    );

    result.fold(
      (failure) => emit(TicketState.error(failure: failure)),
      (ticket) => emit(TicketState.ticketUpdated(ticket: ticket)),
    );
  }

  Future<void> _onGetTicketStats(
    GetTicketStatsEvent event,
    Emitter<TicketState> emit,
  ) async {
    emit(const TicketState.loading());

    final result = await _getTicketStatsUseCase();

    result.fold(
      (failure) => emit(TicketState.error(failure: failure)),
      (stats) => emit(TicketState.statsLoaded(stats: stats)),
    );
  }

  Future<void> _onDeleteTicket(
    DeleteTicketEvent event,
    Emitter<TicketState> emit,
  ) async {
    emit(const TicketState.loading());

    final result = await _deleteTicketUseCase(event.id);

    result.fold(
      (failure) => emit(TicketState.error(failure: failure)),
      (_) => emit(const TicketState.ticketDeleted()),
    );
  }

  void _onClearError(
    ClearErrorEvent event,
    Emitter<TicketState> emit,
  ) {
    emit(const TicketState.initial());
  }
}
