import 'package:dartz/dartz.dart';
import 'package:games_app_flutter/app/modules/games_module.dart/domain/entities/games_entity.dart';
import 'package:games_app_flutter/app/modules/games_module.dart/domain/errors/games_failure.dart';
import 'package:games_app_flutter/app/modules/games_module.dart/domain/usecases/games_usecase.dart';

import '../repositories/games_repository.dart';

class GamesUsecaseImpl implements GamesUsecase {
  final GamesRepository repository;

  GamesUsecaseImpl({required this.repository});

  @override
  Future<Either<GamesFailure, List<GamesEntity>>> call() async {
    final result = await repository.fetch();
    return result;
  }
}
