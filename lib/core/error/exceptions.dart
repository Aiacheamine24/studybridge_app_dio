class ServerException implements Exception {
  /// Error message
  final String message;
  final int statusCode;

  /// ServerException Class Constructor
  const ServerException({this.message = 'Server Error', this.statusCode = 500});
}
