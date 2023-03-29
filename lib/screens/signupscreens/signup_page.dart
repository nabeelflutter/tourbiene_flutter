import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tourbiene/bloc/signupbloc/signup_bloc.dart';
import 'package:tourbiene/main.dart';
import 'package:tourbiene/screens/signupscreens/signup_form.dart';
import 'package:tourbiene/widgets/check_connectivity.dart';
import 'package:tourbiene/widgets/dialog.dart';

class SignupPage extends StatelessWidget {
  static const String pageName = 'signuppage';

  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: CheckConnectivity(
            child: Scaffold(
      body: Stack(
        children: [
          const SignupForm(),
          BlocBuilder<SignupBloc, SignupState>(
            builder: (context, state) {
              if (state is SignupInitial) {
                return const SizedBox();
              } else if (state is SignupLoadingState) {
                return const Center(
                  child: CircularProgressIndicator(
                    color: Colors.red,
                    strokeWidth: 3,
                  ),
                );
              } else if (state is SignUpSuccessfullyState) {
                SchedulerBinding.instance.addPostFrameCallback((Duration dur) {
                  Navigator.pushNamed(context, MyAppDrawer.pageName,
                      arguments: null);
                });
                return const SizedBox();
              } else if (state is SignupErrorState) {
                SchedulerBinding.instance.addPostFrameCallback((Duration dur) {
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
        ],
      ),
    )));
  }
}
