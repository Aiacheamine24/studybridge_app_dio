// ignore_for_file: implementation_imports
import 'package:dio_clean_learn/core/entities/user.dart';
import 'package:dio_clean_learn/core/error/failures.dart';
import 'package:dio_clean_learn/features/auth/domaine/repository/auth_repository.dart';
import 'package:fpdart/src/either.dart';

class AuthRepositoryImplDataLayer implements AuthRepositoryDomaineLayer {
  final AuthRepositoryDomaineLayer authRepositoryDomaineLayer;
  const AuthRepositoryImplDataLayer({required this.authRepositoryDomaineLayer});

  @override
  Future<Either<Failure, UserEntity>> signInWithIdentifierAndPassowrd(
          {required String identifier, required String password}) =>
      authRepositoryDomaineLayer.signInWithIdentifierAndPassowrd(
          identifier: identifier, password: password);

  @override
  Future<Either<Failure, UserEntity>> signUpWithUsernameAndEmailAndPassowrd(
          {required String username,
          required String email,
          required String password}) =>
      authRepositoryDomaineLayer.signUpWithUsernameAndEmailAndPassowrd(
          username: username, email: email, password: password);
}
