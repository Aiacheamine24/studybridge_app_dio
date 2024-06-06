import 'package:dio_clean_learn/features/home/presentation/widgets/bottom_navbar.dart';
import 'package:dio_clean_learn/features/home/presentation/widgets/side_navbar.dart';
import 'package:dio_clean_learn/features/profile/presentaion/screens/profile_screen.dart';
import 'package:dio_clean_learn/features/settings/presentaion/screens/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:dio_clean_learn/features/home/presentation/screens/home_screen.dart';

class HomeBottomNavbarScreen extends StatelessWidget {
  static const defaultName = "/home-screen";
  const HomeBottomNavbarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Properties
    final List<Map<String, dynamic>> screenInfo = [
      {
        'screen': const HomeScreen(),
        'icon': HomeScreen.defaultIcon,
        'label': HomeScreen.defaultName,
      },
      {
        'screen': const ProfileScreen(),
        'icon': ProfileScreen.defaultIcon,
        'label': ProfileScreen.defaultName,
      },
      {
        'screen': const SettingsScreen(),
        'icon': SettingsScreen.defaultIcon,
        'label': SettingsScreen.defaultName,
      },
    ];

    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          // Small screen - show bottom navigation bar
          return BottomNavbar(screenInfo: screenInfo);
        } else {
          // Large screen - show side navigation bar
          return SideNavbar(screenInfo: screenInfo);
        }
      },
    );
  }
}
