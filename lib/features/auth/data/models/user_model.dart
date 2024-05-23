import 'package:dio_clean_learn/core/entities/user.dart';

class UserModelDataLayer extends UserEntity {
  final String token;

  /// UserModelDataLayer Class Constructor
  ///
  /// This class extends the UserEntity class and adds a token property to it.
  const UserModelDataLayer({
    required super.id,
    required super.username,
    required super.email,
    required super.roleId,
    required super.permissions,
    required super.profilePicture,
    required super.isEmailVerified,
    required super.isActive,
    required this.token,
  });

  /// UserModelDataLayer Class Factory Constructor
  ///
  /// This factory constructor is used to create a new instance of the UserModelDataLayer class.
  UserModelDataLayer.fromJson(Map<String, dynamic> json)
      : token = json['token'],
        super(
          id: json['user']['_id'],
          username: json['user']['username'],
          email: json['user']['email'],
          roleId: json['user']['role']['_id'],
          permissions: List<String>.from(json['user']['role']['permissions']),
          profilePicture: json['user']['profilePicture'],
          isEmailVerified: json['user']['isEmailVerified'],
          isActive: json['user']['isActive'],
        );
}
