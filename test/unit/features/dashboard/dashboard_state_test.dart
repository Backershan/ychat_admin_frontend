import 'package:flutter_test/flutter_test.dart';
import 'package:y_chat_admin/src/features/dashboard/presentation/bloc/dashboard_bloc.dart';
import 'package:y_chat_admin/src/features/dashboard/domain/entities/dashboard_entity.dart';

void main() {
  group('DashboardState Tests', () {
    test('DashboardInitial should be equal to DashboardInitial', () {
      final state1 = DashboardInitial();
      final state2 = DashboardInitial();
      expect(state1, equals(state2));
    });

    test('DashboardLoading should be equal to DashboardLoading', () {
      final state1 = DashboardLoading();
      final state2 = DashboardLoading();
      expect(state1, equals(state2));
    });

    test('DashboardError should create error state with message', () {
      const state = DashboardError('Test error');
      expect(state, isA<DashboardState>());
      expect(state.message, equals('Test error'));
    });

    test('DashboardLoaded should create loaded state with data', () {
      final usersData = UsersData(
        total: 100,
        active: 50,
        daily: 10,
        monthly: 200,
      );
      final geographicalData = GeographicalDistributionData(
        byCountry: [],
        byCity: [],
      );
      final screenSharesData = ScreenSharesData(
        total: 50,
        daily: 5,
        monthly: 100,
        averageDuration: 30,
      );
      final dashboardData = DashboardEntity(
        users: usersData,
        geographicalDistribution: geographicalData,
        screenShares: screenSharesData,
      );
      final state = DashboardLoaded(dashboardData);
      expect(state, isA<DashboardState>());
      expect(state.dashboardData, equals(dashboardData));
    });
  });
}
