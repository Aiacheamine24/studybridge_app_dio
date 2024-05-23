class UserEntity {
  final String id;
  final String username;
  final String email;
  final String roleId;
  final List<String> permissions;
  final String profilePicture;
  final bool isEmailVerified;
  final bool isActive;

  const UserEntity({
    required this.id,
    required this.username,
    required this.email,
    required this.roleId,
    required this.permissions,
    required this.profilePicture,
    required this.isEmailVerified,
    required this.isActive,
  });

  UserEntity.fromModel(UserEntity model)
      : id = model.id,
        username = model.username,
        email = model.email,
        roleId = model.roleId,
        permissions = model.permissions,
        profilePicture = model.profilePicture,
        isEmailVerified = model.isEmailVerified,
        isActive = model.isActive;
}
