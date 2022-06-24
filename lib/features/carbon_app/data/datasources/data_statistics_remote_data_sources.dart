import 'package:carbon_app/features/carbon_app/data/models/data_statistics.dart';

abstract class DataStatisticsRemoteDataSource {
  Future<DataStatisticsModel> getConcreteDataStatistics(String params);

  Future<void> cacheDataStatistics(DataStatisticsModel statisticsToCache);
}
