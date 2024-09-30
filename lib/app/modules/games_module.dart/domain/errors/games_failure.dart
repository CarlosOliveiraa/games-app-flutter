abstract class Failure implements Exception {}

class GamesFailure extends Failure {
  final String message;

  GamesFailure({required this.message});
}
