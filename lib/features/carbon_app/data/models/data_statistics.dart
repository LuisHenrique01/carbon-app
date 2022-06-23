// ignore_for_file: must_be_immutable

import 'package:carbon_app/features/carbon_app/domain/entities/data_statistics.dart';

class DataStatisticsModel extends DataStatistics {
  DataStatisticsModel({required super.statistics, required super.cleanerThan})
      : super();

  factory DataStatisticsModel.fromJson(Map<String, dynamic> json) {
    return DataStatisticsModel(
        statistics: StatisticsModel.fromJson(json['statistics']),
        cleanerThan: json['cleanerThan']);
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['statistics'] = statistics?.toJson();
    data['cleanerThan'] = cleanerThan;
    return data;
  }
}

class StatisticsModel extends Statistics {
  StatisticsModel(
      {required super.adjustedBytes, required super.energy, required super.co2})
      : super();

  factory StatisticsModel.fromJson(Map<String, dynamic> json) {
    return StatisticsModel(
        adjustedBytes: json['adjustedBytes'],
        energy: json['energy'],
        co2: Co2Model.fromJson(json['co2']));
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['adjustedBytes'] = adjustedBytes;
    data['energy'] = energy;
    data['co2'] = co2?.toJson();
    return data;
  }
}

class Co2Model extends Co2 {
  Co2Model({required super.grid, required super.renewable}) : super();

  factory Co2Model.fromJson(Map<String, dynamic> json) {
    return Co2Model(
        grid: GridModel.fromJson(json['grid']),
        renewable: GridModel.fromJson(json['renewable']));
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['grid'] = grid?.toJson();
    data['renewable'] = renewable?.toJson();
    return data;
  }
}

class GridModel extends Grid {
  GridModel({required super.grams, required super.litres}) : super();

  factory GridModel.fromJson(Map<String, dynamic> json) {
    return GridModel(grams: json['grams'], litres: json['litres']);
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['grams'] = grams;
    data['litres'] = litres;
    return data;
  }
}
