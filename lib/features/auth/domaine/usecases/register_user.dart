import 'package:dio_clean_learn/core/entities/user.dart';
import 'package:dio_clean_learn/core/error/failures.dart';
import 'package:dio_clean_learn/core/usecase/usecase.dart';
import 'package:dio_clean_learn/features/auth/domaine/repository/auth_repository.dart';
import 'package:fpdart/fpdart.dart';

class UserRegisterUsecase implements UseCase<UserEntity, UserRegisterParams> {
  final AuthRepositoryDomaineLayer authRepositoryDomaineLayer;
  const UserRegisterUsecase({required this.authRepositoryDomaineLayer});

  @override
  Future<Either<Failure, UserEntity>> call(UserRegisterParams params) {
    return authRepositoryDomaineLayer.signUpWithUsernameAndEmailAndPassowrd(
      username: params.username,
      email: params.email,
      password: params.password,
    );
  }
}

class UserRegisterParams {
  final String username;
  final String email;
  final String password;

  UserRegisterParams({
    required this.username,
    required this.email,
    required this.password,
  });
}
