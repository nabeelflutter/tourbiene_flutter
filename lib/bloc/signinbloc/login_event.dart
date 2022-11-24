import 'package:flutter/material.dart';

@immutable
abstract class LoginEvent {}

// ignore: must_be_immutable
class LoginFetchEvent extends LoginEvent {
  String email;
  String password;
  LoginFetchEvent(this.email, this.password);
}
