// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WalletEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String securityCode, String confirmSecurityCode, String bankAccount)
        addWallet,
    required TResult Function() getMyWallet,
    required TResult Function(String code) addMoney,
    required TResult Function() getCodes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String securityCode, String confirmSecurityCode,
            String bankAccount)?
        addWallet,
    TResult? Function()? getMyWallet,
    TResult? Function(String code)? addMoney,
    TResult? Function()? getCodes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String securityCode, String confirmSecurityCode,
            String bankAccount)?
        addWallet,
    TResult Function()? getMyWallet,
    TResult Function(String code)? addMoney,
    TResult Function()? getCodes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddWallet value) addWallet,
    required TResult Function(_GetMyWallet value) getMyWallet,
    required TResult Function(_AddMoney value) addMoney,
    required TResult Function(_GetCodes value) getCodes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddWallet value)? addWallet,
    TResult? Function(_GetMyWallet value)? getMyWallet,
    TResult? Function(_AddMoney value)? addMoney,
    TResult? Function(_GetCodes value)? getCodes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddWallet value)? addWallet,
    TResult Function(_GetMyWallet value)? getMyWallet,
    TResult Function(_AddMoney value)? addMoney,
    TResult Function(_GetCodes value)? getCodes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletEventCopyWith<$Res> {
  factory $WalletEventCopyWith(
          WalletEvent value, $Res Function(WalletEvent) then) =
      _$WalletEventCopyWithImpl<$Res, WalletEvent>;
}

/// @nodoc
class _$WalletEventCopyWithImpl<$Res, $Val extends WalletEvent>
    implements $WalletEventCopyWith<$Res> {
  _$WalletEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WalletEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AddWalletImplCopyWith<$Res> {
  factory _$$AddWalletImplCopyWith(
          _$AddWalletImpl value, $Res Function(_$AddWalletImpl) then) =
      __$$AddWalletImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String securityCode, String confirmSecurityCode, String bankAccount});
}

/// @nodoc
class __$$AddWalletImplCopyWithImpl<$Res>
    extends _$WalletEventCopyWithImpl<$Res, _$AddWalletImpl>
    implements _$$AddWalletImplCopyWith<$Res> {
  __$$AddWalletImplCopyWithImpl(
      _$AddWalletImpl _value, $Res Function(_$AddWalletImpl) _then)
      : super(_value, _then);

  /// Create a copy of WalletEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? securityCode = null,
    Object? confirmSecurityCode = null,
    Object? bankAccount = null,
  }) {
    return _then(_$AddWalletImpl(
      null == securityCode
          ? _value.securityCode
          : securityCode // ignore: cast_nullable_to_non_nullable
              as String,
      null == confirmSecurityCode
          ? _value.confirmSecurityCode
          : confirmSecurityCode // ignore: cast_nullable_to_non_nullable
              as String,
      null == bankAccount
          ? _value.bankAccount
          : bankAccount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddWalletImpl implements _AddWallet {
  const _$AddWalletImpl(
      this.securityCode, this.confirmSecurityCode, this.bankAccount);

  @override
  final String securityCode;
  @override
  final String confirmSecurityCode;
  @override
  final String bankAccount;

  @override
  String toString() {
    return 'WalletEvent.addWallet(securityCode: $securityCode, confirmSecurityCode: $confirmSecurityCode, bankAccount: $bankAccount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddWalletImpl &&
            (identical(other.securityCode, securityCode) ||
                other.securityCode == securityCode) &&
            (identical(other.confirmSecurityCode, confirmSecurityCode) ||
                other.confirmSecurityCode == confirmSecurityCode) &&
            (identical(other.bankAccount, bankAccount) ||
                other.bankAccount == bankAccount));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, securityCode, confirmSecurityCode, bankAccount);

  /// Create a copy of WalletEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddWalletImplCopyWith<_$AddWalletImpl> get copyWith =>
      __$$AddWalletImplCopyWithImpl<_$AddWalletImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String securityCode, String confirmSecurityCode, String bankAccount)
        addWallet,
    required TResult Function() getMyWallet,
    required TResult Function(String code) addMoney,
    required TResult Function() getCodes,
  }) {
    return addWallet(securityCode, confirmSecurityCode, bankAccount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String securityCode, String confirmSecurityCode,
            String bankAccount)?
        addWallet,
    TResult? Function()? getMyWallet,
    TResult? Function(String code)? addMoney,
    TResult? Function()? getCodes,
  }) {
    return addWallet?.call(securityCode, confirmSecurityCode, bankAccount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String securityCode, String confirmSecurityCode,
            String bankAccount)?
        addWallet,
    TResult Function()? getMyWallet,
    TResult Function(String code)? addMoney,
    TResult Function()? getCodes,
    required TResult orElse(),
  }) {
    if (addWallet != null) {
      return addWallet(securityCode, confirmSecurityCode, bankAccount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddWallet value) addWallet,
    required TResult Function(_GetMyWallet value) getMyWallet,
    required TResult Function(_AddMoney value) addMoney,
    required TResult Function(_GetCodes value) getCodes,
  }) {
    return addWallet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddWallet value)? addWallet,
    TResult? Function(_GetMyWallet value)? getMyWallet,
    TResult? Function(_AddMoney value)? addMoney,
    TResult? Function(_GetCodes value)? getCodes,
  }) {
    return addWallet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddWallet value)? addWallet,
    TResult Function(_GetMyWallet value)? getMyWallet,
    TResult Function(_AddMoney value)? addMoney,
    TResult Function(_GetCodes value)? getCodes,
    required TResult orElse(),
  }) {
    if (addWallet != null) {
      return addWallet(this);
    }
    return orElse();
  }
}

