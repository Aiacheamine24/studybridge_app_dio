import 'package:bloc/bloc.dart';
import 'package:dio_clean_learn/features/auth/domaine/usecases/login_user.dart';
import 'package:dio_clean_learn/features/auth/domaine/usecases/register_user.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final UserLoginUsecase userLoginUsecase;
  final UserRegisterUsecase userRegisterUsecase;

  AuthBloc({
    required this.userLoginUsecase,
    required this.userRegisterUsecase,
  }) : super(AuthInitial()) {
    /// Listen to AuthEvent and emit AuthState to change the UI widget
    on<AuthEvent>((event, emit) async {
      // Go to Login Widget Event
      if (event is GoToLoginWidgetEvent) {
        emit(LoginWidget());
      }
      // Go to Register Widget Event
      if (event is GoToRegisterWidgetEvent) {
        emit(RegisterWidget());
      }
      // Login Event
      if (event is LoginEvent) {
        emit(AuthLoading());
        // Call the login usecase
        final result = await userLoginUsecase(UserLoginParams(
          identifier: event.identifier,
          password: event.password,
        ));
        result.fold(
          (failure) => emit(AuthError(message: failure.message)),
          (user) => emit(AuthSuccess()),
        );
      }
      // Register Event
      if (event is RegisterEvent) {
        emit(AuthLoading());
        // Call the register usecase
        final result = await userRegisterUsecase(UserRegisterParams(
          username: event.username,
          email: event.email,
          password: event.password,
        ));
        result.fold(
          (failure) => emit(AuthError(message: failure.message)),
          (user) => emit(AuthSuccess()),
        );
      }
    });
  }
}
