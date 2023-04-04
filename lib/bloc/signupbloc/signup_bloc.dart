// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';

// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';
import 'package:tourbiene/Modals/signup_model.dart';
import 'package:tourbiene/authentication/api_service.dart';


part 'signup_event.dart';
part 'signup_state.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  SignupBloc() : super(const SignupInitial()) {
    final ApiService apiService = ApiService();
    on<SignUpSuccessfullyEvent>((event, emit) async {
      emit.call(const SignupLoadingState());
      try {
            await apiService.signUpUser(event.model);

        emit(const SignUpSuccessfullyState());
      
      } catch (e) {
        emit.call(SignupErrorState(e.toString()));
      }
    });
  }
}
