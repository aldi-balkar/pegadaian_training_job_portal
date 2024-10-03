import 'package:flutter_bloc/flutter_bloc.dart';
import 'login_event.dart';
import 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    // Register the event handler here
    on<LoginButtonPressed>(_onLoginButtonPressed);
  }

  // Event handler for LoginButtonPressed
  void _onLoginButtonPressed(
      LoginButtonPressed event, Emitter<LoginState> emit) async {
    emit(LoginLoading()); // Emit loading state

    // Simulate a login delay and authentication logic
    await Future.delayed(Duration(seconds: 2));

    if (event.username == 'admin' && event.password == 'admin') {
      emit(LoginSuccess()); // Emit success state
    } else {
      emit(LoginFailure(
          error: "Incorrect username or password")); // Emit failure state
    }
  }
}
