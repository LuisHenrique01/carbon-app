// ignore_for_file: depend_on_referenced_packages, non_constant_identifier_names

import 'dart:convert';
import 'package:carbon_app/core/app/constants/app_constants.dart';
import 'package:carbon_app/core/app/constants/status_constants.dart';
import 'package:carbon_app/core/connections/web_client.dart';
import 'package:carbon_app/core/error/failures.dart';
import 'package:carbon_app/features/carbon_app/domain/entities/carbon_url.dart';
import 'package:carbon_app/features/carbon_app/domain/repositories/carbon_url_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;

@Injectable(as: CarbonUrlRepository)
class CarbonUrlRepositoryImpl implements CarbonUrlRepository {
  FunctionForGetCarbonData function = FunctionForGetCarbonData();

  @override
  Future<Either<Failures, CarbonUrl>> getConcreteCarbonUrl(String url) async {
    final http.Response response = await function.requestGetCarbonData(url);

    if (function.isRequestValid(response)) {
      return Right(function.returnCarbonUrlModel(response));
    }
    return Left(ServerFailure());
  }
}

class FunctionForGetCarbonData {
  Future<http.Response> requestGetCarbonData(String url) async {
    return await client.get(Uri.parse("${AppConstants.API_GET_CARBON}$url"));
  }

  bool isRequestValid(http.Response response) {
    return response.statusCode == StatusCode.OK;
  }

  Map<String, dynamic> getJson(http.Response response) {
    return json.decode(response.body);
  }

  CarbonUrl returnCarbonUrlModel(http.Response response) {
    return CarbonUrl.fromJson(getJson(response));
  }
}
