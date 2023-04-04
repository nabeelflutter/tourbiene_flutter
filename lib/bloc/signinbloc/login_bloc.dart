// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';

// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';
import 'package:tourbiene/Modals/login_modal.dart';
import 'package:tourbiene/authentication/api_service.dart';

import 'package:tourbiene/bloc/signinbloc/login_event.dart';

part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    final ApiService apiService = ApiService();
    on<LoginSuccessfullyEvent>((event, emit) async {
      emit.call(LoginLoadingState());
      try {
         await apiService.signInUser(event.model);
         print("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&");
        emit(const LoginLoadedState());
      }  catch (e) {
        emit.call(LoginErrorState(e.toString()));
      }
    });
  }
}
