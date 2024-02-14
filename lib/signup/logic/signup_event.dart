part of 'signup_bloc.dart';

@freezed
class SignupEvent with _$SignupEvent {
  const factory SignupEvent.nameChanged (String name) = _NameChanged;
  const factory SignupEvent.dateChanged(DateTime date) = _DateChanged;
  const factory SignupEvent.emailChanged(String email) = _EmailChanged;
  const factory SignupEvent.pwdChanged(String pwd) = _PwdChanged;
  const factory SignupEvent.submit() = _Submit;
}

