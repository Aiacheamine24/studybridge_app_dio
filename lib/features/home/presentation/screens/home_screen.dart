import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  // Default name page
  static const String defaultName = "home";
  static const IconData defaultIcon = Icons.home_outlined;
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Home Screen"),
    );
  }
}
