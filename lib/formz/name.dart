import 'package:formz/formz.dart';

enum NameValidationError { invalid, empty }

class Name extends FormzInput<String, NameValidationError> {
  const Name.pure() : super.pure('');
  const Name.dirty([String value = '']) : super.dirty(value);

  static final _nameRegExp = RegExp(
    r'^[a-zA-Z0-9_]*$',
  );



  @override
  NameValidationError? validator(String? value) {
    if (value?.isEmpty ?? true) {
      return NameValidationError.empty;
    }
    return _nameRegExp.hasMatch(value ?? '')
        ? null
        : NameValidationError.invalid;
  }
}



