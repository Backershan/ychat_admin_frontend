import 'package:flutter_test/flutter_test.dart';
import 'package:y_chat_admin/src/features/auth/presentation/bloc/auth_state.dart';
import 'package:y_chat_admin/src/features/auth/domain/entities/user_entity.dart';

void main() {
  group('AuthState Tests', () {
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

    test('AuthState.error should create error state with message', () {
      const state = AuthState.error(message: 'Test error');
      expect(state, isA<AuthState>());
      expect(state.toString(), contains('error'));
    });

    test('AuthState.authenticated should create authenticated state with user', () {
      final user = UserEntity(
        id: 1,
        name: 'Test User',
        email: 'test@example.com',
        role: true,
      );
      final state = AuthState.authenticated(user: user);
      expect(state, isA<AuthState>());
      expect(state.toString(), contains('authenticated'));
    });

    test('AuthState.passwordChanged should create password changed state', () {
      const state = AuthState.passwordChanged();
      expect(state, isA<AuthState>());
      expect(state.toString(), contains('passwordChanged'));
    });

    test('AuthState.profileUpdated should create profile updated state with user', () {
      final user = UserEntity(
        id: 1,
        name: 'Test User',
        email: 'test@example.com',
        role: true,
      );
      final state = AuthState.profileUpdated(user: user);
      expect(state, isA<AuthState>());
      expect(state.toString(), contains('profileUpdated'));
    });
  });
}
