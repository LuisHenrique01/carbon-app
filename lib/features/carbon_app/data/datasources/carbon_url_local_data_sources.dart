import 'package:carbon_app/features/carbon_app/data/models/carbon_url_model.dart';

abstract class CarbonUrlLocalDataSource {
  Future<CarbonUrlModel> getLastCarbonUrl();

  Future<void> cacheCarbonUrl(CarbonUrlModel carbonToCache);
}
