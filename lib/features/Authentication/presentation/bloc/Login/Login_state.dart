part of 'Login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.loadInProgress() = _LoadInProgress;
  const factory LoginState.successLogin(String message) = _SuccessLogin;
  const factory LoginState.error(String message) = _Error;
  const factory LoginState.offline() = _Offline;


  const factory LoginState.logoutLoading() = _LogoutLoading;
  const factory LoginState.successLogout() = _SuccessLogout;
  const factory LoginState.errorlogout(String message) = _ErrorLogout;


}
