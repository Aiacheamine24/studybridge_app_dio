import 'package:dio_clean_learn/core/entities/user.dart';
import 'package:dio_clean_learn/core/error/failures.dart';
import 'package:dio_clean_learn/core/usecase/usecase.dart';
import 'package:dio_clean_learn/features/auth/domaine/repository/auth_repository.dart';
import 'package:fpdart/fpdart.dart';

class UserLoginUsecase implements UseCase<UserEntity, UserLoginParams> {
  final AuthRepositoryDomaineLayer authRepositoryDomaineLayer;
  const UserLoginUsecase({required this.authRepositoryDomaineLayer});

  @override
  Future<Either<Failure, UserEntity>> call(UserLoginParams params) {
    return authRepositoryDomaineLayer.signInWithIdentifierAndPassowrd(
      identifier: params.identifier,
      password: params.password,
    );
  }
}

class UserLoginParams {
  final String identifier;
  final String password;

  UserLoginParams({
    required this.identifier,
    required this.password,
  });
}
