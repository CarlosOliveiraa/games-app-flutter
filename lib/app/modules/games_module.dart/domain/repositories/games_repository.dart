import 'package:dartz/dartz.dart';

import '../entities/games_entity.dart';
import '../errors/games_failure.dart';

abstract class GamesRepository {
  Future<Either<GamesFailure, List<GamesEntity>>> fetch();
}
