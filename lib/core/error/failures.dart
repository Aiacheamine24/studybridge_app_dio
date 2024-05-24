class Failure {
  final String message;
  final String type = 'failure';
  final int statusCode;
  Failure({
    required this.message,
    this.statusCode = 500,
  });
}
