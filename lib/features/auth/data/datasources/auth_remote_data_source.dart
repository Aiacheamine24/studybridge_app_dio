import 'package:dio_clean_learn/core/constants/app_constants.dart';
import 'package:dio_clean_learn/core/error/exceptions.dart';
import 'package:dio_clean_learn/core/network/networking.dart';
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
  final Networking networking;
  const AuthRemoteDataSourceImpl({required this.networking});

  @override
  // Future<UserModelDataLayer> loginUser(
  Future<UserModelDataLayer> loginUser(
      {required String identifier, required String password}) async {
    try {
      final response = await networking
          .post(path: '${AppConstants.baseUrl}/auth/login', data: {
        'identifier': identifier,
        'password': password,
      });

      // Assuming that the response body is a Map<String, dynamic>
      final data = response.data as Map<String, dynamic>;
      return UserModelDataLayer.fromJsonLogin(data);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<UserModelDataLayer> registerUser(
      {required String username,
      required String email,
      required String password}) async {
    try {
      final response = await networking
          .post(path: '${AppConstants.baseUrl}/auth/register', data: {
        'username': username,
        'email': email,
        'password': password,
      });

      // Assuming that the response body is a Map<String, dynamic>
      final data = response.data as Map<String, dynamic>;
      return UserModelDataLayer.fromJsonRegister(data);
    } catch (e) {
      rethrow;
    }
  }
}
