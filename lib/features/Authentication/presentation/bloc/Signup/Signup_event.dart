part of 'Signup_bloc.dart';

@freezed
class SignupEvent with _$SignupEvent {
  factory SignupEvent.createAccount() = _CreateAccount;
  factory SignupEvent.firstSend(
    String firstName, String lastName, String phone,
      String username, String birthDate) = _FirstSend;
  factory SignupEvent.secondSend(String password, String confirmPassword) =
      _SecondSend;
}
