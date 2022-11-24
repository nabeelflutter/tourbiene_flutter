import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tourbiene/controller/signin_controller.dart';
import 'package:tourbiene/widgets/google__btns.dart';

class RegisterButtonPage extends StatelessWidget {
  static const String pageName = 'RegisterButtonPage';
  const RegisterButtonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height - kTextTabBarHeight;
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        SizedBox(
          height: height * .07,
          width: width,
        ),
        SizedBox(
          height: height * .09,
          width: width,
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text("Let's get started!",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30)),
          ),
        ),
        SizedBox(
          height: height * .02,
        ),
        SizedBox(
          height: height * .38,
          width: width,
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Image(
              image: AssetImage('assets/signup.gif'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: height * .12,
          width: width,
        ),
        GoogleBtn(
            height: height * .07,
            width: width,
            btnClick: emailanpasswordClick,
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
                    child: Text('Use email or password',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w700)),
                  ),
                ),
                Spacer(
                  flex: 10,
                ),
              ],
            )),
        SizedBox(
          height: height * .05,
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
                Expanded(flex: 10, child: Icon(FontAwesomeIcons.google)),
                Expanded(
                  flex: 70,
                  child: Center(
                    child: Text('Continue with Google',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w400)),
                  ),
                ),
                Spacer(
                  flex: 10,
                ),
              ],
            )),
        SizedBox(
          height: height * .05,
          width: width,
        ),
        GoogleBtn(
          height: height * .07,
          width: width,
          btnClick: googleSigninClick,
          color: Colors.white,
          border: Border.all(color: const Color.fromARGB(255, 1, 15, 26)),
          child: const Center(
            child: Text('Create a business account',
                style: TextStyle(
                    color: Color.fromARGB(255, 32, 112, 250),
                    fontSize: 17,
                    fontWeight: FontWeight.w400)),
          ),
        ),
        SizedBox(
          height: height * .03,
          width: width,
        ),
      ],
    );
  }
}
