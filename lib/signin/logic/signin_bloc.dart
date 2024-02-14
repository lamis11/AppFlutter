import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'signin_event.dart';
part 'signin_state.dart';
part 'signin_bloc.freezed.dart';

class SigninBloc extends Bloc<SigninEvent, SigninState> {
  SigninBloc() : super(SigninState.initial()) {
    on<_EmailChanged>(onEmailChanged);
    on<_PwdChanged>(onPwdChanged);
    on<_Submit>(onSubmit);
  }

  onEmailChanged(_EmailChanged event, Emitter<SigninState> emit) {
    emit(state.copyWith(email: event.email));
  }

  onPwdChanged(_PwdChanged event, Emitter<SigninState> emit) {
    emit(state.copyWith(pwd: event.pwd));
  }

  onSubmit(_Submit event, Emitter<SigninState> emit) {
    final userInformation = state;
    emit(userInformation);
  }
}
