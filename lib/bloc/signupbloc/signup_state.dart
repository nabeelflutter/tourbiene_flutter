part of 'signup_bloc.dart';

@immutable
abstract class SignupState {
  const SignupState();
}

class SignupInitial extends SignupState {
  const SignupInitial();
}

class SignupLoadingState extends SignupState {
  const SignupLoadingState();
}

class SignUpSuccessfullyState extends SignupState {
 const SignUpSuccessfullyState();
}

class SignupErrorState extends SignupState {
  final String message;
  const SignupErrorState(this.message);
}
