import 'package:dio_clean_learn/features/auth/presentation/screens/login_screen.dart';
import 'package:dio_clean_learn/features/auth/presentation/screens/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// Router class using the [GoRouter] package.
///
/// This class is responsible for handling the routing of the application.
final router = GoRouter(
  routes: [
    // Add your routes here
    // Auth routes
    GoRoute(
        path: LoginScreen.screenName,
        pageBuilder: (context, state) =>
            const MaterialPage(child: LoginScreen())),
    GoRoute(
        path: RegisterScreen.screenName,
        pageBuilder: (context, state) =>
            const MaterialPage(child: RegisterScreen())),
  ],
  initialLocation: LoginScreen.screenName,
  debugLogDiagnostics: true,
);
