import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/dashboard_entity.dart';
import '../repositories/dashboard_repository.dart';

class GetDashboardDataUseCase {
  final DashboardRepository _repository;

  GetDashboardDataUseCase({required DashboardRepository repository})
      : _repository = repository;

  Future<Either<Failure, DashboardEntity>> call() async {
    return await _repository.getDashboardData();
  }
}
