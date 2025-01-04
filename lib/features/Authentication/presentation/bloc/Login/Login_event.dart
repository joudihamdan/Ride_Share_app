part of 'Login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  factory LoginEvent.login(LoginReq login) = _Login;
  factory LoginEvent.logout() = _Logout;
}
