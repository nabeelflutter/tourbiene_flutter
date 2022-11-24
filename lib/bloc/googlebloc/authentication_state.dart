import 'package:flutter/material.dart';

@immutable
abstract class GoogleSignInState {}

class SignInInitialState extends GoogleSignInState {
  SignInInitialState();
}

class SignInLoadingState extends GoogleSignInState {
  SignInLoadingState();
}

class SignInWithGoogleSuccessfullyState extends GoogleSignInState {}

class SignInWithGoogleFailedState extends GoogleSignInState {
  final String message;
  SignInWithGoogleFailedState({required this.message});
}

class SignInWithFacebookSuccessfullyState extends GoogleSignInState {
  SignInWithFacebookSuccessfullyState();
}

class SignInWithFacebookFailedState extends GoogleSignInState {
  final String message;
  SignInWithFacebookFailedState({required this.message});
}
