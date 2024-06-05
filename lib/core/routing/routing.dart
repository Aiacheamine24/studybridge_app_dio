import 'package:dio_clean_learn/features/auth/presentation/screens/auth_screen.dart';
import 'package:dio_clean_learn/features/home/presentation/screens/home_bottom_navbar_screen.dart';
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
    // Home Bottom_screen
    GoRoute(
      path: HomeBottomNavbarScreen.defaultName,
      pageBuilder: (context, state) =>
          const MaterialPage(child: HomeBottomNavbarScreen()),
    )
  ],
  initialLocation: AuthScreen.screenName,
  debugLogDiagnostics: true,
);
