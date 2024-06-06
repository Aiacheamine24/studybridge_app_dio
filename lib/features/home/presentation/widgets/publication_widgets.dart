import 'package:dio_clean_learn/core/constants/app_sizes.dart';
import 'package:flutter/material.dart';

class Publication extends StatelessWidget {
  const Publication({super.key, required this.publication});

  final publication;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return buildVerticalLayout(context);
        } else {
          return buildHorizontalLayout(context);
        }
      },
    );
  }

  Widget buildVerticalLayout(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 600, maxHeight: 600),
        child: Card(
          margin: const EdgeInsets.all(Sizes.p12),
          child: Padding(
            padding: const EdgeInsets.all(Sizes.p12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  publication['image'],
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: Sizes.p12),
                Text(publication['title'],
                    style: Theme.of(context).textTheme.titleSmall),
                const SizedBox(height: Sizes.p16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buildIconTextRow(
                        context: context,
                        icon: Icons.book,
                        text: 'Lesson: ${publication['lesson']}'),
                    buildIconTextRow(
                        context: context,
                        icon: Icons.people,
                        text: ' ${publication['students']}'),
                    buildIconTextRow(
                        context: context,
                        icon: Icons.star,
                        text: publication['level']),
                  ],
                ),
                const SizedBox(height: Sizes.p16),
                buildReviewBar(context: context, publication: publication),
                const SizedBox(height: Sizes.p16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Review: ${publication['review']}/5',
                        style: Theme.of(context).textTheme.bodySmall),
                    Text('Review Count: ${publication['reviewCount']}',
                        style: Theme.of(context).textTheme.bodySmall),
                  ],
                ),
                Text('Price: \$${publication['price']}',
                    style: Theme.of(context).textTheme.bodySmall),
                const Spacer(),
                buildAuthorSection(context: context, publication: publication),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildHorizontalLayout(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 600, maxHeight: 270),
        child: Card(
          margin: const EdgeInsets.all(Sizes.p12),
          child: Padding(
            padding: const EdgeInsets.all(Sizes.p12),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Left section: Image, takes all available space
                Expanded(
                  flex: 3,
                  child: Image.network(
                    publication['image'],
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: Sizes.p12),
                // Right section: Other details
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(publication['title'],
                          style: Theme.of(context).textTheme.titleSmall),
                      const SizedBox(height: Sizes.p16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          buildIconTextRow(
                              context: context,
                              icon: Icons.book,
                              text: 'Lesson: ${publication['lesson']}'),
                          buildIconTextRow(
                              context: context,
                              icon: Icons.people,
                              text: ' ${publication['students']}'),
                          buildIconTextRow(
                              context: context,
                              icon: Icons.star,
                              text: publication['level']),
                        ],
                      ),
                      const SizedBox(height: Sizes.p16),
                      buildReviewBar(
                          context: context, publication: publication),
                      const SizedBox(height: Sizes.p16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Review: ${publication['review']}/5',
                              style: Theme.of(context).textTheme.bodySmall),
                          Text('Review Count: ${publication['reviewCount']}',
                              style: Theme.of(context).textTheme.bodySmall),
                        ],
                      ),
                      Text('Price: \$${publication['price']}',
                          style: Theme.of(context).textTheme.bodySmall),
                      const Spacer(),
                      buildAuthorSection(
                          context: context, publication: publication),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget buildIconTextRow(
    {required IconData icon,
    required String text,
    required BuildContext context}) {
  return Row(
    children: [
      Icon(icon),
      const SizedBox(width: Sizes.p4),
      Text(text,
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(fontWeight: FontWeight.w600)),
    ],
  );
}

Widget buildReviewBar({required BuildContext context, required publication}) {
  return LayoutBuilder(
    builder: (BuildContext context, BoxConstraints constraints) {
      return SizedBox(
        width: double.infinity,
        height: 5,
        child: Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 1),
              width: double.infinity,
              height: 1,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.white, Colors.grey],
                  stops: [0.1, 0.8],
                ),
              ),
            ),
            Container(
              width: constraints.maxWidth * publication['review'] / 5,
              height: 3,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 241, 224, 192),
                    Color.fromARGB(255, 224, 101, 35)
                  ],
                  stops: [0.3, 0.8],
                ),
              ),
            ),
          ],
        ),
      );
    },
  );
}

Widget buildAuthorSection(
    {required BuildContext context, required publication}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(publication['authorImage']),
          ),
          const SizedBox(width: Sizes.p8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(publication['author'],
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(fontWeight: FontWeight.w600)),
              Text('${publication['authorSkill']}',
                  style: Theme.of(context).textTheme.bodyMedium),
            ],
          ),
        ],
      ),
      ElevatedButton(
        onPressed: () {},
        child: Row(
          children: [
            Text("Expand",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Colors.white, fontWeight: FontWeight.bold)),
            const SizedBox(width: Sizes.p4),
            const Icon(Icons.arrow_forward_ios, color: Colors.white, size: 16),
          ],
        ),
      ),
    ],
  );
}