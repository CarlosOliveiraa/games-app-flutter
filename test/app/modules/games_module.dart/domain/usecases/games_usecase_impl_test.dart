import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:games_app_flutter/app/modules/games_module.dart/domain/entities/games_entity.dart';
import 'package:games_app_flutter/app/modules/games_module.dart/domain/errors/games_failure.dart';
import 'package:games_app_flutter/app/modules/games_module.dart/domain/repositories/games_repository.dart';
import 'package:games_app_flutter/app/modules/games_module.dart/domain/usecases/games_usecase_impl.dart';
import 'package:mocktail/mocktail.dart';

class GamesRepositoryMock extends Mock implements GamesRepository {}

void main() {
  final repository = GamesRepositoryMock();
  final usecase = GamesUsecaseImpl(repository: repository);

  test("Shoud return GamesEntity with success", () async {
    when(repository.fetch)
        .thenAnswer((_) async => const Right(<GamesEntity>[]));

    final result = await usecase();
    expect(result.isRight(), true);
    expect(result.fold((l) => l, (r) => r), isA<List<GamesEntity>>());
    verify(repository.fetch).called(1);
  });
  test("Shoud return GamesFailure when process is failed", () async {
    when(repository.fetch)
        .thenAnswer((_) async => Left(GamesFailure(message: "")));

    final result = await usecase();
    expect(result.isLeft(), true);
    expect(result.fold((l) => l, (r) => r), isA<GamesFailure>());
    verify(repository.fetch).called(1);
  });
}
