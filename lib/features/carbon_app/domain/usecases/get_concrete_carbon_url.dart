import 'package:carbon_app/core/error/failures.dart';
import 'package:carbon_app/features/carbon_app/domain/entities/carbon_app.dart';
import 'package:carbon_app/features/carbon_app/domain/repositories/carbon_app_repository.dart';
import 'package:dartz/dartz.dart';

class GetConcreteCarbonUrl {
  final CarbonUrlRepository repository;

  GetConcreteCarbonUrl(this.repository);

  @override
  Future<Either<Failures, CarbonUrl>> execute(String params) async {
    return await repository.getConcreteCarbonUrl(params);
  }
}
