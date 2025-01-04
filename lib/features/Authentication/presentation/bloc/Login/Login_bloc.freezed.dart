// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'Login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginReq login) login,
    required TResult Function() logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginReq login)? login,
    TResult? Function()? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginReq login)? login,
    TResult Function()? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_Logout value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_Logout value)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoginImplCopyWith<$Res> {
  factory _$$LoginImplCopyWith(
          _$LoginImpl value, $Res Function(_$LoginImpl) then) =
      __$$LoginImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LoginReq login});
}

/// @nodoc
class __$$LoginImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LoginImpl>
    implements _$$LoginImplCopyWith<$Res> {
  __$$LoginImplCopyWithImpl(
      _$LoginImpl _value, $Res Function(_$LoginImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = null,
  }) {
    return _then(_$LoginImpl(
      null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as LoginReq,
    ));
  }
}

/// @nodoc

class _$LoginImpl implements _Login {
  _$LoginImpl(this.login);

  @override
  final LoginReq login;

  @override
  String toString() {
    return 'LoginEvent.login(login: $login)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginImpl &&
            (identical(other.login, login) || other.login == login));
  }

  @override
  int get hashCode => Object.hash(runtimeType, login);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      __$$LoginImplCopyWithImpl<_$LoginImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginReq login) login,
    required TResult Function() logout,
  }) {
    return login(this.login);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginReq login)? login,
    TResult? Function()? logout,
  }) {
    return login?.call(this.login);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginReq login)? login,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this.login);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_Logout value) logout,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_Logout value)? logout,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _Login implements LoginEvent {
  factory _Login(final LoginReq login) = _$LoginImpl;

  LoginReq get login;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogoutImplCopyWith<$Res> {
  factory _$$LogoutImplCopyWith(
          _$LogoutImpl value, $Res Function(_$LogoutImpl) then) =
      __$$LogoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LogoutImpl>
    implements _$$LogoutImplCopyWith<$Res> {
  __$$LogoutImplCopyWithImpl(
      _$LogoutImpl _value, $Res Function(_$LogoutImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LogoutImpl implements _Logout {
  _$LogoutImpl();

  @override
  String toString() {
    return 'LoginEvent.logout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginReq login) login,
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginReq login)? login,
    TResult? Function()? logout,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginReq login)? login,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_Logout value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_Logout value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _Logout implements LoginEvent {
  factory _Logout() = _$LogoutImpl;
}

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(String message) successLogin,
    required TResult Function(String message) error,
    required TResult Function() offline,
    required TResult Function() logoutLoading,
    required TResult Function() successLogout,
    required TResult Function(String message) errorlogout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(String message)? successLogin,
    TResult? Function(String message)? error,
    TResult? Function()? offline,
    TResult? Function()? logoutLoading,
    TResult? Function()? successLogout,
    TResult? Function(String message)? errorlogout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(String message)? successLogin,
    TResult Function(String message)? error,
    TResult Function()? offline,
    TResult Function()? logoutLoading,
    TResult Function()? successLogout,
    TResult Function(String message)? errorlogout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_SuccessLogin value) successLogin,
    required TResult Function(_Error value) error,
    required TResult Function(_Offline value) offline,
    required TResult Function(_LogoutLoading value) logoutLoading,
    required TResult Function(_SuccessLogout value) successLogout,
    required TResult Function(_ErrorLogout value) errorlogout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_SuccessLogin value)? successLogin,
    TResult? Function(_Error value)? error,
    TResult? Function(_Offline value)? offline,
    TResult? Function(_LogoutLoading value)? logoutLoading,
    TResult? Function(_SuccessLogout value)? successLogout,
    TResult? Function(_ErrorLogout value)? errorlogout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_SuccessLogin value)? successLogin,
    TResult Function(_Error value)? error,
    TResult Function(_Offline value)? offline,
    TResult Function(_LogoutLoading value)? logoutLoading,
    TResult Function(_SuccessLogout value)? successLogout,
    TResult Function(_ErrorLogout value)? errorlogout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginState
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
    extends _$LoginStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'LoginState.initial()';
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
    required TResult Function(String message) successLogin,
    required TResult Function(String message) error,
    required TResult Function() offline,
    required TResult Function() logoutLoading,
    required TResult Function() successLogout,
    required TResult Function(String message) errorlogout,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(String message)? successLogin,
    TResult? Function(String message)? error,
    TResult? Function()? offline,
    TResult? Function()? logoutLoading,
    TResult? Function()? successLogout,
    TResult? Function(String message)? errorlogout,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(String message)? successLogin,
    TResult Function(String message)? error,
    TResult Function()? offline,
    TResult Function()? logoutLoading,
    TResult Function()? successLogout,
    TResult Function(String message)? errorlogout,
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
    required TResult Function(_SuccessLogin value) successLogin,
    required TResult Function(_Error value) error,
    required TResult Function(_Offline value) offline,
    required TResult Function(_LogoutLoading value) logoutLoading,
    required TResult Function(_SuccessLogout value) successLogout,
    required TResult Function(_ErrorLogout value) errorlogout,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_SuccessLogin value)? successLogin,
    TResult? Function(_Error value)? error,
    TResult? Function(_Offline value)? offline,
    TResult? Function(_LogoutLoading value)? logoutLoading,
    TResult? Function(_SuccessLogout value)? successLogout,
    TResult? Function(_ErrorLogout value)? errorlogout,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_SuccessLogin value)? successLogin,
    TResult Function(_Error value)? error,
    TResult Function(_Offline value)? offline,
    TResult Function(_LogoutLoading value)? logoutLoading,
    TResult Function(_SuccessLogout value)? successLogout,
    TResult Function(_ErrorLogout value)? errorlogout,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements LoginState {
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
    extends _$LoginStateCopyWithImpl<$Res, _$LoadInProgressImpl>
    implements _$$LoadInProgressImplCopyWith<$Res> {
  __$$LoadInProgressImplCopyWithImpl(
      _$LoadInProgressImpl _value, $Res Function(_$LoadInProgressImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadInProgressImpl implements _LoadInProgress {
  const _$LoadInProgressImpl();

  @override
  String toString() {
    return 'LoginState.loadInProgress()';
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
    required TResult Function(String message) successLogin,
    required TResult Function(String message) error,
    required TResult Function() offline,
    required TResult Function() logoutLoading,
    required TResult Function() successLogout,
    required TResult Function(String message) errorlogout,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(String message)? successLogin,
    TResult? Function(String message)? error,
    TResult? Function()? offline,
    TResult? Function()? logoutLoading,
    TResult? Function()? successLogout,
    TResult? Function(String message)? errorlogout,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(String message)? successLogin,
    TResult Function(String message)? error,
    TResult Function()? offline,
    TResult Function()? logoutLoading,
    TResult Function()? successLogout,
    TResult Function(String message)? errorlogout,
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
    required TResult Function(_SuccessLogin value) successLogin,
    required TResult Function(_Error value) error,
    required TResult Function(_Offline value) offline,
    required TResult Function(_LogoutLoading value) logoutLoading,
    required TResult Function(_SuccessLogout value) successLogout,
    required TResult Function(_ErrorLogout value) errorlogout,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_SuccessLogin value)? successLogin,
    TResult? Function(_Error value)? error,
    TResult? Function(_Offline value)? offline,
    TResult? Function(_LogoutLoading value)? logoutLoading,
    TResult? Function(_SuccessLogout value)? successLogout,
    TResult? Function(_ErrorLogout value)? errorlogout,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_SuccessLogin value)? successLogin,
    TResult Function(_Error value)? error,
    TResult Function(_Offline value)? offline,
    TResult Function(_LogoutLoading value)? logoutLoading,
    TResult Function(_SuccessLogout value)? successLogout,
    TResult Function(_ErrorLogout value)? errorlogout,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements LoginState {
  const factory _LoadInProgress() = _$LoadInProgressImpl;
}

/// @nodoc
abstract class _$$SuccessLoginImplCopyWith<$Res> {
  factory _$$SuccessLoginImplCopyWith(
          _$SuccessLoginImpl value, $Res Function(_$SuccessLoginImpl) then) =
      __$$SuccessLoginImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SuccessLoginImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$SuccessLoginImpl>
    implements _$$SuccessLoginImplCopyWith<$Res> {
  __$$SuccessLoginImplCopyWithImpl(
      _$SuccessLoginImpl _value, $Res Function(_$SuccessLoginImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SuccessLoginImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SuccessLoginImpl implements _SuccessLogin {
  const _$SuccessLoginImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'LoginState.successLogin(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessLoginImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessLoginImplCopyWith<_$SuccessLoginImpl> get copyWith =>
      __$$SuccessLoginImplCopyWithImpl<_$SuccessLoginImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(String message) successLogin,
    required TResult Function(String message) error,
    required TResult Function() offline,
    required TResult Function() logoutLoading,
    required TResult Function() successLogout,
    required TResult Function(String message) errorlogout,
  }) {
    return successLogin(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(String message)? successLogin,
    TResult? Function(String message)? error,
    TResult? Function()? offline,
    TResult? Function()? logoutLoading,
    TResult? Function()? successLogout,
    TResult? Function(String message)? errorlogout,
  }) {
    return successLogin?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(String message)? successLogin,
    TResult Function(String message)? error,
    TResult Function()? offline,
    TResult Function()? logoutLoading,
    TResult Function()? successLogout,
    TResult Function(String message)? errorlogout,
    required TResult orElse(),
  }) {
    if (successLogin != null) {
      return successLogin(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_SuccessLogin value) successLogin,
    required TResult Function(_Error value) error,
    required TResult Function(_Offline value) offline,
    required TResult Function(_LogoutLoading value) logoutLoading,
    required TResult Function(_SuccessLogout value) successLogout,
    required TResult Function(_ErrorLogout value) errorlogout,
  }) {
    return successLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_SuccessLogin value)? successLogin,
    TResult? Function(_Error value)? error,
    TResult? Function(_Offline value)? offline,
    TResult? Function(_LogoutLoading value)? logoutLoading,
    TResult? Function(_SuccessLogout value)? successLogout,
    TResult? Function(_ErrorLogout value)? errorlogout,
  }) {
    return successLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_SuccessLogin value)? successLogin,
    TResult Function(_Error value)? error,
    TResult Function(_Offline value)? offline,
    TResult Function(_LogoutLoading value)? logoutLoading,
    TResult Function(_SuccessLogout value)? successLogout,
    TResult Function(_ErrorLogout value)? errorlogout,
    required TResult orElse(),
  }) {
    if (successLogin != null) {
      return successLogin(this);
    }
    return orElse();
  }
}

abstract class _SuccessLogin implements LoginState {
  const factory _SuccessLogin(final String message) = _$SuccessLoginImpl;

  String get message;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessLoginImplCopyWith<_$SuccessLoginImpl> get copyWith =>
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
    extends _$LoginStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
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
    return 'LoginState.error(message: $message)';
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

  /// Create a copy of LoginState
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
    required TResult Function(String message) successLogin,
    required TResult Function(String message) error,
    required TResult Function() offline,
    required TResult Function() logoutLoading,
    required TResult Function() successLogout,
    required TResult Function(String message) errorlogout,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(String message)? successLogin,
    TResult? Function(String message)? error,
    TResult? Function()? offline,
    TResult? Function()? logoutLoading,
    TResult? Function()? successLogout,
    TResult? Function(String message)? errorlogout,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(String message)? successLogin,
    TResult Function(String message)? error,
    TResult Function()? offline,
    TResult Function()? logoutLoading,
    TResult Function()? successLogout,
    TResult Function(String message)? errorlogout,
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
    required TResult Function(_SuccessLogin value) successLogin,
    required TResult Function(_Error value) error,
    required TResult Function(_Offline value) offline,
    required TResult Function(_LogoutLoading value) logoutLoading,
    required TResult Function(_SuccessLogout value) successLogout,
    required TResult Function(_ErrorLogout value) errorlogout,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_SuccessLogin value)? successLogin,
    TResult? Function(_Error value)? error,
    TResult? Function(_Offline value)? offline,
    TResult? Function(_LogoutLoading value)? logoutLoading,
    TResult? Function(_SuccessLogout value)? successLogout,
    TResult? Function(_ErrorLogout value)? errorlogout,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_SuccessLogin value)? successLogin,
    TResult Function(_Error value)? error,
    TResult Function(_Offline value)? offline,
    TResult Function(_LogoutLoading value)? logoutLoading,
    TResult Function(_SuccessLogout value)? successLogout,
    TResult Function(_ErrorLogout value)? errorlogout,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements LoginState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;

  /// Create a copy of LoginState
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
    extends _$LoginStateCopyWithImpl<$Res, _$OfflineImpl>
    implements _$$OfflineImplCopyWith<$Res> {
  __$$OfflineImplCopyWithImpl(
      _$OfflineImpl _value, $Res Function(_$OfflineImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OfflineImpl implements _Offline {
  const _$OfflineImpl();

  @override
  String toString() {
    return 'LoginState.offline()';
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
    required TResult Function(String message) successLogin,
    required TResult Function(String message) error,
    required TResult Function() offline,
    required TResult Function() logoutLoading,
    required TResult Function() successLogout,
    required TResult Function(String message) errorlogout,
  }) {
    return offline();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(String message)? successLogin,
    TResult? Function(String message)? error,
    TResult? Function()? offline,
    TResult? Function()? logoutLoading,
    TResult? Function()? successLogout,
    TResult? Function(String message)? errorlogout,
  }) {
    return offline?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(String message)? successLogin,
    TResult Function(String message)? error,
    TResult Function()? offline,
    TResult Function()? logoutLoading,
    TResult Function()? successLogout,
    TResult Function(String message)? errorlogout,
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
    required TResult Function(_SuccessLogin value) successLogin,
    required TResult Function(_Error value) error,
    required TResult Function(_Offline value) offline,
    required TResult Function(_LogoutLoading value) logoutLoading,
    required TResult Function(_SuccessLogout value) successLogout,
    required TResult Function(_ErrorLogout value) errorlogout,
  }) {
    return offline(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_SuccessLogin value)? successLogin,
    TResult? Function(_Error value)? error,
    TResult? Function(_Offline value)? offline,
    TResult? Function(_LogoutLoading value)? logoutLoading,
    TResult? Function(_SuccessLogout value)? successLogout,
    TResult? Function(_ErrorLogout value)? errorlogout,
  }) {
    return offline?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_SuccessLogin value)? successLogin,
    TResult Function(_Error value)? error,
    TResult Function(_Offline value)? offline,
    TResult Function(_LogoutLoading value)? logoutLoading,
    TResult Function(_SuccessLogout value)? successLogout,
    TResult Function(_ErrorLogout value)? errorlogout,
    required TResult orElse(),
  }) {
    if (offline != null) {
      return offline(this);
    }
    return orElse();
  }
}

