abstract class Failure {
  final String message;

  Failure(this.message);
}

class ServerFaulier extends Failure {
  ServerFaulier(super.message);
}
