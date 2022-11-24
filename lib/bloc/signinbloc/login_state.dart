part of 'login_bloc.dart';

@immutable
abstract class LoginState {
  const LoginState();
}

class LoginInitial extends LoginState {}

class LoginLoadingState extends LoginState {}

class LoginLoadedState extends LoginState {
  final User? users;
  const LoginLoadedState(this.users);
}

class LoginErrorState extends LoginState {
  final String error;
  const LoginErrorState(this.error);
}
