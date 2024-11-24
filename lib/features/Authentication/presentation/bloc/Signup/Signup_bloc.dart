// ignore_for_file: public_member_api_docs, sort_constructors_first, avoid_print
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ride_share_app/core/global/helper/get_failures_type.dart';
import 'package:ride_share_app/features/Authentication/domain/entities/signup_req.dart';
import 'package:ride_share_app/features/Authentication/domain/usecases/signup_usecase.dart';
part 'Signup_bloc.freezed.dart';
part 'Signup_event.dart';
part 'Signup_state.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  SignupUsecase signupUsecase;
  SignupBloc(
    this.signupUsecase,
  ) : super(const SignupState.initial()) {
    SignupReq signupReq = SignupReq(
        firstName: '',
        lastName: '',
        phone: '',
        username: '',
        birthDate: '',
        password: '',
        confirmPassword: '');

    on<SignupEvent>((event, emit) async {
      await event.when(createAccount: () async {
        emit(const SignupState.loadInProgress());
        final result = await signupUsecase(signupReq);
        result.fold((result) => emit(SignupState.error(getFailureType(result))),
            (result) => emit(SignupState.successCreate(result.message)));
      }, firstSend: (frist, last,phone, username, birthdate) {
        signupReq = signupReq.copyWith(
            firstName: frist,
            lastName: last,
            phone: phone,
            username: username,
            birthDate: birthdate);
        print(signupReq.toMap());
      }, secondSend: (password, confirm) {
        signupReq =
            signupReq.copyWith(password: password, confirmPassword: confirm);
        print(signupReq.toMap());
      });
    });
  }
}
