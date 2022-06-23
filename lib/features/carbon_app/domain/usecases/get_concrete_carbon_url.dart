import 'package:carbon_app/core/error/failures.dart';
import 'package:carbon_app/core/usecases/usecases.dart';
import 'package:carbon_app/features/carbon_app/domain/entities/carbon_url.dart';
import 'package:carbon_app/features/carbon_app/domain/repositories/carbon_url_repository.dart';
import 'package:dartz/dartz.dart';

class GetConcreteCarbonUrl extends UseCase<CarbonUrl, String> {
  final CarbonUrlRepository repository;

  GetConcreteCarbonUrl(this.repository);

  @override
  Future<Either<Failure, CarbonUrl>> execute(String params) async {
    return await repository.getConcreteCarbonUrl(params);
  }
}