abstract class _AddWallet implements WalletEvent {
  const factory _AddWallet(
      final String securityCode,
      final String confirmSecurityCode,
      final String bankAccount) = _$AddWalletImpl;

  String get securityCode;
  String get confirmSecurityCode;
  String get bankAccount;

  /// Create a copy of WalletEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddWalletImplCopyWith<_$AddWalletImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetMyWalletImplCopyWith<$Res> {
  factory _$$GetMyWalletImplCopyWith(
          _$GetMyWalletImpl value, $Res Function(_$GetMyWalletImpl) then) =
      __$$GetMyWalletImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetMyWalletImplCopyWithImpl<$Res>
    extends _$WalletEventCopyWithImpl<$Res, _$GetMyWalletImpl>
    implements _$$GetMyWalletImplCopyWith<$Res> {
  __$$GetMyWalletImplCopyWithImpl(
      _$GetMyWalletImpl _value, $Res Function(_$GetMyWalletImpl) _then)
      : super(_value, _then);

  /// Create a copy of WalletEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetMyWalletImpl implements _GetMyWallet {
  const _$GetMyWalletImpl();

  @override
  String toString() {
    return 'WalletEvent.getMyWallet()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetMyWalletImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String securityCode, String confirmSecurityCode, String bankAccount)
        addWallet,
    required TResult Function() getMyWallet,
    required TResult Function(String code) addMoney,
    required TResult Function() getCodes,
  }) {
    return getMyWallet();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String securityCode, String confirmSecurityCode,
            String bankAccount)?
        addWallet,
    TResult? Function()? getMyWallet,
    TResult? Function(String code)? addMoney,
    TResult? Function()? getCodes,
  }) {
    return getMyWallet?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String securityCode, String confirmSecurityCode,
            String bankAccount)?
        addWallet,
    TResult Function()? getMyWallet,
    TResult Function(String code)? addMoney,
    TResult Function()? getCodes,
    required TResult orElse(),
  }) {
    if (getMyWallet != null) {
      return getMyWallet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddWallet value) addWallet,
    required TResult Function(_GetMyWallet value) getMyWallet,
    required TResult Function(_AddMoney value) addMoney,
    required TResult Function(_GetCodes value) getCodes,
  }) {
    return getMyWallet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddWallet value)? addWallet,
    TResult? Function(_GetMyWallet value)? getMyWallet,
    TResult? Function(_AddMoney value)? addMoney,
    TResult? Function(_GetCodes value)? getCodes,
  }) {
    return getMyWallet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddWallet value)? addWallet,
    TResult Function(_GetMyWallet value)? getMyWallet,
    TResult Function(_AddMoney value)? addMoney,
    TResult Function(_GetCodes value)? getCodes,
    required TResult orElse(),
  }) {
    if (getMyWallet != null) {
      return getMyWallet(this);
    }
    return orElse();
  }
}

abstract class _GetMyWallet implements WalletEvent {
  const factory _GetMyWallet() = _$GetMyWalletImpl;
}

