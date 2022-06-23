import 'dart:convert';

import 'package:carbon_app/core/app/constants/app_constants.dart';
import 'package:carbon_app/core/app/constants/status_constants.dart';
import 'package:carbon_app/core/connections/web_client.dart';
import 'package:carbon_app/core/error/failures.dart';
import 'package:carbon_app/features/carbon_app/domain/entities/data_statistics.dart';
import 'package:carbon_app/features/carbon_app/domain/repositories/data_statistcs.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;

@Injectable(as: DataStatisticsRepository)
class DataStatisticsRepositoryImpl implements DataStatisticsRepository {
  FunctionForGetDataStatistics function = FunctionForGetDataStatistics();

  @override
  Future<Either<Failure, DataStatistics>> getConcreteDataStatistics(
      String params) async {
    final http.Response response =
        await function.requestGetdataStatitiscs(params);

    if (function.isRequestValid(response)) {
      return Right(function.returnDataStatisticsModel(response));
    }
    return Left(ServerFailure());
  }
}

class FunctionForGetDataStatistics {
  Future<http.Response> requestGetdataStatitiscs(String params) async {
    return await client
        .get(Uri.parse("${AppConstants.API_GET_STATISTICS}$params"));
  }

  bool isRequestValid(http.Response response) {
    return response.statusCode == StatusCode.OK;
  }

  Map<String, dynamic> getJson(http.Response response) {
    return json.decode(response.body);
  }

  DataStatistics returnDataStatisticsModel(http.Response response) {
    return DataStatistics.fromJson(getJson(response));
  }
}
