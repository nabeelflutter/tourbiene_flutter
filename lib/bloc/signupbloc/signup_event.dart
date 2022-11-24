part of 'signup_bloc.dart';

@immutable
abstract class SignupEvent {}

class SignupClickEvent extends SignupEvent {
  final String email;
  final String password;
  final String name;
  SignupClickEvent({
    required this.email,
    required this.password,
    required this.name,
  });
}
