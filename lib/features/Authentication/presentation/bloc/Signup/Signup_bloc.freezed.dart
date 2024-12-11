// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'Signup_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignupEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() createAccount,
    required TResult Function(String firstName, String lastName, String phone,
            String username, String birthDate)
        firstSend,
    required TResult Function(String password, String confirmPassword)
        secondSend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? createAccount,
    TResult? Function(String firstName, String lastName, String phone,
            String username, String birthDate)?
        firstSend,
    TResult? Function(String password, String confirmPassword)? secondSend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? createAccount,
    TResult Function(String firstName, String lastName, String phone,
            String username, String birthDate)?
        firstSend,
    TResult Function(String password, String confirmPassword)? secondSend,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateAccount value) createAccount,
    required TResult Function(_FirstSend value) firstSend,
    required TResult Function(_SecondSend value) secondSend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateAccount value)? createAccount,
    TResult? Function(_FirstSend value)? firstSend,
    TResult? Function(_SecondSend value)? secondSend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateAccount value)? createAccount,
    TResult Function(_FirstSend value)? firstSend,
    TResult Function(_SecondSend value)? secondSend,
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

  /// Create a copy of SignupEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CreateAccountImplCopyWith<$Res> {
  factory _$$CreateAccountImplCopyWith(
          _$CreateAccountImpl value, $Res Function(_$CreateAccountImpl) then) =
      __$$CreateAccountImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreateAccountImplCopyWithImpl<$Res>
    extends _$SignupEventCopyWithImpl<$Res, _$CreateAccountImpl>
    implements _$$CreateAccountImplCopyWith<$Res> {
  __$$CreateAccountImplCopyWithImpl(
      _$CreateAccountImpl _value, $Res Function(_$CreateAccountImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignupEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CreateAccountImpl implements _CreateAccount {
  _$CreateAccountImpl();

  @override
  String toString() {
    return 'SignupEvent.createAccount()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CreateAccountImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() createAccount,
    required TResult Function(String firstName, String lastName, String phone,
            String username, String birthDate)
        firstSend,
    required TResult Function(String password, String confirmPassword)
        secondSend,
  }) {
    return createAccount();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? createAccount,
    TResult? Function(String firstName, String lastName, String phone,
            String username, String birthDate)?
        firstSend,
    TResult? Function(String password, String confirmPassword)? secondSend,
  }) {
    return createAccount?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? createAccount,
    TResult Function(String firstName, String lastName, String phone,
            String username, String birthDate)?
        firstSend,
    TResult Function(String password, String confirmPassword)? secondSend,
    required TResult orElse(),
  }) {
    if (createAccount != null) {
      return createAccount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateAccount value) createAccount,
    required TResult Function(_FirstSend value) firstSend,
    required TResult Function(_SecondSend value) secondSend,
  }) {
    return createAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateAccount value)? createAccount,
    TResult? Function(_FirstSend value)? firstSend,
    TResult? Function(_SecondSend value)? secondSend,
  }) {
    return createAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateAccount value)? createAccount,
    TResult Function(_FirstSend value)? firstSend,
    TResult Function(_SecondSend value)? secondSend,
    required TResult orElse(),
  }) {
    if (createAccount != null) {
      return createAccount(this);
    }
    return orElse();
  }
}

abstract class _CreateAccount implements SignupEvent {
  factory _CreateAccount() = _$CreateAccountImpl;
}

/// @nodoc
abstract class _$$FirstSendImplCopyWith<$Res> {
  factory _$$FirstSendImplCopyWith(
          _$FirstSendImpl value, $Res Function(_$FirstSendImpl) then) =
      __$$FirstSendImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String firstName,
      String lastName,
      String phone,
      String username,
      String birthDate});
}

