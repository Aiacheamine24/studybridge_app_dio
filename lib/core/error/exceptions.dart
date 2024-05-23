class ServerException implements Exception {
  /// Error message
  final String message;

  /// ServerException Class Constructor
  const ServerException([this.message = 'Server Error']);
}
