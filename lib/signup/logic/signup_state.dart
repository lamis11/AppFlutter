part of 'signup_bloc.dart';

@freezed
class SignupState with _$SignupState {



  const factory SignupState (

      {
    //required String name,
    //required String email,
    required DateTime date,
    //required String pwd ,
    required bool isValid,
    required Password pwd,
    required Email email ,
    required Name name,
    required FormzSubmissionStatus status,
      }

  ) = _SignupState ;



  factory SignupState.initial() {
    return SignupState(
      //name:'',
      date: DateTime.now(),
      //email: '',
      //pwd: '',
      isValid: false,
      name: const Name.pure(),
      pwd: const Password.pure(),
      email : const Email.pure(),
      status : FormzSubmissionStatus.initial,
      ) ;
  }


}

