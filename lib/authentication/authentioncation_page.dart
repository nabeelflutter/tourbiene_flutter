// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:tourbiene/main.dart';

//import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:google_sign_in/google_sign_in.dart';

FirebaseAuth auth = FirebaseAuth.instance;

Future<User?> signInWithGoogle() async {
  final GoogleSignInAccount? googleUser =
      await GoogleSignIn().signIn();
  final GoogleSignInAuthentication googleAuth =
      await googleUser!.authentication;
  final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken, idToken: googleAuth.idToken);

  var user = await FirebaseAuth.instance.signInWithCredential(credential);
  User? myUser = user.user;
  return myUser;
}

  facebookLogin(BuildContext context) async {
    try {
      final result =
      await FacebookAuth.i.login(permissions: ['public_profile', 'email']);
      if (result.status == LoginStatus.success) {
        final userData = await FacebookAuth.i.getUserData();
        
        
        Navigator.push(context, MaterialPageRoute(builder: (context) => MyAppDrawer(image: userData['picture']['data']['url'],
          name: userData['name'], email: userData['email'])));
      }
    } catch (error) {
      print(error);
    }
  }

// // ImagePicker imagePicker = ImagePicker();
// // File? image;
// // Future<File?> pickImage() async {
// //   var pick = await imagePicker.pickImage(source: ImageSource.gallery);
// //   if (pick != null) {
// //     image = File(pick.path);
// //     return image;
// //   } else {
// //     const Text('data');
// //   }
// //   return image;
// // }

// Future<UserCredential> signInWithFacebook() async {
//   // Trigger the sign-in flow
//   final LoginResult loginResult = await FacebookAuth.instance.login();

//   // Create a credential from the access token
//   final OAuthCredential facebookAuthCredential =
//       FacebookAuthProvider.credential(loginResult.accessToken!.token);

//   // Once signed in, return the UserCredential
//   return FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
// }

// Future<User?> signInWithEmailAndPassword(String email, String password) async {
//   UserCredential userCredential =
//       await auth.signInWithEmailAndPassword(email: email, password: password);
//   User? user = userCredential.user;
//   return Future(
//     () => user,
//   );
// }

// Future<void> sendNameToFirebase(
//     String name, String uid, String email, String password) async {
//   FirebaseFirestore firestore = FirebaseFirestore.instance;
//   await firestore.collection('users').doc(uid).set(
//       {'user_name': name, 'email': email, 'uid': uid, 'password': password});
// }

// Future<User?> signupWithEmailAndPassword(
//     String name, String email, String password) async {
//   UserCredential userCredential = await auth.createUserWithEmailAndPassword(
//       email: email, password: password);
//   User? user = userCredential.user;
//   if (user != null) {
//     await sendNameToFirebase(name, user.uid, email, password);
//   }
//   return Future(
//     () => userCredential.user,
//   );
// }

// Future<void> forgetPassword(String email) async {
//   return await auth.sendPasswordResetEmail(email: email);
// }

// Future signout() async {
//   FirebaseAuth.instance.signOut();
// }
