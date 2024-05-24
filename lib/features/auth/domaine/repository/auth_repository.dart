import 'package:dio_clean_learn/core/entities/user.dart';
import 'package:dio_clean_learn/core/error/failures.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class AuthRepositoryDomaineLayer {
  /// This method is used to sign in with an identifier and password.
  ///
  /// The [identifier] parameter is the user's username or email.
  /// The [password] parameter is the user's password.
  Future<Either<Failure, UserEntity>> signInWithIdentifierAndPassowrd({
    required String identifier,
    required String password,
  });

  /// This method is used to sign up with a username, email, and password.
  ///
  /// The [username] parameter is the user's username.
  /// The [email] parameter is the user's email.
  /// The [password] parameter is the user's password.
  Future<Either<Failure, UserEntity>> signUpWithUsernameAndEmailAndPassowrd({
    required String username,
    required String email,
    required String password,
  });
}
