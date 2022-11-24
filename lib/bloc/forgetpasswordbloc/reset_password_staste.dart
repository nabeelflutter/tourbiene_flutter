import 'package:flutter/material.dart';

@immutable
abstract class ResetPasswordState {}

class ResetPasswordInitialState extends ResetPasswordState {}

class ResetPasswordSuccessfullyState extends ResetPasswordState {}

class ResetPasswordFailedState extends ResetPasswordState {
  final String message;
  ResetPasswordFailedState({required this.message});
}
