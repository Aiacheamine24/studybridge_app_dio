import 'package:flutter/material.dart';

class TitleDecoration extends StatelessWidget {
  const TitleDecoration({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('Study',
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(color: Theme.of(context).colorScheme.primary)),
        Text('Bridge', style: Theme.of(context).textTheme.titleLarge),
      ],
    );
  }
}
