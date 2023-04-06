import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tourbiene/bloc/ChangePasswordBloc/changepassword_bloc.dart';

import 'package:tourbiene/controller/signin_controller.dart';
import 'package:tourbiene/main.dart';
import 'package:tourbiene/widgets/dialog.dart';
import 'package:tourbiene/widgets/simple_btn.dart';

class ChangePasswordPage extends StatefulWidget {
 
 final  TextEditingController oldPasswordController;
  final GlobalKey<FormFieldState> oldPasswordGlobalKey;
 final  TextEditingController passwordController;
 final GlobalKey<FormState> globalKey;
   GlobalKey<FormFieldState> passwordGlobalKey;

  ChangePasswordPage(
      {Key? key,
     required this.passwordController,
     required this.passwordGlobalKey,
     required  this.globalKey, 
     required this.oldPasswordController, 
     required this.oldPasswordGlobalKey})
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
     
      appBar: AppBar(backgroundColor: Colors.white,elevation: 0,title: const Text("Reset Password",style: TextStyle(color: Colors.black),),centerTitle: true,),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Form(
          key: widget.globalKey,
          child: Column(
            children: [
              SizedBox(height: height * .10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SizedBox(
                    height: height * .10,
                    width: width,
                    child: const Center(
                      child: Text(
                        "Please Enter Your Old Password And Reset Your Password",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w300),
                      ),
                    )),
              ),
             
      
             SizedBox(height: height*.05,),
              //Input Field old
              SizedBox(
                height: height * .10,
                width: width,
                child: TextFormField(
                  obscuringCharacter: '*',
                 
                  key: widget.oldPasswordGlobalKey,
                  validator: isValidOldPassword,
                  onChanged: (value) {
                    widget.oldPasswordGlobalKey.currentState!.validate();
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
                height: height * .05,
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
                    widget.passwordGlobalKey.currentState!.validate();
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
             SizedBox(height: height*.05,),
      
              ResetPasswordButton(
                  resetButtonClick: btnResetClick,
                 olPasswordController : widget.oldPasswordController,
                  passwordController: widget.passwordController,
                  oldPasswordGlobalKey: widget.oldPasswordGlobalKey,
                  passwordGlobalKey: widget.passwordGlobalKey,
                  text: 'Reset Password',
                  width: width,
                  height: height * .08,
                  globalKey:widget.globalKey),
             
             
            ],
          ),
        ),
      ),
    );
  }
}
  

  class ChangePasswordScreen extends StatelessWidget {
     static const String pageName = 'ChangePasswordScreen';
  final  TextEditingController oldPasswordController = TextEditingController();
  final GlobalKey<FormFieldState> oldPasswordGlobalKey = GlobalKey<FormFieldState>();
 final  TextEditingController passwordController = TextEditingController();

 final  GlobalKey<FormFieldState> passwordGlobalKey = GlobalKey<FormFieldState>();
    final GlobalKey<FormState> globalKey = GlobalKey<FormState>();
    ChangePasswordScreen({super.key,});
  
    @override
    Widget build(BuildContext context) {
      return Stack(children: [
        ChangePasswordPage(passwordController: passwordController, passwordGlobalKey: passwordGlobalKey, globalKey: globalKey, oldPasswordController: oldPasswordController, oldPasswordGlobalKey: oldPasswordGlobalKey),
         BlocBuilder<ChangepasswordBloc, ChangepasswordState>(
              builder: (context, state) {
                if (state is ChangepasswordInitial) {
                  return const SizedBox();
                } else if (state is ChangePasswordLoadingState) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (state is ChangePasswordLoadedState) {
                  SchedulerBinding.instance
                      .addPostFrameCallback((Duration dur) {
                    Navigator.pushReplacementNamed(
                        context, MyAppDrawer.pageName,
                        arguments: null);
                  });
                  return const SizedBox();
                } else if (state is ChangePasswordErrorState) {
                  SchedulerBinding.instance
                      .addPostFrameCallback((Duration dur) {
                    showDialog(
                        context: context,
                        builder: (context) => CustomDialog(masg: state.message));
                  });
                  return const SizedBox();
                } else {
                  return const SizedBox();
                }
              },
            )
      ],);
    }
  }