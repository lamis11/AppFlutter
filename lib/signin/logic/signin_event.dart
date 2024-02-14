part of 'signin_bloc.dart';

@freezed
class SigninEvent with _$SigninEvent {
  const factory SigninEvent.emailChanged(String email) = _EmailChanged;
  const factory SigninEvent.pwdChanged(String pwd) = _PwdChanged;
  const factory SigninEvent.submit() = _Submit;
}
