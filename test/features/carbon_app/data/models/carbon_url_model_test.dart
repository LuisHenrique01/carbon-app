import 'dart:convert';
import 'package:carbon_app/features/carbon_app/data/models/carbon_url_model.dart';
import 'package:carbon_app/features/carbon_app/domain/entities/carbon_url.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../fixtures/fixtures_reader.dart';

void main() {
  final tCarbonUrlModel = CarbonUrlModel(
      url: "https://www.google.com.br/",
      green: true,
      bytes: 807022,
      cleanerThan: 0.83);

  test('Test model carbonUrl', () async {
    expect(tCarbonUrlModel, isA<CarbonUrl>());
  });

  test('fromJson', () async {
    final Map<String, dynamic> jsonMap =
        json.decode(fixture('carbon_url.json'));
    final result = CarbonUrlModel.fromJson(jsonMap);
    expect(result, tCarbonUrlModel);
  });

  test('toJson', () async {
    final result = tCarbonUrlModel.toJson();
    final expectedJsonMap = {
      "url": "https://www.google.com.br/",
      "green": true,
      "bytes": 807022,
      "cleanerThan": 0.83
    };
    expect(result, expectedJsonMap);
  });
}
