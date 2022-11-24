// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';
import 'package:tourbiene/authentication/authentioncation_page.dart';

part 'signup_event.dart';
part 'signup_state.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  SignupBloc() : super(const SignupInitial()) {
    on<SignupClickEvent>((event, emit) async {
      emit.call(const SignupLoadingState());
      try {
        User? user = await signupWithEmailAndPassword(
            event.name, event.email, event.password);

        emit(SignupLoadedState(user));
      } on FirebaseAuthException catch (e) {
        emit.call(SignupErrorState(e.code));
      } catch (e) {
        emit.call(SignupErrorState(e.toString()));
      }
    });
  }
}
