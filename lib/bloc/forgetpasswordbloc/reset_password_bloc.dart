// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';

import 'package:meta/meta.dart';
import 'package:tourbiene/authentication/authentioncation_page.dart';
import 'package:tourbiene/bloc/forgetpasswordbloc/reset_password_staste.dart';

part 'reset_password_event.dart';

class ResetPasswordBloc extends Bloc<ResetPasswordEvent, ResetPasswordState> {
  ResetPasswordBloc() : super(ResetPasswordInitialState()) {
    on<ResetPasswordInitialEvent>((event, emit) {
      emit.call(ResetPasswordInitialState());
    });

    on<ResetPasswordSuccessfullyEvent>((event, emit) async {
      try {
        await forgetPassword(event.email);
        emit.call(ResetPasswordSuccessfullyState());
      } catch (e) {
        emit.call(ResetPasswordFailedState(message: e.toString()));
      }
    });
  }
}
