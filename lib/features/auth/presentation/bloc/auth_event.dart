part of 'auth_bloc.dart';

@immutable
sealed class AuthEvent {
  const AuthEvent();
}

/// Go to Login Widget Event
///
/// This event is used to navigate to the Login Widget
final class GoToLoginWidgetEvent extends AuthEvent {}

/// Go to Register Widget Event
///
/// This event is used to navigate to the Register Widget
final class GoToRegisterWidgetEvent extends AuthEvent {}

/// Login Event
///
/// This event is used to login the user
final class LoginEvent extends AuthEvent {
  final String identifier;
  final String password;

  const LoginEvent({
    required this.identifier,
    required this.password,
  });
}

/// Register Event
///
/// This event is used to register the user
final class RegisterEvent extends AuthEvent {
  final String username;
  final String email;
  final String password;

  const RegisterEvent({
    required this.username,
    required this.email,
    required this.password,
  });
}

final class LogoutEvent extends AuthEvent {}
