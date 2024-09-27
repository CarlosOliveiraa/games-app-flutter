import '../../domain/entities/example_entity.dart';

abstract class ExampleDatasource {
  Future<ExampleEntity> fetch();
}
