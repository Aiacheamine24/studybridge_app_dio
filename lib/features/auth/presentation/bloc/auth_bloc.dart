import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<AuthEvent>((event, emit) {
      // Go to Login Widget Event
      if (event is GoToLoginWidgetEvent) {
        emit(LoginWidget());
      }
      // Go to Register Widget Event
      if (event is GoToRegisterWidgetEvent) {
        emit(RegisterWidget());
      }
    });
  }
}
