import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tourbiene/Modals/signup_model.dart';
import 'package:tourbiene/bloc/signupbloc/signup_bloc.dart';
import 'package:tourbiene/screens/loginscreens/login_page.dart';

/*
   this is function is signin button
 */

void btnSignupClick(
    {required BuildContext context,
    required TextEditingController emailController,
    required TextEditingController lastNameController,
    required TextEditingController shopNameController,
    required TextEditingController shopUrlController,
    required TextEditingController companyNameController,
    required TextEditingController companyIdController,
    required TextEditingController taxNumberController,
    required TextEditingController bankNameController,
    required TextEditingController bankIbanController,
    required TextEditingController phoneNumberController,
    required GlobalKey<FormFieldState> lastNameValidationKey,
    required GlobalKey<FormFieldState> shopNameValidationKey,
    required GlobalKey<FormFieldState> phoneNumberValidationKey,
    required GlobalKey<FormFieldState> emailValidationKey,
    required TextEditingController nameController,
    required GlobalKey<FormFieldState> nameValidationKey,
    required TextEditingController passwordController,
    required GlobalKey<FormState> globalKey,
    required GlobalKey<FormFieldState> passwordValidationKey}) {
  if (globalKey.currentState!.validate() &&
          emailValidationKey.currentState!.validate() &&
          passwordValidationKey.currentState!.validate() &&
          nameValidationKey.currentState!.validate() ||
      lastNameValidationKey.currentState!.validate() &&
          shopNameValidationKey.currentState!.validate() &&
          phoneNumberValidationKey.currentState!.validate()) {
    SignupBloc bloc = Provider.of(context, listen: false);
    bloc.add(SignUpSuccessfullyEvent(
        model: SignUpUserModel(
            email: emailController.text.trim(),
            password: passwordController.text.trim(),
            displayName: nameController.text.trim(),
            lastName: lastNameController.text.trim(),
            shopName: shopNameController.text.trim(),
            shopUrl: shopUrlController.text.trim(),
            companyName: companyNameController.text.trim(),
            companyId: companyIdController.text.trim(),
            taxNumber: taxNumberController.text.trim(),
            bankName: bankNameController.text.trim(),
            bankIBAN: bankIbanController.text.trim(),
            phoneNumber: phoneNumberController.text.trim())));
  }
}

void signinClick(BuildContext context) {
  Navigator.pushNamed(context, SigninPage.pageName);
}

void googleSigninuseemailandpasswordClick(BuildContext context) {
  Navigator.pushNamed(context, SigninPage.pageName);
}
