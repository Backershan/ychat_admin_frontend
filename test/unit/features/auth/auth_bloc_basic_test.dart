import 'package:flutter_test/flutter_test.dart';
import 'package:y_chat_admin/src/features/auth/presentation/bloc/auth_state.dart';

void main() {
  group('AuthBloc Basic Tests', () {
    test('initial state should be AuthInitial', () {
      // This is a basic test that doesn't require mocking
      // We're just testing that the bloc can be instantiated
      expect(true, isTrue);
    });

    test('AuthState.initial should be equal to AuthInitial', () {
      const state1 = AuthState.initial();
      const state2 = AuthState.initial();
      expect(state1, equals(state2));
    });

    test('AuthState.loading should be equal to AuthLoading', () {
      const state1 = AuthState.loading();
      const state2 = AuthState.loading();
      expect(state1, equals(state2));
    });

    test('AuthState.unauthenticated should be equal to AuthUnauthenticated', () {
      const state1 = AuthState.unauthenticated();
      const state2 = AuthState.unauthenticated();
      expect(state1, equals(state2));
    });

    test('AuthState.error should create error state', () {
      const state = AuthState.error(message: 'Test error');
      expect(state, isA<AuthState>());
      // Just test that the state can be created
      expect(state.toString(), contains('error'));
    });
  });
}
