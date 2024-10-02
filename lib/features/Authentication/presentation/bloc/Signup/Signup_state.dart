part of 'Signup_bloc.dart';

@freezed
class SignupState with _$SignupState {
  const factory SignupState.initial() = _Initial;
  const factory SignupState.loadInProgress() = _LoadInProgress;
  const factory SignupState.successCreate(String message) = _SuccessCreate;
  const factory SignupState.error(String message) = _Error;
  const factory SignupState.offline() = _Offline;
}
