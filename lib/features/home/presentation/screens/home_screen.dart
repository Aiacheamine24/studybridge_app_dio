import 'package:dio_clean_learn/features/home/presentation/widgets/filters.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  // Default name page
  static const String defaultName = "home";
  static const IconData defaultIcon = Icons.home_outlined;
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Width of the screen
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (width > 700) const Filters(),
          const Expanded(
            flex: 1,
            child: Center(
              child: Text("Home Screen"),
            ),
          ),
        ],
      ),
    );
  }
}
