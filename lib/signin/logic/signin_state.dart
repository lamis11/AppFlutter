part of 'signin_bloc.dart';

@freezed

class SigninState with _$SigninState {
  const factory SigninState ({
    required String email ,
    required String pwd ,
}) = _SigninState ;



    factory SigninState.initial() {
     return SigninState(
         email: '',
         pwd: '',
     );
   }
}
