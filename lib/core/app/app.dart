import 'package:dio_clean_learn/core/constants/app_config.dart';
import 'package:dio_clean_learn/core/routing/routing.dart';
import 'package:dio_clean_learn/core/theme/theme.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: AppConfig.appName,
      routerConfig: router,
      routeInformationParser: null,
      routeInformationProvider: null,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
    );
  }
}
