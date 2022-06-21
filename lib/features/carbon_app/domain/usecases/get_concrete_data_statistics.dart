import 'package:carbon_app/core/error/failures.dart';
import 'package:carbon_app/features/carbon_app/domain/entities/data_statistics.dart';
import 'package:carbon_app/features/carbon_app/domain/repositories/data_statistcs.dart';
import 'package:dartz/dartz.dart';

class GetConcreteDataStatistics {
  final DataStatisticsRepository repository;

  GetConcreteDataStatistics(this.repository);

  Future<Either<Failures, DataStatistics>> execute(int bytes, int green) async {
    return await repository.getConcreteDataStatistics(bytes, green);
  }
}