/// @nodoc
abstract class _$$AddMoneyImplCopyWith<$Res> {
  factory _$$AddMoneyImplCopyWith(
          _$AddMoneyImpl value, $Res Function(_$AddMoneyImpl) then) =
      __$$AddMoneyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String code});
}

/// @nodoc
class __$$AddMoneyImplCopyWithImpl<$Res>
    extends _$WalletEventCopyWithImpl<$Res, _$AddMoneyImpl>
    implements _$$AddMoneyImplCopyWith<$Res> {
  __$$AddMoneyImplCopyWithImpl(
      _$AddMoneyImpl _value, $Res Function(_$AddMoneyImpl) _then)
      : super(_value, _then);

  /// Create a copy of WalletEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_$AddMoneyImpl(
      null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddMoneyImpl implements _AddMoney {
  const _$AddMoneyImpl(this.code);

  @override
  final String code;

  @override
  String toString() {
    return 'WalletEvent.addMoney(code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddMoneyImpl &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code);

  /// Create a copy of WalletEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddMoneyImplCopyWith<_$AddMoneyImpl> get copyWith =>
      __$$AddMoneyImplCopyWithImpl<_$AddMoneyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String securityCode, String confirmSecurityCode, String bankAccount)
        addWallet,
    required TResult Function() getMyWallet,
    required TResult Function(String code) addMoney,
    required TResult Function() getCodes,
  }) {
    return addMoney(code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String securityCode, String confirmSecurityCode,
            String bankAccount)?
        addWallet,
    TResult? Function()? getMyWallet,
    TResult? Function(String code)? addMoney,
    TResult? Function()? getCodes,
  }) {
    return addMoney?.call(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String securityCode, String confirmSecurityCode,
            String bankAccount)?
        addWallet,
    TResult Function()? getMyWallet,
    TResult Function(String code)? addMoney,
    TResult Function()? getCodes,
    required TResult orElse(),
  }) {
    if (addMoney != null) {
      return addMoney(code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddWallet value) addWallet,
    required TResult Function(_GetMyWallet value) getMyWallet,
    required TResult Function(_AddMoney value) addMoney,
    required TResult Function(_GetCodes value) getCodes,
  }) {
    return addMoney(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddWallet value)? addWallet,
    TResult? Function(_GetMyWallet value)? getMyWallet,
    TResult? Function(_AddMoney value)? addMoney,
    TResult? Function(_GetCodes value)? getCodes,
  }) {
    return addMoney?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddWallet value)? addWallet,
    TResult Function(_GetMyWallet value)? getMyWallet,
    TResult Function(_AddMoney value)? addMoney,
    TResult Function(_GetCodes value)? getCodes,
    required TResult orElse(),
  }) {
    if (addMoney != null) {
      return addMoney(this);
    }
    return orElse();
  }
}

abstract class _AddMoney implements WalletEvent {
  const factory _AddMoney(final String code) = _$AddMoneyImpl;

  String get code;

  /// Create a copy of WalletEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddMoneyImplCopyWith<_$AddMoneyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCodesImplCopyWith<$Res> {
  factory _$$GetCodesImplCopyWith(
          _$GetCodesImpl value, $Res Function(_$GetCodesImpl) then) =
      __$$GetCodesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCodesImplCopyWithImpl<$Res>
    extends _$WalletEventCopyWithImpl<$Res, _$GetCodesImpl>
    implements _$$GetCodesImplCopyWith<$Res> {
  __$$GetCodesImplCopyWithImpl(
      _$GetCodesImpl _value, $Res Function(_$GetCodesImpl) _then)
      : super(_value, _then);

  /// Create a copy of WalletEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetCodesImpl implements _GetCodes {
  const _$GetCodesImpl();

  @override
  String toString() {
    return 'WalletEvent.getCodes()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetCodesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String securityCode, String confirmSecurityCode, String bankAccount)
        addWallet,
    required TResult Function() getMyWallet,
    required TResult Function(String code) addMoney,
    required TResult Function() getCodes,
  }) {
    return getCodes();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String securityCode, String confirmSecurityCode,
            String bankAccount)?
        addWallet,
    TResult? Function()? getMyWallet,
    TResult? Function(String code)? addMoney,
    TResult? Function()? getCodes,
  }) {
    return getCodes?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String securityCode, String confirmSecurityCode,
            String bankAccount)?
        addWallet,
    TResult Function()? getMyWallet,
    TResult Function(String code)? addMoney,
    TResult Function()? getCodes,
    required TResult orElse(),
  }) {
    if (getCodes != null) {
      return getCodes();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddWallet value) addWallet,
    required TResult Function(_GetMyWallet value) getMyWallet,
    required TResult Function(_AddMoney value) addMoney,
    required TResult Function(_GetCodes value) getCodes,
  }) {
    return getCodes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddWallet value)? addWallet,
    TResult? Function(_GetMyWallet value)? getMyWallet,
    TResult? Function(_AddMoney value)? addMoney,
    TResult? Function(_GetCodes value)? getCodes,
  }) {
    return getCodes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddWallet value)? addWallet,
    TResult Function(_GetMyWallet value)? getMyWallet,
    TResult Function(_AddMoney value)? addMoney,
    TResult Function(_GetCodes value)? getCodes,
    required TResult orElse(),
  }) {
    if (getCodes != null) {
      return getCodes(this);
    }
    return orElse();
  }
}

