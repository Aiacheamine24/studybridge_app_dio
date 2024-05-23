part of 'auth_bloc.dart';

@immutable
sealed class AuthState {
  const AuthState();
}

final class AuthInitial extends AuthState {}

final class AuthLoading extends AuthState {}

final class AuthSuccess extends AuthState {}

final class AuthError extends AuthState {
  final String message;
  final String type = 'error';

  const AuthError(this.message);
}

final class LoginWidget extends AuthState {}

final class RegisterWidget extends AuthState {}
