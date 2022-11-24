import 'package:flutter/material.dart';

@immutable
abstract class GoogleSignInEvent {}

class SignInInitialEvent extends GoogleSignInEvent {}

class SignInWithGoogleSuccessfullyEvent extends GoogleSignInEvent {}

class SignInWithFacebookSuccessfullyEvent extends GoogleSignInEvent {}