abstract class _Offline implements LoginState {
  const factory _Offline() = _$OfflineImpl;
}

/// @nodoc
abstract class _$$LogoutLoadingImplCopyWith<$Res> {
  factory _$$LogoutLoadingImplCopyWith(
          _$LogoutLoadingImpl value, $Res Function(_$LogoutLoadingImpl) then) =
      __$$LogoutLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutLoadingImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LogoutLoadingImpl>
    implements _$$LogoutLoadingImplCopyWith<$Res> {
  __$$LogoutLoadingImplCopyWithImpl(
      _$LogoutLoadingImpl _value, $Res Function(_$LogoutLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LogoutLoadingImpl implements _LogoutLoading {
  const _$LogoutLoadingImpl();

  @override
  String toString() {
    return 'LoginState.logoutLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(String message) successLogin,
    required TResult Function(String message) error,
    required TResult Function() offline,
    required TResult Function() logoutLoading,
    required TResult Function() successLogout,
    required TResult Function(String message) errorlogout,
  }) {
    return logoutLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(String message)? successLogin,
    TResult? Function(String message)? error,
    TResult? Function()? offline,
    TResult? Function()? logoutLoading,
    TResult? Function()? successLogout,
    TResult? Function(String message)? errorlogout,
  }) {
    return logoutLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(String message)? successLogin,
    TResult Function(String message)? error,
    TResult Function()? offline,
    TResult Function()? logoutLoading,
    TResult Function()? successLogout,
    TResult Function(String message)? errorlogout,
    required TResult orElse(),
  }) {
    if (logoutLoading != null) {
      return logoutLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_SuccessLogin value) successLogin,
    required TResult Function(_Error value) error,
    required TResult Function(_Offline value) offline,
    required TResult Function(_LogoutLoading value) logoutLoading,
    required TResult Function(_SuccessLogout value) successLogout,
    required TResult Function(_ErrorLogout value) errorlogout,
  }) {
    return logoutLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_SuccessLogin value)? successLogin,
    TResult? Function(_Error value)? error,
    TResult? Function(_Offline value)? offline,
    TResult? Function(_LogoutLoading value)? logoutLoading,
    TResult? Function(_SuccessLogout value)? successLogout,
    TResult? Function(_ErrorLogout value)? errorlogout,
  }) {
    return logoutLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_SuccessLogin value)? successLogin,
    TResult Function(_Error value)? error,
    TResult Function(_Offline value)? offline,
    TResult Function(_LogoutLoading value)? logoutLoading,
    TResult Function(_SuccessLogout value)? successLogout,
    TResult Function(_ErrorLogout value)? errorlogout,
    required TResult orElse(),
  }) {
    if (logoutLoading != null) {
      return logoutLoading(this);
    }
    return orElse();
  }
}

