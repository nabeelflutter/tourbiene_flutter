// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:tourbiene/Modals/reset_password_model.dart';
import 'package:tourbiene/authentication/api_service.dart';

part 'changepassword_event.dart';
part 'changepassword_state.dart';

class ChangepasswordBloc extends Bloc<ChangepasswordEvent, ChangepasswordState> {
  ChangepasswordBloc() : super(ChangepasswordInitial()) {
    ApiService apiService = ApiService();
    on<ChangePasswordSuccessfullyEvent>((event, emit) async {
      emit.call(ChangePasswordLoadingState());
      try{
            await apiService.forgetPassword(event.model);
            emit.call(ChangePasswordLoadedState());
      }catch (e) {
       emit.call(ChangePasswordErrorState(e.toString()));
      }
    });
  }
}
