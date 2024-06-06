import 'package:dio_clean_learn/features/home/presentation/widgets/filters.dart';
import 'package:dio_clean_learn/features/home/presentation/widgets/list_of_publications.dart';
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
      body: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (width > 700)
                const Filters()
              else
                const SizedBox.shrink(), // Placeholder for the Row alignment
              const Expanded(
                flex: 1,
                child: Center(
                  child: ListOfPublications(),
                ),
              ),
            ],
          ),
          if (width <= 700)
            Positioned(
              bottom: 16.0,
              right: 16.0,
              child: FloatingActionButton(
                onPressed: () {},
                backgroundColor: Theme.of(context).primaryColor,
                elevation: 5,
                child: Icon(
                  Icons.filter_list,
                  color: Theme.of(context).iconTheme.color,
                  size: Theme.of(context).iconTheme.size,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