abstract class _LogoutLoading implements LoginState {
  const factory _LogoutLoading() = _$LogoutLoadingImpl;
}

/// @nodoc
abstract class _$$SuccessLogoutImplCopyWith<$Res> {
  factory _$$SuccessLogoutImplCopyWith(
          _$SuccessLogoutImpl value, $Res Function(_$SuccessLogoutImpl) then) =
      __$$SuccessLogoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessLogoutImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$SuccessLogoutImpl>
    implements _$$SuccessLogoutImplCopyWith<$Res> {
  __$$SuccessLogoutImplCopyWithImpl(
      _$SuccessLogoutImpl _value, $Res Function(_$SuccessLogoutImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SuccessLogoutImpl implements _SuccessLogout {
  const _$SuccessLogoutImpl();

  @override
  String toString() {
    return 'LoginState.successLogout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SuccessLogoutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(String message) successLogin,
    required TResult Function(String message) error,
    required TResult Function() offline,
    required TResult Function() logoutLoading,
    required TResult Function() successLogout,
    required TResult Function(String message) errorlogout,
  }) {
    return successLogout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(String message)? successLogin,
    TResult? Function(String message)? error,
    TResult? Function()? offline,
    TResult? Function()? logoutLoading,
    TResult? Function()? successLogout,
    TResult? Function(String message)? errorlogout,
  }) {
    return successLogout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(String message)? successLogin,
    TResult Function(String message)? error,
    TResult Function()? offline,
    TResult Function()? logoutLoading,
    TResult Function()? successLogout,
    TResult Function(String message)? errorlogout,
    required TResult orElse(),
  }) {
    if (successLogout != null) {
      return successLogout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_SuccessLogin value) successLogin,
    required TResult Function(_Error value) error,
    required TResult Function(_Offline value) offline,
    required TResult Function(_LogoutLoading value) logoutLoading,
    required TResult Function(_SuccessLogout value) successLogout,
    required TResult Function(_ErrorLogout value) errorlogout,
  }) {
    return successLogout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_SuccessLogin value)? successLogin,
    TResult? Function(_Error value)? error,
    TResult? Function(_Offline value)? offline,
    TResult? Function(_LogoutLoading value)? logoutLoading,
    TResult? Function(_SuccessLogout value)? successLogout,
    TResult? Function(_ErrorLogout value)? errorlogout,
  }) {
    return successLogout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_SuccessLogin value)? successLogin,
    TResult Function(_Error value)? error,
    TResult Function(_Offline value)? offline,
    TResult Function(_LogoutLoading value)? logoutLoading,
    TResult Function(_SuccessLogout value)? successLogout,
    TResult Function(_ErrorLogout value)? errorlogout,
    required TResult orElse(),
  }) {
    if (successLogout != null) {
      return successLogout(this);
    }
    return orElse();
  }
}

