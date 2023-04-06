// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:tourbiene/Modals/reset_password_model.dart';
import 'package:tourbiene/authentication/api_service.dart';

part 'resetpassword_event.dart';
part 'resetpassword_state.dart';

class ResetpasswordBloc extends Bloc<ResetpasswordEvent, ResetpasswordState> {
  ResetpasswordBloc() : super(ResetpasswordInitial()) {
    ApiService apiService = ApiService();
    on<ResetPassword>((event, emit) async {
      emit.call(ResetPasswordLoadingState());
      try{
            await apiService.forgetPassword(event.model);
            emit.call(ResetPasswordLoadedState());
      }catch (e) {
       emit.call(ResetPasswordErrorState(e.toString()));
      }
    });
  }
}
