import 'package:carbon_app/core/error/failures.dart';
import 'package:carbon_app/features/carbon_app/domain/entities/data_statistics.dart';
import 'package:dartz/dartz.dart';

abstract class DataStatisticsRepository {
  Future<Either<Failures, DataStatistics>> getConcreteDataStatistics(
      int bytes, int green);
}