/// @nodoc
class __$$FirstSendImplCopyWithImpl<$Res>
    extends _$SignupEventCopyWithImpl<$Res, _$FirstSendImpl>
    implements _$$FirstSendImplCopyWith<$Res> {
  __$$FirstSendImplCopyWithImpl(
      _$FirstSendImpl _value, $Res Function(_$FirstSendImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignupEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? phone = null,
    Object? username = null,
    Object? birthDate = null,
  }) {
    return _then(_$FirstSendImpl(
      null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      null == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FirstSendImpl implements _FirstSend {
  _$FirstSendImpl(
      this.firstName, this.lastName, this.phone, this.username, this.birthDate);

  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String phone;
  @override
  final String username;
  @override
  final String birthDate;

  @override
  String toString() {
    return 'SignupEvent.firstSend(firstName: $firstName, lastName: $lastName, phone: $phone, username: $username, birthDate: $birthDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirstSendImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, firstName, lastName, phone, username, birthDate);

  /// Create a copy of SignupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FirstSendImplCopyWith<_$FirstSendImpl> get copyWith =>
      __$$FirstSendImplCopyWithImpl<_$FirstSendImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() createAccount,
    required TResult Function(String firstName, String lastName, String phone,
            String username, String birthDate)
        firstSend,
    required TResult Function(String password, String confirmPassword)
        secondSend,
  }) {
    return firstSend(firstName, lastName, phone, username, birthDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? createAccount,
    TResult? Function(String firstName, String lastName, String phone,
            String username, String birthDate)?
        firstSend,
    TResult? Function(String password, String confirmPassword)? secondSend,
  }) {
    return firstSend?.call(firstName, lastName, phone, username, birthDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? createAccount,
    TResult Function(String firstName, String lastName, String phone,
            String username, String birthDate)?
        firstSend,
    TResult Function(String password, String confirmPassword)? secondSend,
    required TResult orElse(),
  }) {
    if (firstSend != null) {
      return firstSend(firstName, lastName, phone, username, birthDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateAccount value) createAccount,
    required TResult Function(_FirstSend value) firstSend,
    required TResult Function(_SecondSend value) secondSend,
  }) {
    return firstSend(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateAccount value)? createAccount,
    TResult? Function(_FirstSend value)? firstSend,
    TResult? Function(_SecondSend value)? secondSend,
  }) {
    return firstSend?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateAccount value)? createAccount,
    TResult Function(_FirstSend value)? firstSend,
    TResult Function(_SecondSend value)? secondSend,
    required TResult orElse(),
  }) {
    if (firstSend != null) {
      return firstSend(this);
    }
    return orElse();
  }
}

abstract class _FirstSend implements SignupEvent {
  factory _FirstSend(
      final String firstName,
      final String lastName,
      final String phone,
      final String username,
      final String birthDate) = _$FirstSendImpl;

  String get firstName;
  String get lastName;
  String get phone;
  String get username;
  String get birthDate;

  /// Create a copy of SignupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FirstSendImplCopyWith<_$FirstSendImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SecondSendImplCopyWith<$Res> {
  factory _$$SecondSendImplCopyWith(
          _$SecondSendImpl value, $Res Function(_$SecondSendImpl) then) =
      __$$SecondSendImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String password, String confirmPassword});
}

/// @nodoc
class __$$SecondSendImplCopyWithImpl<$Res>
    extends _$SignupEventCopyWithImpl<$Res, _$SecondSendImpl>
    implements _$$SecondSendImplCopyWith<$Res> {
  __$$SecondSendImplCopyWithImpl(
      _$SecondSendImpl _value, $Res Function(_$SecondSendImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignupEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
    Object? confirmPassword = null,
  }) {
    return _then(_$SecondSendImpl(
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SecondSendImpl implements _SecondSend {
  _$SecondSendImpl(this.password, this.confirmPassword);

  @override
  final String password;
  @override
  final String confirmPassword;

  @override
  String toString() {
    return 'SignupEvent.secondSend(password: $password, confirmPassword: $confirmPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SecondSendImpl &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password, confirmPassword);

  /// Create a copy of SignupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SecondSendImplCopyWith<_$SecondSendImpl> get copyWith =>
      __$$SecondSendImplCopyWithImpl<_$SecondSendImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() createAccount,
    required TResult Function(String firstName, String lastName, String phone,
            String username, String birthDate)
        firstSend,
    required TResult Function(String password, String confirmPassword)
        secondSend,
  }) {
    return secondSend(password, confirmPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? createAccount,
    TResult? Function(String firstName, String lastName, String phone,
            String username, String birthDate)?
        firstSend,
    TResult? Function(String password, String confirmPassword)? secondSend,
  }) {
    return secondSend?.call(password, confirmPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? createAccount,
    TResult Function(String firstName, String lastName, String phone,
            String username, String birthDate)?
        firstSend,
    TResult Function(String password, String confirmPassword)? secondSend,
    required TResult orElse(),
  }) {
    if (secondSend != null) {
      return secondSend(password, confirmPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateAccount value) createAccount,
    required TResult Function(_FirstSend value) firstSend,
    required TResult Function(_SecondSend value) secondSend,
  }) {
    return secondSend(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateAccount value)? createAccount,
    TResult? Function(_FirstSend value)? firstSend,
    TResult? Function(_SecondSend value)? secondSend,
  }) {
    return secondSend?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateAccount value)? createAccount,
    TResult Function(_FirstSend value)? firstSend,
    TResult Function(_SecondSend value)? secondSend,
    required TResult orElse(),
  }) {
    if (secondSend != null) {
      return secondSend(this);
    }
    return orElse();
  }
}

