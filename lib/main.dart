import 'package:dio_clean_learn/core/app/app.dart';
import 'package:dio_clean_learn/core/init_dependencies/init_dependencies.dart';
import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';

void main() async {
  // Ensure that the WidgetsBinding has been initialized before calling setPathUrlStrategy
  WidgetsFlutterBinding.ensureInitialized();
  // Set the URL strategy for handling URLs
  setPathUrlStrategy();
  // Initialize the dependencies
  await initDependencies();
  // Run the app
  runApp(App());
}
