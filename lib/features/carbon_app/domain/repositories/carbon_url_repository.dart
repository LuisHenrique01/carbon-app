import 'package:carbon_app/core/error/failures.dart';
import 'package:carbon_app/features/carbon_app/domain/entities/carbon_url.dart';
import 'package:dartz/dartz.dart';

abstract class CarbonUrlRepository {
  Future<Either<Failure, CarbonUrl>> getConcreteCarbonUrl(String url);
}
