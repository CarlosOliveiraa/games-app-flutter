import 'package:dartz/dartz.dart';
import 'package:games_app_flutter/app/modules/games_module.dart/domain/entities/games_entity.dart';

import '../errors/games_failure.dart';

abstract class GamesUsecase {
  Future<Either<GamesFailure, List<GamesEntity>>> call();
}
