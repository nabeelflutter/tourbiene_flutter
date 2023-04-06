part of 'changepassword_bloc.dart';

@immutable
abstract class ChangepasswordState {}

class ChangepasswordInitial extends ChangepasswordState {}

class ChangePasswordLoadingState extends ChangepasswordState {
  ChangePasswordLoadingState();
}

class ChangePasswordLoadedState extends ChangepasswordState {
  ChangePasswordLoadedState();
}

class ChangePasswordErrorState extends ChangepasswordState {
  final String message;
  ChangePasswordErrorState(this.message);
}
