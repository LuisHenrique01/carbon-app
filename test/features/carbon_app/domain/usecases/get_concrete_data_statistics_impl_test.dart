import 'package:carbon_app/core/platform/network_info.dart';
import 'package:carbon_app/features/carbon_app/data/datasources/data_statistics_local_data_sources.dart';
import 'package:carbon_app/features/carbon_app/data/datasources/data_statistics_remote_data_sources.dart';
import 'package:carbon_app/features/carbon_app/data/repositories/data_statistics_repository.dart';
import 'package:carbon_app/features/carbon_app/domain/repositories/data_statistcs_repository.dart';
import 'package:carbon_app/features/carbon_app/domain/usecases/get_concrete_data_statistics.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

class MockDataStatisticsRepository extends Mock
    implements DataStatisticsRepository {}

class MockRemoteDataSource extends Mock
    implements DataStatisticsRemoteDataSource {}

class MockLocalDataSource extends Mock
    implements DataStatisticsLocalDataSource {}

class MockNetworkInfo extends Mock implements NetworkInfo {}

@GenerateMocks([MockDataStatisticsRepository])
void main() {
  final repository = DataStatisticsRepositoryImpl(
    remoteDataSource: MockRemoteDataSource(),
    localDataSource: MockLocalDataSource(),
    networkInfo: MockNetworkInfo(),
  );
  final usecase = GetConcreteDataStatistics(repository);

  const int bytes = 1000;
  const int green = 1;
  const String params = "bytes=$bytes&green=$green";

  test('Validar a chama a API de estatisticas', () async {
    final test = await usecase.execute(params);

    expect(test.isRight(), equals(true));
  });
}
