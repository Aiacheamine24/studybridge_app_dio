import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  // Default name page
  static const String defaultName = "settings";
  static const IconData defaultIcon = Icons.settings;
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Settings Screen"),
    );
  }
}
