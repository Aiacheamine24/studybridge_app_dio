import 'package:dio/dio.dart';
import 'package:dio_clean_learn/core/network/connection_checker.dart';
import 'package:dio_clean_learn/core/network/networking.dart';
import 'package:dio_clean_learn/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:dio_clean_learn/features/auth/domaine/repository/auth_repository.dart';
import 'package:dio_clean_learn/features/auth/domaine/usecases/login_user.dart';
import 'package:dio_clean_learn/features/auth/domaine/usecases/register_user.dart';
import 'package:dio_clean_learn/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

final getItInstance = GetIt.instance;

Future<void> initDependencies() async {
  // Register singleton dependencies

  // dio flutter_secure_storage
  getItInstance
    ..registerLazySingleton(() => Dio())
    ..registerLazySingleton(() => const FlutterSecureStorage())
    ..registerLazySingleton(() => InternetConnectionChecker())
    ..registerLazySingleton(() => NetworkingImpl(
        connectionChecker: getItInstance<ConnectionChecker>(),
        dio: getItInstance<Dio>()));

  // Register factory dependencies
  getItInstance
    ..registerFactory<AuthRepositoryDomaineLayer>(
        () => AuthRepositoryImplDataLayer(
              authRepositoryDomaineLayer: getItInstance(),
            ))
    ..registerFactory(() => UserLoginUsecase(
          authRepositoryDomaineLayer:
              getItInstance<AuthRepositoryDomaineLayer>(),
        ))
    ..registerFactory(() => UserRegisterUsecase(
          authRepositoryDomaineLayer:
              getItInstance<AuthRepositoryDomaineLayer>(),
        ))
    ..registerFactory(() => AuthBloc(
          userLoginUsecase: getItInstance<UserLoginUsecase>(),
          userRegisterUsecase: getItInstance<UserRegisterUsecase>(),
        ))
    ..registerFactory(() => ConnectionCheckerImpl(
        internetConnection: getItInstance<InternetConnectionChecker>()));
}
