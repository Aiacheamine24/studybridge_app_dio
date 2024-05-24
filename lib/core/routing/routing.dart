import 'package:dio_clean_learn/features/auth/presentation/screens/auth_screen.dart';
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
        path: AuthScreen.screenName,
        pageBuilder: (context, state) =>
            const MaterialPage(child: AuthScreen())),
  ],
  initialLocation: AuthScreen.screenName,
  debugLogDiagnostics: true,
);
