import 'package:dio_clean_learn/core/constants/app_sizes.dart';
import 'package:dio_clean_learn/features/home/presentation/widgets/publication.dart';
import 'package:flutter/material.dart';

class ListOfPublications extends StatelessWidget {
  const ListOfPublications({super.key});

  @override
  Widget build(BuildContext context) {
    final publications = [
      {
        "_id": "1",
        "title": "Title 1",
        "lesson": 2,
        "students": 198,
        "level": "Beginner",
        "review": 4.5,
        "reviewCount": 56,
        "price": 19.99,
        "image": "https://via.placeholder.com/150",
        "author": "Author 1",
        "authorImage": "https://via.placeholder.com/50",
        "authorSkill": "Skill 1"
      },
      {
        "_id": "2",
        "title": "Title 1",
        "lesson": 2,
        "students": 198,
        "level": "Beginner",
        "review": 4.5,
        "reviewCount": 56,
        "price": 19.99,
        "image": "https://via.placeholder.com/150",
        "author": "Author 1",
        "authorImage": "https://via.placeholder.com/50",
        "authorSkill": "Skill 1"
      },
      {
        "_id": "3",
        "title": "Title 1",
        "lesson": 2,
        "students": 198,
        "level": "Beginner",
        "review": 4.5,
        "reviewCount": 56,
        "price": 19.99,
        "image": "https://via.placeholder.com/150",
        "author": "Author 1",
        "authorImage": "https://via.placeholder.com/50",
        "authorSkill": "Skill 1"
      },
      {
        "_id": "4",
        "title": "Title 1",
        "lesson": 2,
        "students": 198,
        "level": "Beginner",
        "review": 4.5,
        "reviewCount": 56,
        "price": 19.99,
        "image": "https://via.placeholder.com/150",
        "author": "Author 1",
        "authorImage": "https://via.placeholder.com/50",
        "authorSkill": "Skill 1"
      },
      {
        "_id": "5",
        "title": "Title 1",
        "lesson": 2,
        "students": 198,
        "level": "Beginner",
        "review": 4.5,
        "reviewCount": 56,
        "price": 19.99,
        "image": "https://via.placeholder.com/150",
        "author": "Author 1",
        "authorImage": "https://via.placeholder.com/50",
        "authorSkill": "Skill 1"
      },
      {
        "_id": "6",
        "title": "Title 1",
        "lesson": 2,
        "students": 198,
        "level": "Beginner",
        "review": 4.5,
        "reviewCount": 56,
        "price": 19.99,
        "image": "https://via.placeholder.com/150",
        "author": "Author 1",
        "authorImage": "https://via.placeholder.com/50",
        "authorSkill": "Skill 1"
      },
      {
        "_id": "7",
        "title": "Title 1",
        "lesson": 2,
        "students": 198,
        "level": "Beginner",
        "review": 4.5,
        "reviewCount": 56,
        "price": 19.99,
        "image": "https://via.placeholder.com/150",
        "author": "Author 1",
        "authorImage": "https://via.placeholder.com/50",
        "authorSkill": "Skill 1"
      },
      {
        "_id": "8",
        "title": "Title 1",
        "lesson": 2,
        "students": 198,
        "level": "Beginner",
        "review": 4.5,
        "reviewCount": 56,
        "price": 19.99,
        "image": "https://via.placeholder.com/150",
        "author": "Author 1",
        "authorImage": "https://via.placeholder.com/50",
        "authorSkill": "Skill 1"
      },
    ];
    return ListView.builder(
      padding: const EdgeInsets.symmetric(
        horizontal: Sizes.p12,
        vertical: Sizes.p16,
      ),
      itemCount: publications.length,
      itemBuilder: (context, index) {
        return Publication(
          key: Key(publications[index]["_id"] as String),
          publication: publications[index],
        );
      },
    );
  }
}
