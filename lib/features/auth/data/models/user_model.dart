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
  UserModelDataLayer.fromJsonLogin(Map<String, dynamic> json)
      : token = json['data']['token'],
        super(
          id: json['data']['user']['_id'],
          username: json['data']['user']['username'],
          email: json['data']['user']['email'],
          roleId: json['data']['user']['role']['_id'],
          permissions:
              List<String>.from(json['data']['user']['role']['permissions']),
          profilePicture: json['data']['user']['profilePicture'],
          isEmailVerified: json['data']['user']['isEmailVerified'],
          isActive: json['data']['user']['isActive'],
        );

  /// UserModelDataLayer Class Factory Constructor
  ///
  /// This factory constructor is used to create a new instance of the UserModelDataLayer class.
  UserModelDataLayer.fromJsonRegister(Map<String, dynamic> json)
      : token = json['data']['token'],
        super(
          id: json['data']['user']['_id'],
          username: json['data']['user']['username'],
          email: json['data']['user']['email'],
          roleId: json['data']['user']['role'],
          permissions: [],
          profilePicture: json['data']['user']['profilePicture'],
          isEmailVerified: json['data']['user']['isEmailVerified'],
          isActive: json['data']['user']['isActive'],
        );
}
