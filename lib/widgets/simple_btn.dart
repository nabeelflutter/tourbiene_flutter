import 'package:flutter/material.dart';

// ignore: prefer_generic_function_type_aliases
typedef void ContinueButtonClick({
  required BuildContext context,
  required TextEditingController emailController,
  required GlobalKey<FormFieldState> emailGlobalKey,
  required GlobalKey<FormState> globalKey,
});
typedef void ResetButtonClick({
  required BuildContext context,
  required TextEditingController oldPasswordController,
  required GlobalKey<FormFieldState> oldPasswordGlobalKey,
  required TextEditingController passwordController,
  required GlobalKey<FormFieldState> passwordGlobalKey,
  required GlobalKey<FormState> globalKey,
});
// ignore: prefer_generic_function_type_aliases
typedef void SigninBtnClick(
    {required BuildContext context,
    required TextEditingController emailController,
    required GlobalKey<FormFieldState> emailGlobalKey,
    required TextEditingController passwordController,
    required GlobalKey<FormState> globalKey,
    required GlobalKey<FormFieldState> passwordGlobalKey});

// ignore: prefer_generic_function_type_aliases
typedef void SignupBtnClick(
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
    required GlobalKey<FormState> globalKey,
    required GlobalKey<FormFieldState> emailValidationKey,
    required TextEditingController nameController,
    required GlobalKey<FormFieldState> nameValidationKey,
    required GlobalKey<FormFieldState> lastNameValidationKey,
    required GlobalKey<FormFieldState> shopNameValidationKey,
    required GlobalKey<FormFieldState> phoneNumberValidationKey,
    required TextEditingController passwordController,
    required GlobalKey<FormFieldState> passwordValidationKey});

class SignupButton extends StatelessWidget {
  final double height;
  final double width;
  final GlobalKey<FormState> globalKey;
  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController passwordController;

  final TextEditingController lastNameController;
  final TextEditingController shopNameController;
  final TextEditingController shopUrlController;
  final TextEditingController companyNameController;
  final TextEditingController companyIdController;
  final TextEditingController taxNumberController;
  final TextEditingController bankNameController;
  final TextEditingController bankIbanController;
  final TextEditingController phoneNumberController;

  final GlobalKey<FormFieldState> nameValidationKey;
  final GlobalKey<FormFieldState> emailValidationKey;
  final GlobalKey<FormFieldState> passwordValidationKey;
  final GlobalKey<FormFieldState> lastNameValidationKey;
  final GlobalKey<FormFieldState> shopNameValidationKey;
  final GlobalKey<FormFieldState> phoneNumberValidationKey;
  final SignupBtnClick signupBtnClick;
  const SignupButton(
      {Key? key,
      required this.signupBtnClick,
      required this.nameController,
      required this.globalKey,
      required this.passwordController,
      required this.emailController,
      required this.nameValidationKey,
      required this.emailValidationKey,
      required this.passwordValidationKey,
      required this.width,
      required this.height,
      required this.lastNameController,
      required this.shopNameController,
      required this.shopUrlController,
      required this.companyNameController,
      required this.companyIdController,
      required this.taxNumberController,
      required this.bankNameController,
      required this.bankIbanController,
      required this.phoneNumberController,
      required this.lastNameValidationKey,
      required this.shopNameValidationKey,
      required this.phoneNumberValidationKey})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: GestureDetector(
        onTap: () {
          signupBtnClick(
              context: context,
              nameController: nameController,
              emailController: emailController,
              passwordController: passwordController,
              lastNameController: lastNameController,
              shopNameController: shopNameController,
              shopUrlController: shopUrlController,
              companyNameController: companyNameController,
              companyIdController: companyIdController,
              taxNumberController: taxNumberController,
              bankNameController: bankNameController,
              bankIbanController: bankIbanController,
              phoneNumberController: phoneNumberController,
              globalKey: globalKey,
              nameValidationKey: nameValidationKey,
              emailValidationKey: emailValidationKey,
              passwordValidationKey: passwordValidationKey,
              lastNameValidationKey: lastNameValidationKey,
              shopNameValidationKey: shopNameValidationKey,
              phoneNumberValidationKey: phoneNumberValidationKey);
        },
        child: Container(
          decoration: BoxDecoration(
              color: Colors.purpleAccent,
              border: Border.all(color: const Color.fromARGB(255, 1, 6, 15)),
              borderRadius: BorderRadius.circular(30),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black12,
                    offset: Offset(-3, -3),
                    blurRadius: 5),
                BoxShadow(
                    color: Colors.white54, offset: Offset(3, 3), blurRadius: 5)
              ]),
          child: const Center(
            child: Text('Register',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w400)),
          ),
        ),
      ),
    );
  }
}

