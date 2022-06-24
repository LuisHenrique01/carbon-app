import 'package:carbon_app/features/carbon_app/data/models/carbon_url_model.dart';

abstract class CarbonUrlRemoteDataSource {
  Future<CarbonUrlModel> getConcreteCarbonUrl(String url);
}
