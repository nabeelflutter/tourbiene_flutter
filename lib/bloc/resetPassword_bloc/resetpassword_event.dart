part of 'resetpassword_bloc.dart';

@immutable
abstract class ResetpasswordEvent {}



class ResetPassword extends ResetpasswordEvent{
   final ResetPasswprdModel model;
   ResetPassword({required this.model});
}