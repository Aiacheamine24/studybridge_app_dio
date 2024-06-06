import 'package:dio_clean_learn/features/home/presentation/widgets/publication_widgets.dart';
import 'package:flutter/material.dart';

class Publication extends StatelessWidget {
  const Publication({super.key, required this.publication});

  final dynamic publication;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return buildVerticalLayout(
              context: context, publication: publication);
        } else {
          return buildHorizontalLayout(
              context: context, publication: publication);
        }
      },
    );
  }
}