abstract class _GetCodes implements WalletEvent {
  const factory _GetCodes() = _$GetCodesImpl;
}

/// @nodoc
mixin _$WalletState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(Wallet wallet) getWallet,
    required TResult Function(List<ValidCode> codes) loadingCodes,
    required TResult Function(double balance) addedMoney,
    required TResult Function(String messsage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(Wallet wallet)? getWallet,
    TResult? Function(List<ValidCode> codes)? loadingCodes,
    TResult? Function(double balance)? addedMoney,
    TResult? Function(String messsage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(Wallet wallet)? getWallet,
    TResult Function(List<ValidCode> codes)? loadingCodes,
    TResult Function(double balance)? addedMoney,
    TResult Function(String messsage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_GetWallet value) getWallet,
    required TResult Function(_LoadingCodes value) loadingCodes,
    required TResult Function(_AddedMoney value) addedMoney,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_GetWallet value)? getWallet,
    TResult? Function(_LoadingCodes value)? loadingCodes,
    TResult? Function(_AddedMoney value)? addedMoney,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_GetWallet value)? getWallet,
    TResult Function(_LoadingCodes value)? loadingCodes,
    TResult Function(_AddedMoney value)? addedMoney,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletStateCopyWith<$Res> {
  factory $WalletStateCopyWith(
          WalletState value, $Res Function(WalletState) then) =
      _$WalletStateCopyWithImpl<$Res, WalletState>;
}

/// @nodoc
class _$WalletStateCopyWithImpl<$Res, $Val extends WalletState>
    implements $WalletStateCopyWith<$Res> {
  _$WalletStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WalletState
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
    extends _$WalletStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of WalletState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'WalletState.initial()';
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
    required TResult Function(Wallet wallet) getWallet,
    required TResult Function(List<ValidCode> codes) loadingCodes,
    required TResult Function(double balance) addedMoney,
    required TResult Function(String messsage) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(Wallet wallet)? getWallet,
    TResult? Function(List<ValidCode> codes)? loadingCodes,
    TResult? Function(double balance)? addedMoney,
    TResult? Function(String messsage)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(Wallet wallet)? getWallet,
    TResult Function(List<ValidCode> codes)? loadingCodes,
    TResult Function(double balance)? addedMoney,
    TResult Function(String messsage)? error,
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
    required TResult Function(_GetWallet value) getWallet,
    required TResult Function(_LoadingCodes value) loadingCodes,
    required TResult Function(_AddedMoney value) addedMoney,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_GetWallet value)? getWallet,
    TResult? Function(_LoadingCodes value)? loadingCodes,
    TResult? Function(_AddedMoney value)? addedMoney,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_GetWallet value)? getWallet,
    TResult Function(_LoadingCodes value)? loadingCodes,
    TResult Function(_AddedMoney value)? addedMoney,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements WalletState {
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
    extends _$WalletStateCopyWithImpl<$Res, _$LoadInProgressImpl>
    implements _$$LoadInProgressImplCopyWith<$Res> {
  __$$LoadInProgressImplCopyWithImpl(
      _$LoadInProgressImpl _value, $Res Function(_$LoadInProgressImpl) _then)
      : super(_value, _then);

  /// Create a copy of WalletState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadInProgressImpl implements _LoadInProgress {
  const _$LoadInProgressImpl();

  @override
  String toString() {
    return 'WalletState.loadInProgress()';
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
    required TResult Function(Wallet wallet) getWallet,
    required TResult Function(List<ValidCode> codes) loadingCodes,
    required TResult Function(double balance) addedMoney,
    required TResult Function(String messsage) error,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(Wallet wallet)? getWallet,
    TResult? Function(List<ValidCode> codes)? loadingCodes,
    TResult? Function(double balance)? addedMoney,
    TResult? Function(String messsage)? error,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(Wallet wallet)? getWallet,
    TResult Function(List<ValidCode> codes)? loadingCodes,
    TResult Function(double balance)? addedMoney,
    TResult Function(String messsage)? error,
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
    required TResult Function(_GetWallet value) getWallet,
    required TResult Function(_LoadingCodes value) loadingCodes,
    required TResult Function(_AddedMoney value) addedMoney,
    required TResult Function(_Error value) error,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_GetWallet value)? getWallet,
    TResult? Function(_LoadingCodes value)? loadingCodes,
    TResult? Function(_AddedMoney value)? addedMoney,
    TResult? Function(_Error value)? error,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_GetWallet value)? getWallet,
    TResult Function(_LoadingCodes value)? loadingCodes,
    TResult Function(_AddedMoney value)? addedMoney,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements WalletState {
  const factory _LoadInProgress() = _$LoadInProgressImpl;
}

/// @nodoc
abstract class _$$GetWalletImplCopyWith<$Res> {
  factory _$$GetWalletImplCopyWith(
          _$GetWalletImpl value, $Res Function(_$GetWalletImpl) then) =
      __$$GetWalletImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Wallet wallet});
}

