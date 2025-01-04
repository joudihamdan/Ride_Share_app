// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:ride_share_app/core/global/helper/get_failures_type.dart';
import 'package:ride_share_app/features/Authentication/domain/entities/login_req.dart';
import 'package:ride_share_app/features/Authentication/domain/usecases/login_usecase.dart';
import 'package:ride_share_app/features/Authentication/domain/usecases/logout_usecase.dart';

part 'Login_bloc.freezed.dart';
part 'Login_event.dart';
part 'Login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginUsecase loginUsecase;
  LogoutUsecase logoutUsecase;

  LoginBloc({
    required this.loginUsecase,
    required this.logoutUsecase,
  }) : super(const LoginState.initial()) {
    on<LoginEvent>((event, emit) async {
      await event.when(login: (loginReq) async {
        emit(const LoginState.loadInProgress());
        final result = await loginUsecase(loginReq);
        result.fold(
          (result) => emit(LoginState.error(getFailureType(result))),
          (result) => emit(LoginState.successLogin(result.message)));
      }, logout: () async {
        emit(const LoginState.logoutLoading());
        final result = await logoutUsecase();
        result.fold(
            (result) => emit(LoginState.errorlogout(getFailureType(result))),
            (result) => emit(const LoginState.successLogout()));
      });
    });
  }
}
