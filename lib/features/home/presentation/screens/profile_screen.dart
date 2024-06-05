import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  // Default name page
  static const String defaultName = "profile";
  static const IconData defaultIcon = Icons.person;
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Profile Screen"),
    );
  }
}