/// @nodoc
class __$$GetWalletImplCopyWithImpl<$Res>
    extends _$WalletStateCopyWithImpl<$Res, _$GetWalletImpl>
    implements _$$GetWalletImplCopyWith<$Res> {
  __$$GetWalletImplCopyWithImpl(
      _$GetWalletImpl _value, $Res Function(_$GetWalletImpl) _then)
      : super(_value, _then);

  /// Create a copy of WalletState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wallet = null,
  }) {
    return _then(_$GetWalletImpl(
      null == wallet
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as Wallet,
    ));
  }
}

/// @nodoc

class _$GetWalletImpl implements _GetWallet {
  const _$GetWalletImpl(this.wallet);

  @override
  final Wallet wallet;

  @override
  String toString() {
    return 'WalletState.getWallet(wallet: $wallet)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetWalletImpl &&
            (identical(other.wallet, wallet) || other.wallet == wallet));
  }

  @override
  int get hashCode => Object.hash(runtimeType, wallet);

  /// Create a copy of WalletState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetWalletImplCopyWith<_$GetWalletImpl> get copyWith =>
      __$$GetWalletImplCopyWithImpl<_$GetWalletImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(Wallet wallet) getWallet,
    required TResult Function(List<ValidCode> codes) loadingCodes,
    required TResult Function(double balance) addedMoney,
    required TResult Function(String messsage) error,
  }) {
    return getWallet(wallet);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(Wallet wallet)? getWallet,
    TResult? Function(List<ValidCode> codes)? loadingCodes,
    TResult? Function(double balance)? addedMoney,
    TResult? Function(String messsage)? error,
  }) {
    return getWallet?.call(wallet);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(Wallet wallet)? getWallet,
    TResult Function(List<ValidCode> codes)? loadingCodes,
    TResult Function(double balance)? addedMoney,
    TResult Function(String messsage)? error,
    required TResult orElse(),
  }) {
    if (getWallet != null) {
      return getWallet(wallet);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_GetWallet value) getWallet,
    required TResult Function(_LoadingCodes value) loadingCodes,
    required TResult Function(_AddedMoney value) addedMoney,
    required TResult Function(_Error value) error,
  }) {
    return getWallet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_GetWallet value)? getWallet,
    TResult? Function(_LoadingCodes value)? loadingCodes,
    TResult? Function(_AddedMoney value)? addedMoney,
    TResult? Function(_Error value)? error,
  }) {
    return getWallet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_GetWallet value)? getWallet,
    TResult Function(_LoadingCodes value)? loadingCodes,
    TResult Function(_AddedMoney value)? addedMoney,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (getWallet != null) {
      return getWallet(this);
    }
    return orElse();
  }
}

