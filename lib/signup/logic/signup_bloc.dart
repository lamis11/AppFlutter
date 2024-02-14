import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:formz/formz.dart';

import '../../formz/email.dart';
import '../../formz/name.dart';
import '../../formz/password.dart';

part 'signup_event.dart';
part 'signup_state.dart';
part 'signup_bloc.freezed.dart';


class SignupBloc extends Bloc<SignupEvent, SignupState> {
  SignupBloc() : super(SignupState.initial()) {
    on<_NameChanged>(onNameChanged);
    on<_DateChanged>(onDateChanged);
    on<_EmailChanged>(onEmailChanged);
    on<_PwdChanged>(onPwdChanged);
    on<_Submit>(onSubmit);
  }

  onNameChanged(_NameChanged event, Emitter<SignupState> emit){
    final name = Name.dirty(event.name);
    emit (
        state.copyWith(
            name: name,
            isValid: Formz.validate([name,state.email,state.pwd]),
        ),
    );
  }

  onDateChanged(_DateChanged event, Emitter<SignupState> emit){
    emit (state.copyWith(date: event.date));
  }

 onEmailChanged(_EmailChanged event, Emitter<SignupState> emit) {
    final email = Email.dirty(event.email);
    emit(
        state.copyWith(email: email,
        isValid: Formz.validate([email,state.name,state.pwd]),
        ),
    );
  }

  onPwdChanged(_PwdChanged event, Emitter<SignupState> emit) {
    final pwd = Password.dirty(event.pwd);
    emit(
        state.copyWith(pwd: pwd,
        isValid: Formz.validate([pwd,state.name,state.email]),
        ),
    );
  }

  onSubmit(_Submit event, Emitter<SignupState> emit) {
    final userInformation = state;
    emit(userInformation);
  }
}
