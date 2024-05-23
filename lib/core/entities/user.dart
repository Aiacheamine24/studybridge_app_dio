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
}