abstract class _SuccessLogout implements LoginState {
  const factory _SuccessLogout() = _$SuccessLogoutImpl;
}

/// @nodoc
abstract class _$$ErrorLogoutImplCopyWith<$Res> {
  factory _$$ErrorLogoutImplCopyWith(
          _$ErrorLogoutImpl value, $Res Function(_$ErrorLogoutImpl) then) =
      __$$ErrorLogoutImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorLogoutImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$ErrorLogoutImpl>
    implements _$$ErrorLogoutImplCopyWith<$Res> {
  __$$ErrorLogoutImplCopyWithImpl(
      _$ErrorLogoutImpl _value, $Res Function(_$ErrorLogoutImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorLogoutImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorLogoutImpl implements _ErrorLogout {
  const _$ErrorLogoutImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'LoginState.errorlogout(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorLogoutImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorLogoutImplCopyWith<_$ErrorLogoutImpl> get copyWith =>
      __$$ErrorLogoutImplCopyWithImpl<_$ErrorLogoutImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(String message) successLogin,
    required TResult Function(String message) error,
    required TResult Function() offline,
    required TResult Function() logoutLoading,
    required TResult Function() successLogout,
    required TResult Function(String message) errorlogout,
  }) {
    return errorlogout(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(String message)? successLogin,
    TResult? Function(String message)? error,
    TResult? Function()? offline,
    TResult? Function()? logoutLoading,
    TResult? Function()? successLogout,
    TResult? Function(String message)? errorlogout,
  }) {
    return errorlogout?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(String message)? successLogin,
    TResult Function(String message)? error,
    TResult Function()? offline,
    TResult Function()? logoutLoading,
    TResult Function()? successLogout,
    TResult Function(String message)? errorlogout,
    required TResult orElse(),
  }) {
    if (errorlogout != null) {
      return errorlogout(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_SuccessLogin value) successLogin,
    required TResult Function(_Error value) error,
    required TResult Function(_Offline value) offline,
    required TResult Function(_LogoutLoading value) logoutLoading,
    required TResult Function(_SuccessLogout value) successLogout,
    required TResult Function(_ErrorLogout value) errorlogout,
  }) {
    return errorlogout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_SuccessLogin value)? successLogin,
    TResult? Function(_Error value)? error,
    TResult? Function(_Offline value)? offline,
    TResult? Function(_LogoutLoading value)? logoutLoading,
    TResult? Function(_SuccessLogout value)? successLogout,
    TResult? Function(_ErrorLogout value)? errorlogout,
  }) {
    return errorlogout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_SuccessLogin value)? successLogin,
    TResult Function(_Error value)? error,
    TResult Function(_Offline value)? offline,
    TResult Function(_LogoutLoading value)? logoutLoading,
    TResult Function(_SuccessLogout value)? successLogout,
    TResult Function(_ErrorLogout value)? errorlogout,
    required TResult orElse(),
  }) {
    if (errorlogout != null) {
      return errorlogout(this);
    }
    return orElse();
  }
}

abstract class _ErrorLogout implements LoginState {
  const factory _ErrorLogout(final String message) = _$ErrorLogoutImpl;

  String get message;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorLogoutImplCopyWith<_$ErrorLogoutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