abstract class _SecondSend implements SignupEvent {
  factory _SecondSend(final String password, final String confirmPassword) =
      _$SecondSendImpl;

  String get password;
  String get confirmPassword;

  /// Create a copy of SignupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SecondSendImplCopyWith<_$SecondSendImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SignupState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(String message) successCreate,
    required TResult Function(String message) error,
    required TResult Function() offline,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(String message)? successCreate,
    TResult? Function(String message)? error,
    TResult? Function()? offline,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(String message)? successCreate,
    TResult Function(String message)? error,
    TResult Function()? offline,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_SuccessCreate value) successCreate,
    required TResult Function(_Error value) error,
    required TResult Function(_Offline value) offline,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_SuccessCreate value)? successCreate,
    TResult? Function(_Error value)? error,
    TResult? Function(_Offline value)? offline,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_SuccessCreate value)? successCreate,
    TResult Function(_Error value)? error,
    TResult Function(_Offline value)? offline,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupStateCopyWith<$Res> {
  factory $SignupStateCopyWith(
          SignupState value, $Res Function(SignupState) then) =
      _$SignupStateCopyWithImpl<$Res, SignupState>;
}

/// @nodoc
class _$SignupStateCopyWithImpl<$Res, $Val extends SignupState>
    implements $SignupStateCopyWith<$Res> {
  _$SignupStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$SignupStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'SignupState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(String message) successCreate,
    required TResult Function(String message) error,
    required TResult Function() offline,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(String message)? successCreate,
    TResult? Function(String message)? error,
    TResult? Function()? offline,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(String message)? successCreate,
    TResult Function(String message)? error,
    TResult Function()? offline,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_SuccessCreate value) successCreate,
    required TResult Function(_Error value) error,
    required TResult Function(_Offline value) offline,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_SuccessCreate value)? successCreate,
    TResult? Function(_Error value)? error,
    TResult? Function(_Offline value)? offline,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_SuccessCreate value)? successCreate,
    TResult Function(_Error value)? error,
    TResult Function(_Offline value)? offline,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SignupState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadInProgressImplCopyWith<$Res> {
  factory _$$LoadInProgressImplCopyWith(_$LoadInProgressImpl value,
          $Res Function(_$LoadInProgressImpl) then) =
      __$$LoadInProgressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadInProgressImplCopyWithImpl<$Res>
    extends _$SignupStateCopyWithImpl<$Res, _$LoadInProgressImpl>
    implements _$$LoadInProgressImplCopyWith<$Res> {
  __$$LoadInProgressImplCopyWithImpl(
      _$LoadInProgressImpl _value, $Res Function(_$LoadInProgressImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadInProgressImpl implements _LoadInProgress {
  const _$LoadInProgressImpl();

  @override
  String toString() {
    return 'SignupState.loadInProgress()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadInProgressImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(String message) successCreate,
    required TResult Function(String message) error,
    required TResult Function() offline,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(String message)? successCreate,
    TResult? Function(String message)? error,
    TResult? Function()? offline,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(String message)? successCreate,
    TResult Function(String message)? error,
    TResult Function()? offline,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_SuccessCreate value) successCreate,
    required TResult Function(_Error value) error,
    required TResult Function(_Offline value) offline,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_SuccessCreate value)? successCreate,
    TResult? Function(_Error value)? error,
    TResult? Function(_Offline value)? offline,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_SuccessCreate value)? successCreate,
    TResult Function(_Error value)? error,
    TResult Function(_Offline value)? offline,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements SignupState {
  const factory _LoadInProgress() = _$LoadInProgressImpl;
}

/// @nodoc
abstract class _$$SuccessCreateImplCopyWith<$Res> {
  factory _$$SuccessCreateImplCopyWith(
          _$SuccessCreateImpl value, $Res Function(_$SuccessCreateImpl) then) =
      __$$SuccessCreateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SuccessCreateImplCopyWithImpl<$Res>
    extends _$SignupStateCopyWithImpl<$Res, _$SuccessCreateImpl>
    implements _$$SuccessCreateImplCopyWith<$Res> {
  __$$SuccessCreateImplCopyWithImpl(
      _$SuccessCreateImpl _value, $Res Function(_$SuccessCreateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SuccessCreateImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SuccessCreateImpl implements _SuccessCreate {
  const _$SuccessCreateImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'SignupState.successCreate(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessCreateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessCreateImplCopyWith<_$SuccessCreateImpl> get copyWith =>
      __$$SuccessCreateImplCopyWithImpl<_$SuccessCreateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(String message) successCreate,
    required TResult Function(String message) error,
    required TResult Function() offline,
  }) {
    return successCreate(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(String message)? successCreate,
    TResult? Function(String message)? error,
    TResult? Function()? offline,
  }) {
    return successCreate?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(String message)? successCreate,
    TResult Function(String message)? error,
    TResult Function()? offline,
    required TResult orElse(),
  }) {
    if (successCreate != null) {
      return successCreate(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_SuccessCreate value) successCreate,
    required TResult Function(_Error value) error,
    required TResult Function(_Offline value) offline,
  }) {
    return successCreate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_SuccessCreate value)? successCreate,
    TResult? Function(_Error value)? error,
    TResult? Function(_Offline value)? offline,
  }) {
    return successCreate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_SuccessCreate value)? successCreate,
    TResult Function(_Error value)? error,
    TResult Function(_Offline value)? offline,
    required TResult orElse(),
  }) {
    if (successCreate != null) {
      return successCreate(this);
    }
    return orElse();
  }
}

