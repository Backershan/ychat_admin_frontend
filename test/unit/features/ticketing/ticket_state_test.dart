import 'package:flutter_test/flutter_test.dart';
import 'package:y_chat_admin/src/features/ticketing/presentation/bloc/ticket_state.dart';
import 'package:y_chat_admin/src/shared/models/failure.dart';
import 'package:y_chat_admin/src/features/ticketing/data/models/ticket_api_models.dart';

void main() {
  group('TicketState Tests', () {
    test('TicketState.initial should be equal to TicketInitial', () {
      const state1 = TicketState.initial();
      const state2 = TicketState.initial();
      expect(state1, equals(state2));
    });

    test('TicketState.loading should be equal to TicketLoading', () {
      const state1 = TicketState.loading();
      const state2 = TicketState.loading();
      expect(state1, equals(state2));
    });

    test('TicketState.error should create error state with failure', () {
      const failure = ServerFailure(message: 'Test error');
      const state = TicketState.error(failure: failure);
      expect(state, isA<TicketState>());
      expect(state.toString(), contains('error'));
    });

    test('TicketState.loaded should create loaded state with tickets', () {
      final tickets = TicketListResponse(
        success: true,
        data: TicketListData(
          tickets: TicketGroups(
            opened: [],
            pending: [],
            closed: [],
          ),
          pagination: TicketPagination(
            total: 0,
            page: 1,
            pages: 1,
            limit: 10,
          ),
        ),
      );
      final state = TicketState.loaded(tickets: tickets);
      expect(state, isA<TicketState>());
      expect(state.toString(), contains('loaded'));
    });
  });
}
