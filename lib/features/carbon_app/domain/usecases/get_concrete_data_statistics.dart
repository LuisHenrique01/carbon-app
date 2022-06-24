import 'package:carbon_app/core/error/failures.dart';
import 'package:carbon_app/core/usecases/usecases.dart';
import 'package:carbon_app/features/carbon_app/domain/entities/data_statistics.dart';
import 'package:carbon_app/features/carbon_app/domain/repositories/data_statistcs_repository.dart';
import 'package:dartz/dartz.dart';

class GetConcreteDataStatistics extends UseCase<DataStatistics, String> {
  final DataStatisticsRepository repository;

  GetConcreteDataStatistics(this.repository);

  @override
  Future<Either<Failure, DataStatistics>> execute(String params) async {
    return await repository.getConcreteDataStatistics(params);
  }
}