abstract class _SuccessCreate implements SignupState {
  const factory _SuccessCreate(final String message) = _$SuccessCreateImpl;

  String get message;

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessCreateImplCopyWith<_$SuccessCreateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$SignupStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'SignupState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(String message) successCreate,
    required TResult Function(String message) error,
    required TResult Function() offline,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(String message)? successCreate,
    TResult? Function(String message)? error,
    TResult? Function()? offline,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(String message)? successCreate,
    TResult Function(String message)? error,
    TResult Function()? offline,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_SuccessCreate value) successCreate,
    required TResult Function(_Error value) error,
    required TResult Function(_Offline value) offline,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_SuccessCreate value)? successCreate,
    TResult? Function(_Error value)? error,
    TResult? Function(_Offline value)? offline,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_SuccessCreate value)? successCreate,
    TResult Function(_Error value)? error,
    TResult Function(_Offline value)? offline,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements SignupState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OfflineImplCopyWith<$Res> {
  factory _$$OfflineImplCopyWith(
          _$OfflineImpl value, $Res Function(_$OfflineImpl) then) =
      __$$OfflineImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OfflineImplCopyWithImpl<$Res>
    extends _$SignupStateCopyWithImpl<$Res, _$OfflineImpl>
    implements _$$OfflineImplCopyWith<$Res> {
  __$$OfflineImplCopyWithImpl(
      _$OfflineImpl _value, $Res Function(_$OfflineImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OfflineImpl implements _Offline {
  const _$OfflineImpl();

  @override
  String toString() {
    return 'SignupState.offline()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OfflineImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(String message) successCreate,
    required TResult Function(String message) error,
    required TResult Function() offline,
  }) {
    return offline();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(String message)? successCreate,
    TResult? Function(String message)? error,
    TResult? Function()? offline,
  }) {
    return offline?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(String message)? successCreate,
    TResult Function(String message)? error,
    TResult Function()? offline,
    required TResult orElse(),
  }) {
    if (offline != null) {
      return offline();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_SuccessCreate value) successCreate,
    required TResult Function(_Error value) error,
    required TResult Function(_Offline value) offline,
  }) {
    return offline(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_SuccessCreate value)? successCreate,
    TResult? Function(_Error value)? error,
    TResult? Function(_Offline value)? offline,
  }) {
    return offline?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_SuccessCreate value)? successCreate,
    TResult Function(_Error value)? error,
    TResult Function(_Offline value)? offline,
    required TResult orElse(),
  }) {
    if (offline != null) {
      return offline(this);
    }
    return orElse();
  }
}

abstract class _Offline implements SignupState {
  const factory _Offline() = _$OfflineImpl;
}
