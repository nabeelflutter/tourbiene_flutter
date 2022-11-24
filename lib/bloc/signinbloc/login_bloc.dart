// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';
import 'package:tourbiene/authentication/authentioncation_page.dart';
import 'package:tourbiene/bloc/signinbloc/login_event.dart';

part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<LoginFetchEvent>((event, emit) async {
      emit.call(LoginLoadingState());
      try {
        User? users =
            await signInWithEmailAndPassword(event.email, event.password);
        emit(LoginLoadedState(users));
      } on FirebaseAuthException catch (e) {
        switch (e.code) {
          case "ERROR_INVALID_EMAIL":
            var errorMessage = "Your email address appears to be malformed.";
            emit.call(LoginErrorState(errorMessage));
            break;
          case "ERROR_WRONG_PASSWORD":
            var errorMessage = "Your password is wrong.";
            emit.call(LoginErrorState(errorMessage));
            break;
          case "ERROR_USER_NOT_FOUND":
            var errorMessage = "User with this email doesn't exist.";
            emit.call(LoginErrorState(errorMessage));
            break;
          case "ERROR_USER_DISABLED":
            var errorMessage = "User with this email has been disabled.";
            emit.call(LoginErrorState(errorMessage));
            break;
          case "ERROR_TOO_MANY_REQUESTS":
            var errorMessage = "Too many requests. Try again later.";
            emit.call(LoginErrorState(errorMessage));
            break;
          case "user-not-found":
            var errorMessage = "there is no user with this email";
            emit.call(LoginErrorState(errorMessage));
            break;
          default:
            var errorMessage = "An undefined Error happened.";
            emit.call(LoginErrorState(errorMessage));
        }
      } catch (e) {
        emit.call(const LoginErrorState('simple'));
      }
    });
  }
}
