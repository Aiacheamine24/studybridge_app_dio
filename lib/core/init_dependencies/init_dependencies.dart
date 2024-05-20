import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';

final getItInstance = GetIt.instance;

Future<void> initDependencies() async {
  // Register singleton dependencies

  // dio flutter_secure_storage
  getItInstance
    ..registerLazySingleton(() => Dio())
    ..registerLazySingleton(() => const FlutterSecureStorage());
}
