import 'package:dio/dio.dart';
import 'package:dio_clean_learn/core/network/connection_checker.dart';
import 'package:dio_clean_learn/core/network/networking.dart';
import 'package:dio_clean_learn/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:dio_clean_learn/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:dio_clean_learn/features/auth/domaine/repository/auth_repository.dart';
import 'package:dio_clean_learn/features/auth/domaine/usecases/login_user.dart';
import 'package:dio_clean_learn/features/auth/domaine/usecases/register_user.dart';
import 'package:dio_clean_learn/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
// import 'package:internet_connection_checker/internet_connection_checker.dart';

final getItInstance = GetIt.instance;

Future<void> initDependencies() async {
  // Register singleton dependencies
  getItInstance
    ..registerLazySingleton<Dio>(() => Dio())
    ..registerLazySingleton<FlutterSecureStorage>(
        () => const FlutterSecureStorage())
    // ..registerLazySingleton<InternetConnectionChecker>(
    // () => InternetConnectionChecker());
    // ..registerLazySingleton<ConnectionChecker>(() =>
    // ConnectionCheckerImpl(internetConnection: InternetConnectionChecker()))
    ..registerLazySingleton<Networking>(() => NetworkingImpl(
        // connectionChecker: getItInstance(),
        dio: getItInstance()));

  // Register factory dependencies
  getItInstance
    ..registerFactory<AuthRemoteDataSource>(() => AuthRemoteDataSourceImpl(
          networking: getItInstance(),
        ))
    ..registerFactory<AuthRepositoryDomaineLayer>(
        () => AuthRepositoryImplDataLayer(
              authRemoteDataSource: getItInstance(),
            ))
    ..registerFactory<UserLoginUsecase>(() => UserLoginUsecase(
          authRepositoryDomaineLayer: getItInstance(),
        ))
    ..registerFactory<UserRegisterUsecase>(() => UserRegisterUsecase(
          authRepositoryDomaineLayer: getItInstance(),
        ))
    ..registerFactory<AuthBloc>(() => AuthBloc(
          userLoginUsecase: getItInstance(),
          userRegisterUsecase: getItInstance(),
        ));
}
