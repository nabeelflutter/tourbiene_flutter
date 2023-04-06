import 'package:flutter/material.dart';
import 'package:tourbiene/controller/signin_controller.dart';
import 'package:tourbiene/widgets/simple_btn.dart';

class ChangePasswordPage extends StatefulWidget {
  static const String pageName = 'ChangePasswordPage';
   TextEditingController? oldPasswordController;
   GlobalKey<FormFieldState>? oldPasswordGlobalKey;
   TextEditingController? passwordController;
  GlobalKey<FormState>? globalKey;
   GlobalKey<FormFieldState>? passwordGlobalKey;

  ChangePasswordPage(
      {Key? key,
      this.passwordController,
      this.passwordGlobalKey,
       this.globalKey, 
      this.oldPasswordController, 
      this.oldPasswordGlobalKey})
      : super(key: key);

  @override
  State<ChangePasswordPage> createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  late bool _obscured;

  void _textObscured() {
    setState(() {
      _obscured = !_obscured;
    });
  }

  @override
  void initState() {
    _obscured = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height - 85;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            key: widget.globalKey,
            child: Column(
              children: [
                SizedBox(height: height * .05),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SizedBox(
                      height: height * .08,
                      width: width,
                      child: const Center(
                        child: Text(
                          "Please Enter Your Old Password And Change Your Password",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 25.0,
                              fontWeight: FontWeight.w500),
                        ),
                      )),
                ),
               

               
                //Input Field old
                SizedBox(
                  height: height * .10,
                  width: width,
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    key: widget.oldPasswordGlobalKey,
                    validator: isValidOldPassword,
                    onChanged: (value) {
                      widget.oldPasswordGlobalKey?.currentState!.validate();
                    },
                    controller: widget.oldPasswordController,
                    style: const TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      suffixIcon: GestureDetector(
                        onTap: _textObscured,
                        child: Icon(
                          _obscured
                              ? Icons.visibility_off_rounded
                              : Icons.visibility_rounded,
                        ),
                      ),
                      label: const Text('User Old Password'),
                      hintText: 'please enter old password',
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
                          width: 3,
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: height * .01,
                ),
                //Input field Password
                SizedBox(
                  height: height * .10,
                  width: width,
                  child: TextFormField(
                    obscuringCharacter: '*',
                    obscureText: _obscured,
                    key: widget.passwordGlobalKey,
                    validator: isValidPassword,
                    onChanged: (value) {
                      widget.passwordGlobalKey?.currentState!.validate();
                    },
                    controller: widget.passwordController,
                    style: const TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.https_outlined),
                      suffixIcon: GestureDetector(
                        onTap: _textObscured,
                        child: Icon(
                          _obscured
                              ? Icons.visibility_off_rounded
                              : Icons.visibility_rounded,
                        ),
                      ),
                      label: const Text('User Password'),
                      hintText: 'Password',
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
                          width: 3,
                        ),
                      ),
                    ),
                  ),
                ),
               

                ResetPasswordButton(
                    resetButtonClick: btnResetClick,
                   olPasswordController : widget.oldPasswordController!,
                    passwordController: widget.passwordController!,
                    oldPasswordGlobalKey: widget.oldPasswordGlobalKey!,
                    passwordGlobalKey: widget.passwordGlobalKey!,
                    text: 'Sign In',
                    width: width,
                    height: height * .08,
                    globalKey:widget.globalKey!),
               
               
              ],
            ),
          ),
        ),
      ),
    );
  }
}
