import 'package:dartz/dartz.dart';
import 'package:games_app_flutter/app/modules/home_module.dart/domain/entities/example_entity.dart';
import 'package:games_app_flutter/app/modules/home_module.dart/domain/errors/example_entity_failure.dart';

abstract class ExampleRepository {
  Future<Either<ExampleEntityFailure, ExampleEntity>> fetchExample();
}