abstract class _GetWallet implements WalletState {
  const factory _GetWallet(final Wallet wallet) = _$GetWalletImpl;

  Wallet get wallet;

  /// Create a copy of WalletState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetWalletImplCopyWith<_$GetWalletImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingCodesImplCopyWith<$Res> {
  factory _$$LoadingCodesImplCopyWith(
          _$LoadingCodesImpl value, $Res Function(_$LoadingCodesImpl) then) =
      __$$LoadingCodesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ValidCode> codes});
}

/// @nodoc
class __$$LoadingCodesImplCopyWithImpl<$Res>
    extends _$WalletStateCopyWithImpl<$Res, _$LoadingCodesImpl>
    implements _$$LoadingCodesImplCopyWith<$Res> {
  __$$LoadingCodesImplCopyWithImpl(
      _$LoadingCodesImpl _value, $Res Function(_$LoadingCodesImpl) _then)
      : super(_value, _then);

  /// Create a copy of WalletState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codes = null,
  }) {
    return _then(_$LoadingCodesImpl(
      null == codes
          ? _value._codes
          : codes // ignore: cast_nullable_to_non_nullable
              as List<ValidCode>,
    ));
  }
}

/// @nodoc

class _$LoadingCodesImpl implements _LoadingCodes {
  const _$LoadingCodesImpl(final List<ValidCode> codes) : _codes = codes;

  final List<ValidCode> _codes;
  @override
  List<ValidCode> get codes {
    if (_codes is EqualUnmodifiableListView) return _codes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_codes);
  }

  @override
  String toString() {
    return 'WalletState.loadingCodes(codes: $codes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingCodesImpl &&
            const DeepCollectionEquality().equals(other._codes, _codes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_codes));

  /// Create a copy of WalletState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingCodesImplCopyWith<_$LoadingCodesImpl> get copyWith =>
      __$$LoadingCodesImplCopyWithImpl<_$LoadingCodesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(Wallet wallet) getWallet,
    required TResult Function(List<ValidCode> codes) loadingCodes,
    required TResult Function(double balance) addedMoney,
    required TResult Function(String messsage) error,
  }) {
    return loadingCodes(codes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(Wallet wallet)? getWallet,
    TResult? Function(List<ValidCode> codes)? loadingCodes,
    TResult? Function(double balance)? addedMoney,
    TResult? Function(String messsage)? error,
  }) {
    return loadingCodes?.call(codes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(Wallet wallet)? getWallet,
    TResult Function(List<ValidCode> codes)? loadingCodes,
    TResult Function(double balance)? addedMoney,
    TResult Function(String messsage)? error,
    required TResult orElse(),
  }) {
    if (loadingCodes != null) {
      return loadingCodes(codes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_GetWallet value) getWallet,
    required TResult Function(_LoadingCodes value) loadingCodes,
    required TResult Function(_AddedMoney value) addedMoney,
    required TResult Function(_Error value) error,
  }) {
    return loadingCodes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_GetWallet value)? getWallet,
    TResult? Function(_LoadingCodes value)? loadingCodes,
    TResult? Function(_AddedMoney value)? addedMoney,
    TResult? Function(_Error value)? error,
  }) {
    return loadingCodes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_GetWallet value)? getWallet,
    TResult Function(_LoadingCodes value)? loadingCodes,
    TResult Function(_AddedMoney value)? addedMoney,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loadingCodes != null) {
      return loadingCodes(this);
    }
    return orElse();
  }
}

abstract class _LoadingCodes implements WalletState {
  const factory _LoadingCodes(final List<ValidCode> codes) = _$LoadingCodesImpl;

  List<ValidCode> get codes;

  /// Create a copy of WalletState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadingCodesImplCopyWith<_$LoadingCodesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddedMoneyImplCopyWith<$Res> {
  factory _$$AddedMoneyImplCopyWith(
          _$AddedMoneyImpl value, $Res Function(_$AddedMoneyImpl) then) =
      __$$AddedMoneyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double balance});
}

