// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignupEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(DateTime date) dateChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String pwd) pwdChanged,
    required TResult Function() submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(DateTime date)? dateChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String pwd)? pwdChanged,
    TResult? Function()? submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(DateTime date)? dateChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String pwd)? pwdChanged,
    TResult Function()? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PwdChanged value) pwdChanged,
    required TResult Function(_Submit value) submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PwdChanged value)? pwdChanged,
    TResult? Function(_Submit value)? submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PwdChanged value)? pwdChanged,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupEventCopyWith<$Res> {
  factory $SignupEventCopyWith(
          SignupEvent value, $Res Function(SignupEvent) then) =
      _$SignupEventCopyWithImpl<$Res, SignupEvent>;
}

/// @nodoc
class _$SignupEventCopyWithImpl<$Res, $Val extends SignupEvent>
    implements $SignupEventCopyWith<$Res> {
  _$SignupEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NameChangedImplCopyWith<$Res> {
  factory _$$NameChangedImplCopyWith(
          _$NameChangedImpl value, $Res Function(_$NameChangedImpl) then) =
      __$$NameChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$NameChangedImplCopyWithImpl<$Res>
    extends _$SignupEventCopyWithImpl<$Res, _$NameChangedImpl>
    implements _$$NameChangedImplCopyWith<$Res> {
  __$$NameChangedImplCopyWithImpl(
      _$NameChangedImpl _value, $Res Function(_$NameChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$NameChangedImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NameChangedImpl implements _NameChanged {
  const _$NameChangedImpl(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'SignupEvent.nameChanged(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NameChangedImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NameChangedImplCopyWith<_$NameChangedImpl> get copyWith =>
      __$$NameChangedImplCopyWithImpl<_$NameChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(DateTime date) dateChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String pwd) pwdChanged,
    required TResult Function() submit,
  }) {
    return nameChanged(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(DateTime date)? dateChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String pwd)? pwdChanged,
    TResult? Function()? submit,
  }) {
    return nameChanged?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(DateTime date)? dateChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String pwd)? pwdChanged,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PwdChanged value) pwdChanged,
    required TResult Function(_Submit value) submit,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PwdChanged value)? pwdChanged,
    TResult? Function(_Submit value)? submit,
  }) {
    return nameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PwdChanged value)? pwdChanged,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class _NameChanged implements SignupEvent {
  const factory _NameChanged(final String name) = _$NameChangedImpl;

  String get name;
  @JsonKey(ignore: true)
  _$$NameChangedImplCopyWith<_$NameChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DateChangedImplCopyWith<$Res> {
  factory _$$DateChangedImplCopyWith(
          _$DateChangedImpl value, $Res Function(_$DateChangedImpl) then) =
      __$$DateChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime date});
}

/// @nodoc
class __$$DateChangedImplCopyWithImpl<$Res>
    extends _$SignupEventCopyWithImpl<$Res, _$DateChangedImpl>
    implements _$$DateChangedImplCopyWith<$Res> {
  __$$DateChangedImplCopyWithImpl(
      _$DateChangedImpl _value, $Res Function(_$DateChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_$DateChangedImpl(
      null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$DateChangedImpl implements _DateChanged {
  const _$DateChangedImpl(this.date);

  @override
  final DateTime date;

  @override
  String toString() {
    return 'SignupEvent.dateChanged(date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DateChangedImpl &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DateChangedImplCopyWith<_$DateChangedImpl> get copyWith =>
      __$$DateChangedImplCopyWithImpl<_$DateChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(DateTime date) dateChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String pwd) pwdChanged,
    required TResult Function() submit,
  }) {
    return dateChanged(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(DateTime date)? dateChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String pwd)? pwdChanged,
    TResult? Function()? submit,
  }) {
    return dateChanged?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(DateTime date)? dateChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String pwd)? pwdChanged,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (dateChanged != null) {
      return dateChanged(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PwdChanged value) pwdChanged,
    required TResult Function(_Submit value) submit,
  }) {
    return dateChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PwdChanged value)? pwdChanged,
    TResult? Function(_Submit value)? submit,
  }) {
    return dateChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PwdChanged value)? pwdChanged,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (dateChanged != null) {
      return dateChanged(this);
    }
    return orElse();
  }
}

abstract class _DateChanged implements SignupEvent {
  const factory _DateChanged(final DateTime date) = _$DateChangedImpl;

