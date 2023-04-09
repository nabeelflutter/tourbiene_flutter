// ignore_for_file: must_be_immutable

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tourbiene/bloc/ChangePasswordBloc/changepassword_bloc.dart';
import 'package:tourbiene/bloc/connectivitybloc/connectivity_bloc.dart';

import 'package:tourbiene/bloc/googlebloc/authentication_bloc.dart';
import 'package:tourbiene/bloc/signinbloc/login_bloc.dart';
import 'package:tourbiene/bloc/signupbloc/signup_bloc.dart';
import 'package:tourbiene/routes/app_navigation_page.dart';
import 'package:tourbiene/screens/animateddrawer/animated_drawer.dart';
import 'package:tourbiene/screens/animateddrawer/home_drawer.dart';
import 'package:tourbiene/screens/googlescreens/google_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   final FirebaseAuth auth = FirebaseAuth.instance;
    return MultiBlocProvider(
      providers: [
        BlocProvider<ConnectivityBloc>(
          create: (context) => ConnectivityBloc(),
        ),
        BlocProvider<SignupBloc>(
          create: (context) => SignupBloc(),
        ),
        BlocProvider<LoginBloc>(
          create: (context) => LoginBloc(),
        ),
        BlocProvider<GoogleSignInBloc>(create: (context) => GoogleSignInBloc()),
        BlocProvider<ChangepasswordBloc>(create: (context) => ChangepasswordBloc(),)
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          onGenerateRoute: AppNavigation.buildPage,
          theme: ThemeData(
            primarySwatch: Colors.purple,
          ),
          home:
           auth.currentUser != null
              ? const MyAppDrawer()
              :  const GoogleSignInPage()),
    );
  }
}

class MyAppDrawer extends StatelessWidget {
   final image;
  final name;
  final email;
  static const String pageName = 'MyAppDrawer';

  const MyAppDrawer({super.key, this.image, this.email, this.name});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    AppBar appBar = AppBar(
      toolbarHeight: 70,
      backgroundColor: Colors.purple,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text('Tourbiene'),
        ],
      ),
      actions: const [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
              backgroundColor: Color.fromARGB(255, 240, 245, 240),
              child: Icon(
                Icons.shopping_cart,
                color: Colors.black,
              )),
        )
      ],
      leading: Builder(
        builder: (BuildContext appBarContext) {
          return IconButton(
              onPressed: () {
                AppDrawer.of(appBarContext)!.toggle();
              },
              icon: const Icon(Icons.menu));
        },
      ),
    );
    return Scaffold(
      body: AppDrawer(
        
        child: Home(
          appBar: appBar,
        ),
      ),
    );
  }
}
