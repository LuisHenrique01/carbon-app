import 'package:carbon_app/core/platform/network_info.dart';
import 'package:carbon_app/features/carbon_app/data/datasources/carbon_url_local_data_sources.dart';
import 'package:carbon_app/features/carbon_app/data/datasources/carbon_url_remote_data_sources.dart';
import 'package:carbon_app/features/carbon_app/data/repositories/carbon_url_repository.dart';
import 'package:carbon_app/features/carbon_app/domain/repositories/carbon_url_repository.dart';
import 'package:carbon_app/features/carbon_app/domain/usecases/get_concrete_carbon_url.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

class MockCarbonUrlRepository extends Mock implements CarbonUrlRepository {}

class MockRemoteDataSource extends Mock implements CarbonUrlRemoteDataSource {}

class MockLocalDataSource extends Mock implements CarbonUrlLocalDataSource {}

class MockNetworkInfo extends Mock implements NetworkInfo {}

@GenerateMocks([MockCarbonUrlRepository])
void main() {
  final repository = CarbonUrlRepositoryImpl(
    remoteDataSource: MockRemoteDataSource(),
    localDataSource: MockLocalDataSource(),
    networkInfo: MockNetworkInfo(),
  );
  final usecase = GetConcreteCarbonUrl(repository);

  const String url = 'https://www.google.com.br/';

  test("Devemos pegar dados de um site", () async {
    final test = await usecase.execute(url);

    expect(test.isRight(), equals(true));
  });
}
