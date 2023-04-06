import 'package:flutter/material.dart';
import 'package:tourbiene/controller/signin_controller.dart';
import 'package:tourbiene/widgets/simple_btn.dart';

class ResetPasswordPage extends StatelessWidget {
  static const String pageName = 'ResetPasswordPage';
  ResetPasswordPage({super.key});

  final TextEditingController emailController = TextEditingController();
  final GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  final GlobalKey<FormFieldState> emailGlobalKey = GlobalKey<FormFieldState>();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height - kTextTabBarHeight;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.cancel,
          color: Colors.grey,
          size: 40,
        ),
        centerTitle: true,
        title: const Text("Reset your password",
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 20)),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: globalKey,
          child: Column(
            children: [
              SizedBox(
                height: height * .05,
                width: width,
              ),
              SizedBox(
                height: height * .05,
                width: width,
                child: const Align(
                  alignment: Alignment(-.8, -1),
                  child: DefaultTextStyle(
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25.0,
                        fontWeight: FontWeight.w500),
                    child: Text(
                      "Get help siging in!",
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height * .01,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: SizedBox(
                  height: height * .10,
                  width: width,
                  child: const Text(
                    'Enter the email address or username associated with your account',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      // fontWeight: FontWeight.w500
                    ),
                  ),
                ),
              ),

              //Input Field Email
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: SizedBox(
                  height: height * .10,
                  width: width,
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    key: emailGlobalKey,
                    validator: isValidEmail,
                    onChanged: (value) {
                      emailGlobalKey.currentState!.validate();
                    },
                    controller: emailController,
                    style: const TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.email_outlined),
                      label: const Text('Email Address'),
                      hintText: 'Email or username',
                      labelStyle:
                          const TextStyle(color: Colors.black, fontSize: 16),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Colors.red,
                          width: 1,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Colors.black,
                          width: 1,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: height * .10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: ContinueButton(
                    text: 'Continue',
                    width: width,
                    height: height * .07,
                    globalKey: globalKey,
                    emailController: emailController,
                    emailGlobalKey: emailGlobalKey,
                    continueButtonClick: btnContinue),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
