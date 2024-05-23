import 'package:dio_clean_learn/features/auth/data/models/user_model.dart';

abstract interface class AuthRemoteDataSource {
  /// Register a new user
  ///
  /// Throws a [ServerException] for all error codes.
  Future<UserModelDataLayer> registerUser({
    required String username,
    required String email,
    required String password,
  });

  /// Login an existing user
  ///
  /// Throws a [ServerException] for all error codes.
  Future<UserModelDataLayer> loginUser({
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
  // Future<UserModelDataLayer> loginUser(
  Future<UserModelDataLayer> loginUser(
      {required String identifier, required String password}) async {
    try {
      print('Login user with identifier: $identifier and password: $password');
      return const UserModelDataLayer(
        id: '1',
        username: 'username',
        email: 'email',
        token: "dasd",
        isActive: true,
        isEmailVerified: true,
        permissions: [],
        profilePicture: '',
        roleId: '1',
      );
    } catch (e) {
      rethrow;
    }
  }

  @override
  // Future<UserModelDataLayer> registerUser(
  Future<UserModelDataLayer> registerUser(
      {required String username,
      required String email,
      required String password}) async {
    try {
      print(
          'Register user with username: $username, email: $email, and password: $password');
      return const UserModelDataLayer(
        id: '1',
        username: 'username',
        email: 'email',
        token: "dasd",
        isActive: true,
        isEmailVerified: true,
        permissions: [],
        profilePicture: '',
        roleId: '1',
      );
    } catch (e) {
      rethrow;
    }
  }
}
