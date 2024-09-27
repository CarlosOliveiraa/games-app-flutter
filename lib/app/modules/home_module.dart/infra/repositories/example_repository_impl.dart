import 'package:dartz/dartz.dart';
import 'package:games_app_flutter/app/modules/home_module.dart/domain/entities/example_entity.dart';
import 'package:games_app_flutter/app/modules/home_module.dart/domain/errors/example_entity_failure.dart';
import 'package:games_app_flutter/app/modules/home_module.dart/domain/repositories/example_repository.dart';
import 'package:games_app_flutter/app/modules/home_module.dart/infra/data/example_datasource.dart';

class ExampleRepositoryImpl implements ExampleRepository {
  final ExampleDatasource datasource;

  ExampleRepositoryImpl({required this.datasource});

  @override
  Future<Either<ExampleEntityFailure, ExampleEntity>> fetchExample() async {
    try {
      final result = await datasource.fetch();
      return Right(result);
    } catch (failure) {
      return Left(ExampleEntityFailure(message: failure.toString()));
    }
  }
}
