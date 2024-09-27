abstract class Failure implements Exception {}

class ExampleEntityFailure extends Failure {
  final String message;

  ExampleEntityFailure({required this.message});
}
