import 'package:carbon_app/features/carbon_app/data/models/data_statistics.dart';
import 'package:carbon_app/features/carbon_app/domain/entities/data_statistics.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final tGridModel =
      GridModel(grams: 0.0002517412416636944, litres: 0.00014001847861334682);
  final tCo2Model = Co2Model(grid: tGridModel, renewable: tGridModel);
  final tStatistics = Statistics(
      adjustedBytes: 755, energy: 5.69550320506096e-7, co2: tCo2Model);
  final tDataStatistics =
      DataStatisticsModel(statistics: tStatistics, cleanerThan: 1);

  test('Test data statistics model', () async {
    expect(tDataStatistics, isA<DataStatistics>());
  });
}
