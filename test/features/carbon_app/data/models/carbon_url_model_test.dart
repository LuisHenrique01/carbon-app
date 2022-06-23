import 'package:carbon_app/features/carbon_app/data/models/carbon_url_model.dart';
import 'package:carbon_app/features/carbon_app/domain/entities/carbon_url.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final tCarbonUrlModel = CarbonUrlModel(
      url: 'www.google.com.br', green: true, bytes: 1500, cleanerThan: 0.85);

  test('Test model carbonUrl', () async {
    expect(tCarbonUrlModel, isA<CarbonUrl>());
  });
}
