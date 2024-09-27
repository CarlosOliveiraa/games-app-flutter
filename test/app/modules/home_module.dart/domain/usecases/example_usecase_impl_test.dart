import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:games_app_flutter/app/modules/home_module.dart/domain/entities/example_entity.dart';
import 'package:games_app_flutter/app/modules/home_module.dart/domain/repositories/example_repository.dart';
import 'package:games_app_flutter/app/modules/home_module.dart/domain/usecases/example_usecase_impl.dart';
import 'package:mocktail/mocktail.dart';

class ExampleRepositoryMock extends Mock implements ExampleRepository {}

void main() {
  final repository = ExampleRepositoryMock();
  final entity = ExampleEntity(id: 1, name: 'name');
  final usecase = ExampleUsecaseImpl(exampleRepository: repository);

  test("Should return ExampleEntity", () async {
    when(repository.fetchExample).thenAnswer((_) async => Right(entity));

    final result = await usecase();
    expect(result.fold((l) => l, (r) => r), isA<ExampleEntity>());
  });
}
