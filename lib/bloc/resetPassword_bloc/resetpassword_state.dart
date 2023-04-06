part of 'resetpassword_bloc.dart';

@immutable
abstract class ResetpasswordState {}

class ResetpasswordInitial extends ResetpasswordState {}

class ResetPasswordLoadingState extends ResetpasswordState {
  ResetPasswordLoadingState();
}

class ResetPasswordLoadedState extends ResetpasswordState {
  ResetPasswordLoadedState();
}

class ResetPasswordErrorState extends ResetpasswordState {
  final String message;
  ResetPasswordErrorState(this.message);
}
