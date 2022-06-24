import 'package:carbon_app/features/carbon_app/data/models/data_statistics.dart';

abstract class DataStatisticsLocalDataSource {
  Future<DataStatisticsModel> getLastDataStatistics(String params);
}
