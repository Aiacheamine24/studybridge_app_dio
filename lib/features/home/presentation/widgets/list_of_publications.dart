import 'package:dio_clean_learn/core/constants/app_sizes.dart';
import 'package:dio_clean_learn/features/home/domaine/entites/publication.dart';
import 'package:dio_clean_learn/features/home/presentation/widgets/publication.dart';
import 'package:flutter/material.dart';

class ListOfPublications extends StatelessWidget {
  const ListOfPublications({super.key});

  @override
  Widget build(BuildContext context) {
    final List<PublicationEntity> publications = [
      PublicationEntity(
        id: '1',
        title: 'Title 1',
        publicationPicture: 'https://via.placeholder.com/150',
        createdAt: DateTime.now(),
        author: Author(
          id: '1',
          username: 'Author 1',
          email: 'Author 1 email',
          profilePicture: 'https://via.placeholder.com/150',
        ),
        price: 10.0,
        categoryDetails: [],
        description: 'Description 1',
        updatedAt: DateTime.now(),
      ),
    ];

    return ListView.builder(
      padding: const EdgeInsets.symmetric(
        horizontal: Sizes.p12,
        vertical: Sizes.p16,
      ),
      itemCount: publications.length,
      itemBuilder: (context, index) {
        return Publication(
          key: Key(publications[index].id),
          publication: publications[index],
        );
      },
    );
  }
}
