import 'package:flutter/material.dart';
import 'package:dio_clean_learn/features/home/presentation/screens/home_screen.dart';
import 'package:dio_clean_learn/features/home/presentation/screens/profile_screen.dart';
import 'package:dio_clean_learn/features/home/presentation/screens/settings_screen.dart';

class HomeBottomNavbarScreen extends StatefulWidget {
  static const defaultName = "/home-screen";
  const HomeBottomNavbarScreen({super.key});

  @override
  State<HomeBottomNavbarScreen> createState() => _HomeBottomNavbarScreenState();
}

class _HomeBottomNavbarScreenState extends State<HomeBottomNavbarScreen> {
  // Properties
  int _selectedIndex = 0;
  final List<Widget> _screens = [
    const HomeScreen(),
    const ProfileScreen(),
    const SettingsScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          // Small screen - show bottom navigation bar
          return Scaffold(
            body: _screens[_selectedIndex],
            bottomNavigationBar: BottomNavigationBar(
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(HomeScreen.defaultIcon),
                  label: HomeScreen.defaultName,
                ),
                BottomNavigationBarItem(
                  icon: Icon(ProfileScreen.defaultIcon),
                  label: ProfileScreen.defaultName,
                ),
                BottomNavigationBarItem(
                  icon: Icon(SettingsScreen.defaultIcon),
                  label: SettingsScreen.defaultName,
                ),
              ],
              currentIndex: _selectedIndex,
              selectedItemColor: Colors.amber[800],
              onTap: _onItemTapped,
            ),
          );
        } else {
          // Large screen - show side navigation bar
          return Scaffold(
            body: Row(
              children: [
                NavigationRail(
                  selectedIndex: _selectedIndex,
                  onDestinationSelected: _onItemTapped,
                  labelType: NavigationRailLabelType.all,
                  destinations: const [
                    NavigationRailDestination(
                      icon: Icon(HomeScreen.defaultIcon),
                      label: Text(HomeScreen.defaultName),
                    ),
                    NavigationRailDestination(
                      icon: Icon(ProfileScreen.defaultIcon),
                      label: Text(ProfileScreen.defaultName),
                    ),
                    NavigationRailDestination(
                      icon: Icon(SettingsScreen.defaultIcon),
                      label: Text(SettingsScreen.defaultName),
                    ),
                  ],
                  selectedIconTheme: IconThemeData(color: Colors.amber[800]),
                ),
                Expanded(
                  child: _screens[_selectedIndex],
                ),
              ],
            ),
          );
        }
      },
    );
  }
}