/// @nodoc
class __$$AddedMoneyImplCopyWithImpl<$Res>
    extends _$WalletStateCopyWithImpl<$Res, _$AddedMoneyImpl>
    implements _$$AddedMoneyImplCopyWith<$Res> {
  __$$AddedMoneyImplCopyWithImpl(
      _$AddedMoneyImpl _value, $Res Function(_$AddedMoneyImpl) _then)
      : super(_value, _then);

  /// Create a copy of WalletState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? balance = null,
  }) {
    return _then(_$AddedMoneyImpl(
      null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$AddedMoneyImpl implements _AddedMoney {
  const _$AddedMoneyImpl(this.balance);

  @override
  final double balance;

  @override
  String toString() {
    return 'WalletState.addedMoney(balance: $balance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddedMoneyImpl &&
            (identical(other.balance, balance) || other.balance == balance));
  }

  @override
  int get hashCode => Object.hash(runtimeType, balance);

  /// Create a copy of WalletState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddedMoneyImplCopyWith<_$AddedMoneyImpl> get copyWith =>
      __$$AddedMoneyImplCopyWithImpl<_$AddedMoneyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(Wallet wallet) getWallet,
    required TResult Function(List<ValidCode> codes) loadingCodes,
    required TResult Function(double balance) addedMoney,
    required TResult Function(String messsage) error,
  }) {
    return addedMoney(balance);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(Wallet wallet)? getWallet,
    TResult? Function(List<ValidCode> codes)? loadingCodes,
    TResult? Function(double balance)? addedMoney,
    TResult? Function(String messsage)? error,
  }) {
    return addedMoney?.call(balance);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(Wallet wallet)? getWallet,
    TResult Function(List<ValidCode> codes)? loadingCodes,
    TResult Function(double balance)? addedMoney,
    TResult Function(String messsage)? error,
    required TResult orElse(),
  }) {
    if (addedMoney != null) {
      return addedMoney(balance);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_GetWallet value) getWallet,
    required TResult Function(_LoadingCodes value) loadingCodes,
    required TResult Function(_AddedMoney value) addedMoney,
    required TResult Function(_Error value) error,
  }) {
    return addedMoney(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_GetWallet value)? getWallet,
    TResult? Function(_LoadingCodes value)? loadingCodes,
    TResult? Function(_AddedMoney value)? addedMoney,
    TResult? Function(_Error value)? error,
  }) {
    return addedMoney?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_GetWallet value)? getWallet,
    TResult Function(_LoadingCodes value)? loadingCodes,
    TResult Function(_AddedMoney value)? addedMoney,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (addedMoney != null) {
      return addedMoney(this);
    }
    return orElse();
  }
}

abstract class _AddedMoney implements WalletState {
  const factory _AddedMoney(final double balance) = _$AddedMoneyImpl;

  double get balance;

  /// Create a copy of WalletState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddedMoneyImplCopyWith<_$AddedMoneyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String messsage});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$WalletStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of WalletState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messsage = null,
  }) {
    return _then(_$ErrorImpl(
      null == messsage
          ? _value.messsage
          : messsage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.messsage);

  @override
  final String messsage;

  @override
  String toString() {
    return 'WalletState.error(messsage: $messsage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.messsage, messsage) ||
                other.messsage == messsage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, messsage);

  /// Create a copy of WalletState
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
    required TResult Function(Wallet wallet) getWallet,
    required TResult Function(List<ValidCode> codes) loadingCodes,
    required TResult Function(double balance) addedMoney,
    required TResult Function(String messsage) error,
  }) {
    return error(messsage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(Wallet wallet)? getWallet,
    TResult? Function(List<ValidCode> codes)? loadingCodes,
    TResult? Function(double balance)? addedMoney,
    TResult? Function(String messsage)? error,
  }) {
    return error?.call(messsage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(Wallet wallet)? getWallet,
    TResult Function(List<ValidCode> codes)? loadingCodes,
    TResult Function(double balance)? addedMoney,
    TResult Function(String messsage)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(messsage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_GetWallet value) getWallet,
    required TResult Function(_LoadingCodes value) loadingCodes,
    required TResult Function(_AddedMoney value) addedMoney,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_GetWallet value)? getWallet,
    TResult? Function(_LoadingCodes value)? loadingCodes,
    TResult? Function(_AddedMoney value)? addedMoney,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_GetWallet value)? getWallet,
    TResult Function(_LoadingCodes value)? loadingCodes,
    TResult Function(_AddedMoney value)? addedMoney,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements WalletState {
  const factory _Error(final String messsage) = _$ErrorImpl;

  String get messsage;

  /// Create a copy of WalletState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
