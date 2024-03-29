import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tourbiene/Modals/login_modal.dart';
import 'package:tourbiene/Modals/reset_password_model.dart';
import 'package:tourbiene/authentication/authentioncation_page.dart';
import 'package:tourbiene/bloc/ChangePasswordBloc/changepassword_bloc.dart';

import 'package:tourbiene/bloc/googlebloc/authentication_bloc.dart';
import 'package:tourbiene/bloc/googlebloc/authentication_event.dart';

import 'package:tourbiene/bloc/signinbloc/login_bloc.dart';
import 'package:tourbiene/bloc/signinbloc/login_event.dart';
import 'package:tourbiene/screens/change_password.dart';
import 'package:tourbiene/screens/googlescreens/forgetpasswordscreens/reset_password_pagge.dart';
import 'package:tourbiene/screens/googlescreens/google_register_page.dart';

import 'package:tourbiene/screens/signupscreens/signup_page.dart';
import 'package:url_launcher/url_launcher.dart';

String? isValidEmail(String? email) {
  /*
     This fucntion validate email
   */
  if (email!.isEmpty) {
    return 'must enter email';
  } else if (RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(email)) {
    return null;
  } else {
    return 'email is not valid';
  }
}

String? isValidPassword(String? password) {
  /*
     This fucntion validate password
   */
  if (password!.isEmpty) {
    return 'must enter passowrd';
  } else if (password.length < 7) {
    return 'length should>=7';
  } else {
    return null;
  }
}
String? isValidOldPassword(String? password) {
  /*
     This fucntion validate password
   */
  if (password!.isEmpty) {
    return 'must enter passowrd';
  } else if (password.length < 7) {
    return 'length should>=7';
  } else {
    return null;
  }
}

String? isValidShopName(String? shopname) {
  if (shopname!.isEmpty) {
    return 'must enter shopname';
  } else {
    return null;
  }
}

String? isValidName(String? name) {
  if (name!.isEmpty) {
    return 'must enter name';
  } else {
    return null;
  }
}

String? isValidLastName(String? lastname) {
  if (lastname!.isEmpty) {
    return 'must enter lastname';
  } else {
    return null;
  }
}

String? isValidPhoneNumber(String? phoneNumber) {
  if (phoneNumber!.isEmpty) {
    return 'must enter PhoneNumber';
  } else if (phoneNumber.length < 11) {
    return ' PhoneNumber length should be>=11 ';
  } else {
    return null;
  }
}

void btnSignin(
    {required BuildContext context,
    required TextEditingController emailController,
    required GlobalKey<FormFieldState> emailGlobalKey,
    required TextEditingController passwordController,
    required GlobalKey<FormState> globalKey,
    required GlobalKey<FormFieldState> passwordGlobalKey}) {
  LoginBloc signinBloc = Provider.of<LoginBloc>(context, listen: false);
  if (globalKey.currentState!.validate() &&
      emailGlobalKey.currentState!.validate() &&
      passwordGlobalKey.currentState!.validate()) {
    signinBloc.add(LoginSuccessfullyEvent(
        model: SignInUserModel(
            email: emailController.text.trim(),
            password: passwordController.text.trim())));
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("User Login Succesfully")));
  }else{
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("User do not Login Succesfully")));
  }
}

void btnContinue({
  required BuildContext context,
  required TextEditingController emailController,
  required GlobalKey<FormFieldState> emailGlobalKey,
  required GlobalKey<FormState> globalKey,
}) {
  if (globalKey.currentState!.validate() &&
      emailGlobalKey.currentState!.validate()) {
        Navigator.pushNamed(context, ChangePasswordScreen.pageName);
   
  }
}

void btnResetClick({
  required BuildContext context,
  required TextEditingController oldPasswordController,
  required GlobalKey<FormFieldState> oldPasswordGlobalKey,
  required TextEditingController passwordController,
  required GlobalKey<FormFieldState> passwordGlobalKey,
  required GlobalKey<FormState> globalKey,
}) {
  ChangepasswordBloc changepasswordBloc = Provider.of<ChangepasswordBloc>(context,listen: false);
  if (globalKey.currentState!.validate() &&
      oldPasswordGlobalKey.currentState!.validate() && passwordGlobalKey.currentState!.validate()) {
     changepasswordBloc.add(ChangePasswordSuccessfullyEvent(model:  ResetPasswprdModel(old_password: oldPasswordController.text.trim(),password: passwordController.text.trim()))  );
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("User Password Succesfully Reset")));
  }else{
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("User do not Reset Password")));
  }
}

void registerNowClick(BuildContext context) {
  Navigator.pushReplacementNamed(context, SignupPage.pageName);
}

void googleSigninClick(BuildContext context) {
  GoogleSignInBloc googleSignInBloc =
      Provider.of<GoogleSignInBloc>(context, listen: false);
  googleSignInBloc.add(SignInWithGoogleSuccessfullyEvent());
}

void googleFaceBookClick(BuildContext context) {
  GoogleSignInBloc facebook =
      Provider.of<GoogleSignInBloc>(context, listen: false);
  facebook.add(SignInWithFacebookSuccessfullyEvent());
}

void forgotPasswordClick(BuildContext context) {
  Navigator.pushNamed(context, ResetPasswordPage.pageName);
}

void creatanaccountClick(BuildContext context) {
  facebookLogin(context);
}
void instagramAccount(BuildContext context) {
  launch("https://www.instagram.com/");
}

void emailanpasswordClick(BuildContext context) {
  Navigator.pushNamed(context, SignupPage.pageName);
}