  DateTime get date;
  @JsonKey(ignore: true)
  _$$DateChangedImplCopyWith<_$DateChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmailChangedImplCopyWith<$Res> {
  factory _$$EmailChangedImplCopyWith(
          _$EmailChangedImpl value, $Res Function(_$EmailChangedImpl) then) =
      __$$EmailChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$EmailChangedImplCopyWithImpl<$Res>
    extends _$SignupEventCopyWithImpl<$Res, _$EmailChangedImpl>
    implements _$$EmailChangedImplCopyWith<$Res> {
  __$$EmailChangedImplCopyWithImpl(
      _$EmailChangedImpl _value, $Res Function(_$EmailChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$EmailChangedImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailChangedImpl implements _EmailChanged {
  const _$EmailChangedImpl(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'SignupEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailChangedImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailChangedImplCopyWith<_$EmailChangedImpl> get copyWith =>
      __$$EmailChangedImplCopyWithImpl<_$EmailChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(DateTime date) dateChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String pwd) pwdChanged,
    required TResult Function() submit,
  }) {
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(DateTime date)? dateChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String pwd)? pwdChanged,
    TResult? Function()? submit,
  }) {
    return emailChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(DateTime date)? dateChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String pwd)? pwdChanged,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PwdChanged value) pwdChanged,
    required TResult Function(_Submit value) submit,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PwdChanged value)? pwdChanged,
    TResult? Function(_Submit value)? submit,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PwdChanged value)? pwdChanged,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChanged implements SignupEvent {
  const factory _EmailChanged(final String email) = _$EmailChangedImpl;

  String get email;
  @JsonKey(ignore: true)
  _$$EmailChangedImplCopyWith<_$EmailChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PwdChangedImplCopyWith<$Res> {
  factory _$$PwdChangedImplCopyWith(
          _$PwdChangedImpl value, $Res Function(_$PwdChangedImpl) then) =
      __$$PwdChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String pwd});
}

/// @nodoc
class __$$PwdChangedImplCopyWithImpl<$Res>
    extends _$SignupEventCopyWithImpl<$Res, _$PwdChangedImpl>
    implements _$$PwdChangedImplCopyWith<$Res> {
  __$$PwdChangedImplCopyWithImpl(
      _$PwdChangedImpl _value, $Res Function(_$PwdChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pwd = null,
  }) {
    return _then(_$PwdChangedImpl(
      null == pwd
          ? _value.pwd
          : pwd // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PwdChangedImpl implements _PwdChanged {
  const _$PwdChangedImpl(this.pwd);

  @override
  final String pwd;

  @override
  String toString() {
    return 'SignupEvent.pwdChanged(pwd: $pwd)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PwdChangedImpl &&
            (identical(other.pwd, pwd) || other.pwd == pwd));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pwd);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PwdChangedImplCopyWith<_$PwdChangedImpl> get copyWith =>
      __$$PwdChangedImplCopyWithImpl<_$PwdChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(DateTime date) dateChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String pwd) pwdChanged,
    required TResult Function() submit,
  }) {
    return pwdChanged(pwd);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(DateTime date)? dateChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String pwd)? pwdChanged,
    TResult? Function()? submit,
  }) {
    return pwdChanged?.call(pwd);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(DateTime date)? dateChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String pwd)? pwdChanged,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (pwdChanged != null) {
      return pwdChanged(pwd);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PwdChanged value) pwdChanged,
    required TResult Function(_Submit value) submit,
  }) {
    return pwdChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PwdChanged value)? pwdChanged,
    TResult? Function(_Submit value)? submit,
  }) {
    return pwdChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PwdChanged value)? pwdChanged,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (pwdChanged != null) {
      return pwdChanged(this);
    }
    return orElse();
  }
}

abstract class _PwdChanged implements SignupEvent {
  const factory _PwdChanged(final String pwd) = _$PwdChangedImpl;

