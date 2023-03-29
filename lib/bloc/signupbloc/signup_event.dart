part of 'signup_bloc.dart';

@immutable
abstract class SignupEvent {}

class SignUpSuccessfullyEvent extends  SignupEvent {
  final SignUpUserModel model;
  SignUpSuccessfullyEvent({required this.model});
}


