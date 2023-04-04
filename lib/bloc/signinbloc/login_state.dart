part of 'login_bloc.dart';

@immutable
abstract class LoginState {
  const LoginState();
}

class LoginInitial extends LoginState {}

class LoginLoadingState extends LoginState {}

class LoginLoadedState extends LoginState {

  const LoginLoadedState();
}

class LoginErrorState extends LoginState {
  final String error;
  const LoginErrorState(this.error);
}
