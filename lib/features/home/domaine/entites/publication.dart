import 'package:dio_clean_learn/features/home/data/models/publication_model.dart';

class PublicationEntity {
  final String id;
  final String title;
  final String description;
  final Author author;
  final String publicationPicture;
  final List<String> categoryDetails;
  final double price;
  final DateTime updatedAt;
  final DateTime createdAt;

  PublicationEntity({
    required this.id,
    required this.title,
    required this.description,
    required this.author,
    required this.publicationPicture,
    required this.categoryDetails,
    required this.updatedAt,
    required this.createdAt,
    this.price = 0.0,
  });

  factory PublicationEntity.fromModel(PublicationModelDataLayer model) {
    return PublicationEntity(
      id: model.id,
      title: model.title,
      description: model.description,
      author: model.author,
      categoryDetails: model.categoryDetails,
      publicationPicture: model.publicationPicture,
      updatedAt: model.updatedAt,
      createdAt: model.createdAt,
    );
  }
}

class Author {
  final String id;
  final String username;
  final String email;
  final String profilePicture;

  Author({
    required this.id,
    required this.username,
    required this.email,
    required this.profilePicture,
  });

  factory Author.fromJson(Map<String, dynamic> json) {
    return Author(
      id: json['_id'] as String,
      username: json['username'] as String,
      email: json['email'] as String,
      profilePicture: json['profilePicture'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      '_id': id,
      'username': username,
      'email': email,
      'profilePicture': profilePicture,
    };
  }
}
