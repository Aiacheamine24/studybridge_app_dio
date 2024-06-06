import 'package:dio_clean_learn/features/home/domaine/entites/publication.dart';

class PublicationModelDataLayer extends PublicationEntity {
  PublicationModelDataLayer({
    required super.id,
    required super.title,
    super.description = '',
    required super.author,
    required super.publicationPicture,
    required super.categoryDetails,
    required super.updatedAt,
    required super.createdAt,
  });

  factory PublicationModelDataLayer.fromJson(Map<String, dynamic> json) {
    return PublicationModelDataLayer(
      id: json['_id'] as String,
      title: json['title'] as String,
      description: json['description'] as String? ??
          '', // Ensure default value if not present
      author: Author.fromJson(json['author'] as Map<String, dynamic>),
      categoryDetails:
          List<String>.from(json['categoryDetails'] as List<dynamic>),
      publicationPicture: json['publicationPicture'] as String,
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      '_id': id,
      'title': title,
      'description': description,
      'author': author.toJson(), // Serialize the nested Author object
      'publicationPicture': publicationPicture,
      'categoryDetails': categoryDetails,
      'updatedAt': updatedAt.toIso8601String(),
      'createdAt': createdAt.toIso8601String(),
    };
  }

  PublicationModelDataLayer copyWith({
    String? id,
    String? title,
    String? description,
    Author? author,
    String? publicationPicture,
    List<String>? categoryDetails,
    DateTime? updatedAt,
    DateTime? createdAt,
  }) {
    return PublicationModelDataLayer(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      author: author ?? this.author,
      publicationPicture: publicationPicture ?? this.publicationPicture,
      categoryDetails: categoryDetails ?? this.categoryDetails,
      updatedAt: updatedAt ?? this.updatedAt,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
