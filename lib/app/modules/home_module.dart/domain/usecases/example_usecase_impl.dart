import 'package:dartz/dartz.dart';
import 'package:games_app_flutter/app/modules/home_module.dart/domain/entities/example_entity.dart';
import 'package:games_app_flutter/app/modules/home_module.dart/domain/errors/example_entity_failure.dart';
import 'package:games_app_flutter/app/modules/home_module.dart/domain/repositories/example_repository.dart';
import 'package:games_app_flutter/app/modules/home_module.dart/domain/usecases/example_usecase.dart';

class ExampleUsecaseImpl implements ExampleUsecase {
  final ExampleRepository exampleRepository;

  ExampleUsecaseImpl({required this.exampleRepository});

  @override
  Future<Either<ExampleEntityFailure, ExampleEntity>> call() async {
    return exampleRepository.fetchExample();
  }
}
