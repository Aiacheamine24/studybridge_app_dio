// ignore_for_file: implementation_imports
import 'package:dio/dio.dart';
import 'package:dio_clean_learn/core/entities/user.dart';
import 'package:dio_clean_learn/core/error/failures.dart';
import 'package:dio_clean_learn/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:dio_clean_learn/features/auth/domaine/repository/auth_repository.dart';
import 'package:fpdart/src/either.dart';

class AuthRepositoryImplDataLayer implements AuthRepositoryDomaineLayer {
  final AuthRemoteDataSource authRemoteDataSource;
  const AuthRepositoryImplDataLayer({required this.authRemoteDataSource});

  @override
  Future<Either<Failure, UserEntity>> signInWithIdentifierAndPassowrd(
      {required String identifier, required String password}) async {
    try {
      final res = await authRemoteDataSource.loginUser(
          identifier: identifier, password: password);
      return Right(UserEntity.fromModel(res));
    } catch (e) {
      if (e is DioException) {
        // Throw a ServerException with the server's error message
        return Left(Failure(
            message: e.response?.data['message'],
            statusCode: e.response?.statusCode as int));
      } else {
        // It's some other type of exception
        return Left(Failure(message: "An error occurred"));
      }
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signUpWithUsernameAndEmailAndPassowrd(
      {required String username,
      required String email,
      required String password}) async {
    try {
      final res = await authRemoteDataSource.registerUser(
          username: username, email: email, password: password);
      return Right(UserEntity.fromModel(res));
    } catch (e) {
      if (e is DioException) {
        // Throw a ServerException with the server's error message
        return Left(Failure(
            message: e.response?.data['message'],
            statusCode: e.response?.statusCode as int));
      } else {
        // It's some other type of exception
        return Left(Failure(message: "An error occurred"));
      }
    }
  }
}
