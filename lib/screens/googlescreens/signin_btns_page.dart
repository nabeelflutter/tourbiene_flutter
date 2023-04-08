// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tourbiene/controller/signin_controller.dart';
import 'package:tourbiene/controller/signup_controller.dart';
import 'package:tourbiene/widgets/google__btns.dart';

class SignInButtonPage extends StatelessWidget {
  static const String pageName = 'SignInButtonPage';
  const SignInButtonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height - kTextTabBarHeight;
    double width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: height * .10,
            width: width,
          ),
          SizedBox(
            height: height * .05,
            width: width,
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text("Hello",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30)),
            ),
          ),
          SizedBox(
            height: height * .01,
          ),
          SizedBox(
            height: height * .09,
            width: width,
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                  "You can use your email or username, or continue with your social account.",
                  style: TextStyle(color: Colors.black, fontSize: 18)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              height: height * .38,
              width: width,
              child: const Image(
                image: AssetImage('assets/login.gif'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: height * .11,
          ),
          GoogleBtn(
              height: height * .07,
              width: width,
              btnClick: googleSigninuseemailandpasswordClick,
              color: Colors.purpleAccent,
              border: Border.all(color: const Color.fromARGB(255, 1, 6, 15)),
              child: Row(
                children: const [
                  Spacer(
                    flex: 10,
                  ),
                  Expanded(
                      flex: 10,
                      child: Icon(
                        FontAwesomeIcons.envelope,
                        size: 25,
                        color: Colors.white,
                      )),
                  Expanded(
                    flex: 70,
                    child: Center(
                      child: Text('Use  email or username',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w400)),
                    ),
                  ),
                  Spacer(
                    flex: 10,
                  ),
                ],
              )),
          SizedBox(
            height: height * .03,
            width: width,
          ),
          GoogleBtn(
              height: height * .07,
              width: width,
              btnClick: googleSigninClick,
              color: Colors.white,
              border: Border.all(color: const Color.fromARGB(255, 1, 6, 15)),
              child: Row(
                children: const [
                  Spacer(
                    flex: 10,
                  ),
                  Expanded(
                      flex: 10,
                      child: Icon(
                        FontAwesomeIcons.google,
                      )),
                  Expanded(
                    flex: 70,
                    child: Center(
                      child: Text('Sign in with Google',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w400)),
                    ),
                  ),
                  Spacer(
                    flex: 10,
                  ),
                ],
              )
              ),
          SizedBox(
            height: height * .03,
            width: width,
          ),
          GoogleBtn(
            height: height * .07,
            width: width,
            btnClick: creatanaccountClick,
            color: Colors.white,
            border: Border.all(color: const Color.fromARGB(255, 1, 6, 15)),
            child: Row(
                children: const [
                  Spacer(
                    flex: 10,
                  ),
                  Expanded(
                      flex: 10,
                      child: Icon(
                        FontAwesomeIcons.facebook,
                        color: Colors.blue,
                      )),
                  Expanded(
                    flex: 70,
                    child: Center(
                      child: Text('Sign in with Facebook',
                          style: TextStyle(
                             color: Color.fromARGB(255, 32, 112, 250),
                              fontSize: 17, fontWeight: FontWeight.w400)),
                    ),
                  ),
                  Spacer(
                    flex: 10,
                  ),
                ],
              )
           
          ),
          SizedBox(
            height: height * .03,
            width: width,
          ),
        ],
      ),
    );
  }
}
