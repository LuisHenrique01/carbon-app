import 'dart:convert';

import 'package:carbon_app/features/carbon_app/data/models/data_statistics.dart';
import 'package:carbon_app/features/carbon_app/domain/entities/data_statistics.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../fixtures/fixtures_reader.dart';

void main() {
  final tGridModel =
      GridModel(grams: 0.0002517412416636944, litres: 0.00014001847861334682);
  final tGridRenewableModel =
      GridModel(grams: 0.000218251682817936, litres: 0.00012139158598333597);
  final tCo2Model = Co2Model(grid: tGridModel, renewable: tGridRenewableModel);
  final tStatistics = StatisticsModel(
      adjustedBytes: 755, energy: 5.69550320506096e-7, co2: tCo2Model);
  final tDataStatistics =
      DataStatisticsModel(statistics: tStatistics, cleanerThan: 1);

  test('Test data statistics model', () async {
    expect(tDataStatistics, isA<DataStatistics>());
  });

  test('fromJson', () async {
    final Map<String, dynamic> jsonMap =
        json.decode(fixture('data_statistics.json'));
    final result = DataStatisticsModel.fromJson(jsonMap);
    expect(result, tDataStatistics);
  });

  test('toJson', () async {
    final result = tDataStatistics.toJson();
    final expectedJsonMap = {
      "statistics": {
        "adjustedBytes": 755,
        "energy": 5.69550320506096e-7,
        "co2": {
          "grid": {
            "grams": 0.0002517412416636944,
            "litres": 0.00014001847861334682
          },
          "renewable": {
            "grams": 0.000218251682817936,
            "litres": 0.00012139158598333597
          }
        }
      },
      "cleanerThan": 1
    };
    expect(result, expectedJsonMap);
  });
}