  String get pwd;
  @JsonKey(ignore: true)
  _$$PwdChangedImplCopyWith<_$PwdChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubmitImplCopyWith<$Res> {
  factory _$$SubmitImplCopyWith(
          _$SubmitImpl value, $Res Function(_$SubmitImpl) then) =
      __$$SubmitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubmitImplCopyWithImpl<$Res>
    extends _$SignupEventCopyWithImpl<$Res, _$SubmitImpl>
    implements _$$SubmitImplCopyWith<$Res> {
  __$$SubmitImplCopyWithImpl(
      _$SubmitImpl _value, $Res Function(_$SubmitImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SubmitImpl implements _Submit {
  const _$SubmitImpl();

  @override
  String toString() {
    return 'SignupEvent.submit()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SubmitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(DateTime date) dateChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String pwd) pwdChanged,
    required TResult Function() submit,
  }) {
    return submit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(DateTime date)? dateChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String pwd)? pwdChanged,
    TResult? Function()? submit,
  }) {
    return submit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(DateTime date)? dateChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String pwd)? pwdChanged,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PwdChanged value) pwdChanged,
    required TResult Function(_Submit value) submit,
  }) {
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PwdChanged value)? pwdChanged,
    TResult? Function(_Submit value)? submit,
  }) {
    return submit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PwdChanged value)? pwdChanged,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class _Submit implements SignupEvent {
  const factory _Submit() = _$SubmitImpl;
}

/// @nodoc
mixin _$SignupState {
//required String name,
//required String email,
  DateTime get date =>
      throw _privateConstructorUsedError; //required String pwd ,
  bool get isValid => throw _privateConstructorUsedError;
  Password get pwd => throw _privateConstructorUsedError;
  Email get email => throw _privateConstructorUsedError;
  Name get name => throw _privateConstructorUsedError;
  FormzSubmissionStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignupStateCopyWith<SignupState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupStateCopyWith<$Res> {
  factory $SignupStateCopyWith(
          SignupState value, $Res Function(SignupState) then) =
      _$SignupStateCopyWithImpl<$Res, SignupState>;
  @useResult
  $Res call(
      {DateTime date,
      bool isValid,
      Password pwd,
      Email email,
      Name name,
      FormzSubmissionStatus status});
}

/// @nodoc
class _$SignupStateCopyWithImpl<$Res, $Val extends SignupState>
    implements $SignupStateCopyWith<$Res> {
  _$SignupStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? isValid = null,
    Object? pwd = null,
    Object? email = null,
    Object? name = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      pwd: null == pwd
          ? _value.pwd
          : pwd // ignore: cast_nullable_to_non_nullable
              as Password,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignupStateImplCopyWith<$Res>
    implements $SignupStateCopyWith<$Res> {
  factory _$$SignupStateImplCopyWith(
          _$SignupStateImpl value, $Res Function(_$SignupStateImpl) then) =
      __$$SignupStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime date,
      bool isValid,
      Password pwd,
      Email email,
      Name name,
      FormzSubmissionStatus status});
}

/// @nodoc
class __$$SignupStateImplCopyWithImpl<$Res>
    extends _$SignupStateCopyWithImpl<$Res, _$SignupStateImpl>
    implements _$$SignupStateImplCopyWith<$Res> {
  __$$SignupStateImplCopyWithImpl(
      _$SignupStateImpl _value, $Res Function(_$SignupStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? isValid = null,
    Object? pwd = null,
    Object? email = null,
    Object? name = null,
    Object? status = null,
  }) {
    return _then(_$SignupStateImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      pwd: null == pwd
          ? _value.pwd
          : pwd // ignore: cast_nullable_to_non_nullable
              as Password,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
    ));
  }
}

/// @nodoc

class _$SignupStateImpl implements _SignupState {
  const _$SignupStateImpl(
      {required this.date,
      required this.isValid,
      required this.pwd,
      required this.email,
      required this.name,
      required this.status});

//required String name,
//required String email,
  @override
  final DateTime date;
//required String pwd ,
  @override
  final bool isValid;
  @override
  final Password pwd;
  @override
  final Email email;
  @override
  final Name name;
  @override
  final FormzSubmissionStatus status;

  @override
  String toString() {
    return 'SignupState(date: $date, isValid: $isValid, pwd: $pwd, email: $email, name: $name, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignupStateImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.pwd, pwd) || other.pwd == pwd) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, date, isValid, pwd, email, name, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignupStateImplCopyWith<_$SignupStateImpl> get copyWith =>
      __$$SignupStateImplCopyWithImpl<_$SignupStateImpl>(this, _$identity);
}

abstract class _SignupState implements SignupState {
  const factory _SignupState(
      {required final DateTime date,
      required final bool isValid,
      required final Password pwd,
      required final Email email,
      required final Name name,
      required final FormzSubmissionStatus status}) = _$SignupStateImpl;

  @override //required String name,
//required String email,
  DateTime get date;
  @override //required String pwd ,
  bool get isValid;
  @override
  Password get pwd;
  @override
  Email get email;
  @override
  Name get name;
  @override
  FormzSubmissionStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$SignupStateImplCopyWith<_$SignupStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
