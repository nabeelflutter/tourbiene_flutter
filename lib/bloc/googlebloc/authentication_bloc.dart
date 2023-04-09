// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';



import 'package:tourbiene/bloc/googlebloc/authentication_event.dart';
import 'package:tourbiene/bloc/googlebloc/authentication_state.dart';

import '../../authentication/authentioncation_page.dart';

class GoogleSignInBloc extends Bloc<GoogleSignInEvent, GoogleSignInState> {
  GoogleSignInBloc() : super(SignInInitialState()) {
    on<SignInWithGoogleSuccessfullyEvent>((event, emit) async {
      emit(SignInLoadingState());
     try {
        User? userCredential = await signInWithGoogle();
        if (userCredential != null) {
          emit.call(SignInWithGoogleSuccessfullyState());
        } else {
          emit.call(SignInWithGoogleFailedState(message: "else"));
        }
      } on FirebaseAuthException catch (e) {
        emit.call(SignInWithGoogleFailedState(message: e.toString()));
      } catch (e) {
        emit.call(SignInWithGoogleFailedState(message: e.toString()));
     }
    });
    // on<SignInWithFacebookSuccessfullyEvent>((event, emit) async {
    //   emit(SignInLoadingState());
    //   try {
    //     UserCredential userCredential = await signInWithFacebook();

    //     // ignore: unnecessary_null_comparison
    //     if (userCredential != null) {
    //       emit.call(SignInWithFacebookSuccessfullyState());
    //     } else {
    //       emit.call(SignInWithFacebookFailedState(message: "facebook else"));
    //     }
    //   } on FirebaseAuthException catch (e) {
    //     emit.call(SignInWithFacebookFailedState(message: e.toString()));
    //   } catch (e) {
    //     emit.call(SignInWithFacebookFailedState(message: e.toString()));
    //   }
    // });
  }
}
