import 'package:flutter/material.dart';
import 'package:tourbiene/Modals/login_modal.dart';

@immutable
abstract class LoginEvent {}

// ignore: must_be_immutable
class LoginSuccessfullyEvent extends LoginEvent {
  final SignInUserModel model;
  LoginSuccessfullyEvent({required this.model});
}
