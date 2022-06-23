import 'package:carbon_app/features/carbon_app/data/repositories/carbon_url_repository.dart';
import 'package:carbon_app/features/carbon_app/domain/repositories/carbon_url_repository.dart';
import 'package:carbon_app/features/carbon_app/domain/usecases/get_concrete_carbon_url.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

class MockCarbonUrlRepository extends Mock implements CarbonUrlRepository {}

@GenerateMocks([MockCarbonUrlRepository])
void main() {
  final repository = CarbonUrlRepositoryImpl();
  final usecase = GetConcreteCarbonUrl(repository);

  const String url = 'https://www.google.com.br/';

  test("Devemos pegar dados de um site", () async {
    final test = await usecase.execute(url);

    expect(test.isRight(), equals(true));
  });
}
