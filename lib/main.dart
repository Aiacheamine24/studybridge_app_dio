import 'package:dio_clean_learn/core/app/app.dart';
import 'package:dio_clean_learn/core/init_dependencies/init_dependencies.dart';
import 'package:dio_clean_learn/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_strategy/url_strategy.dart';

void main() async {
  // Ensure that the WidgetsBinding has been initialized before calling setPathUrlStrategy
  WidgetsFlutterBinding.ensureInitialized();
  // Set the URL strategy for handling URLs
  setPathUrlStrategy();
  // Initialize the dependencies
  await initDependencies();
  // Run the app
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider<AuthBloc>(create: (context) => getItInstance()),
    ],
    child: const App(),
  ));
}
