import 'package:dio_clean_learn/core/constants/app_sizes.dart';
import 'package:flutter/material.dart';

class Filters extends StatelessWidget {
  const Filters({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // Min width of the side image
      constraints: const BoxConstraints(maxWidth: 350, minWidth: 250),
      color: Theme.of(context).dialogBackgroundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          gapH24,
          Padding(
            padding: const EdgeInsets.all(Sizes.p16),
            child: Text("Recherche avancee",
                style: Theme.of(context).textTheme.displayLarge),
          ),
          gapH24,
          Text("Filter 1"),
          Text("Filter 2"),
          Text("Filter 3"),
          Text("Filter 4"),
          Text("Filter 5"),
        ],
      ),
    );
  }
}