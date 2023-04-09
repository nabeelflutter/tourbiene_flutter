import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tourbiene/bloc/googlebloc/authentication_bloc.dart';
import 'package:tourbiene/bloc/googlebloc/authentication_state.dart';
import 'package:tourbiene/main.dart';
import 'package:tourbiene/screens/googlescreens/signin_btns_page.dart';
import 'package:tourbiene/widgets/check_connectivity.dart';

class GoogleSignInPage extends StatelessWidget {
  static const String pageName = "GoogleSignInPage";
  const GoogleSignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CheckConnectivity(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            const SignInButtonPage(),
            BlocBuilder<GoogleSignInBloc, GoogleSignInState>(
              builder: (context, state) {
                if (state is SignInInitialState) {
                  return const SizedBox();
                } else if (state is SignInLoadingState) {
                  return const Center(
                    child: CircularProgressIndicator(
                      strokeWidth: 3,
                    ),
                  );
                } else if (state is SignInWithGoogleSuccessfullyState) {
                  SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
                    Navigator.pushNamed(context, MyAppDrawer.pageName,
                        arguments: null);
                  });
                  return const SizedBox();
                } else if (state is SignInWithGoogleFailedState) {
                  SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(state.message.toString()),  
                      ),
                    );
                  });
                  return const SizedBox();
                }
                return const SizedBox();
              },
            )
          ],
        ),
      ),
    );
  }
}
