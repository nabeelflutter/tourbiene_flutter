part of 'changepassword_bloc.dart';

@immutable
abstract class ChangepasswordEvent {}



class ChangePasswordSuccessfullyEvent extends ChangepasswordEvent{
   final ResetPasswprdModel model;
   ChangePasswordSuccessfullyEvent({required this.model});
}