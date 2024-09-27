import 'package:flutter_test/flutter_test.dart';
import 'package:games_app_flutter/app/modules/home_module.dart/domain/entities/example_entity.dart';
import 'package:games_app_flutter/app/modules/home_module.dart/infra/data/example_datasource.dart';
import 'package:games_app_flutter/app/modules/home_module.dart/infra/repositories/example_repository_impl.dart';
import 'package:mocktail/mocktail.dart';

class ExampleDatasourceMock extends Mock implements ExampleDatasource {}

void main() {
  final datasource = ExampleDatasourceMock();
  final repository = ExampleRepositoryImpl(datasource: datasource);
  final entity = ExampleEntity(id: 1, name: 'name');

  test('Should return ExampleEntity with success!', () async {
    when(datasource.fetch).thenAnswer((_) async => entity);

    final result = await repository.fetchExample();

    expect(result.isRight(), true);
    expect(result.fold((l) => l, (r) => r), isA<ExampleEntity>());
  });
}