class SigninButton extends StatelessWidget {
  final double height;
  final double width;
  final String text;

  final TextEditingController emailController;
  final TextEditingController passwordController;
  final GlobalKey<FormFieldState> emailGlobalKey;
  final GlobalKey<FormFieldState> passwordGlobalKey;
  final GlobalKey<FormState> globalKey;
  final SigninBtnClick signinBtnClick;

  const SigninButton(
      {required this.signinBtnClick,
      required this.emailController,
      required this.passwordController,
      required this.emailGlobalKey,
      required this.passwordGlobalKey,
      required this.text,
      required this.width,
      required this.height,
      Key? key,
      required this.globalKey})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: GestureDetector(
        onTap: () {
          signinBtnClick(
              context: context,
              globalKey: globalKey,
              emailController: emailController,
              passwordController: passwordController,
              passwordGlobalKey: passwordGlobalKey,
              emailGlobalKey: emailGlobalKey);
        },
        child: Container(
          decoration: BoxDecoration(
              color: Colors.purpleAccent,
              border: Border.all(color: const Color.fromARGB(255, 1, 6, 15)),
              borderRadius: BorderRadius.circular(30),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black12,
                    offset: Offset(-3, -3),
                    blurRadius: 5),
                BoxShadow(
                    color: Colors.white54, offset: Offset(3, 3), blurRadius: 5)
              ]),
          child: Center(
            child: Text(text,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 19,
                    fontWeight: FontWeight.w400)),
          ),
        ),
      ),
    );
  }
}

class ContinueButton extends StatelessWidget {
  final double height;
  final double width;
  final String text;

  final TextEditingController emailController;

  final GlobalKey<FormFieldState> emailGlobalKey;

  final GlobalKey<FormState> globalKey;
  final ContinueButtonClick continueButtonClick;

  const ContinueButton(
      {required this.text,
      required this.width,
      required this.height,
      Key? key,
      required this.globalKey,
      required this.emailController,
      required this.emailGlobalKey,
      required this.continueButtonClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: GestureDetector(
        onTap: () {
          continueButtonClick(
              context: context,
              globalKey: globalKey,
              emailController: emailController,
              emailGlobalKey: emailGlobalKey);
        },
        child: Container(
          decoration: BoxDecoration(
              color: Colors.purpleAccent,
              border: Border.all(color: const Color.fromARGB(255, 1, 6, 15)),
              borderRadius: BorderRadius.circular(30),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black12,
                    offset: Offset(-3, -3),
                    blurRadius: 5),
                BoxShadow(
                    color: Colors.white54, offset: Offset(3, 3), blurRadius: 5)
              ]),
          child: Center(
            child: Text(text,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w400)),
          ),
        ),
      ),
    );
  }
}

class ResetPasswordButton extends StatelessWidget {
  final double height;
  final double width;
  final String text;

  final TextEditingController olPasswordController;

  final GlobalKey<FormFieldState> oldPasswordGlobalKey;
  
  final TextEditingController passwordController;

  final GlobalKey<FormFieldState> passwordGlobalKey;

  final GlobalKey<FormState> globalKey;
  final ResetButtonClick resetButtonClick;

  const ResetPasswordButton(
      {required this.text,
      required this.width,
      required this.height,
      Key? key,
      required this.globalKey,
      required this.olPasswordController,
      required this.oldPasswordGlobalKey,
      required this.passwordController,
      required this.passwordGlobalKey,
      required this.resetButtonClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: GestureDetector(
        onTap: () {
          resetButtonClick(
              context: context,
              globalKey: globalKey,
              oldPasswordController: olPasswordController,
              oldPasswordGlobalKey: oldPasswordGlobalKey,
              passwordController: passwordController,
              passwordGlobalKey: passwordGlobalKey);
        },
        child: Container(
          decoration: BoxDecoration(
              color: Colors.purpleAccent,
              border: Border.all(color: const Color.fromARGB(255, 1, 6, 15)),
              borderRadius: BorderRadius.circular(30),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black12,
                    offset: Offset(-3, -3),
                    blurRadius: 5),
                BoxShadow(
                    color: Colors.white54, offset: Offset(3, 3), blurRadius: 5)
              ]),
          child: Center(
            child: Text(text,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w400)),
          ),
        ),
      ),
    );
  }
}
