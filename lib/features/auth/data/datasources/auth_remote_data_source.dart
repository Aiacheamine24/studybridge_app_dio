abstract interface class AuthRemoteDataSource {
  /// Register a new user
  ///
  /// Throws a [ServerException] for all error codes.
  Future<void> registerUser({
    required String username,
    required String email,
    required String password,
  });

  /// Login an existing user
  ///
  /// Throws a [ServerException] for all error codes.
  Future<void> loginUser({
    required String identifier,
    required String password,
  });

  /// Logout the current user
  ///
  /// Throws a [ServerException] for all error codes.
  // Future<void> logoutUser();
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  @override
  Future<void> loginUser(
      {required String identifier, required String password}) {
    // TODO: implement loginUser
    throw UnimplementedError();
  }

  @override
  Future<void> registerUser(
      {required String username,
      required String email,
      required String password}) {
    // TODO: implement registerUser
    throw UnimplementedError();
  }
}
