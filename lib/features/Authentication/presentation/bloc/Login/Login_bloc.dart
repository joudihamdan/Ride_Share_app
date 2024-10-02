// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ride_share_app/core/errors/failures.dart';
import 'package:ride_share_app/features/Authentication/domain/entities/login_req.dart';
import 'package:ride_share_app/features/Authentication/domain/usecases/login_usecase.dart';
part 'Login_bloc.freezed.dart';
part 'Login_event.dart';
part 'Login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginUsecase loginUsecase;

  LoginBloc({
    required this.loginUsecase,
  }) : super(const LoginState.initial()) {
    on<LoginEvent>((event, emit) async {
      emit(const LoginState.loadInProgress());
      await event.when(login: (loginReq) async {
        final result = await loginUsecase(loginReq);
      
        result.fold((result) => emit(LoginState.error(mapFaliure(result))),
            (result) => emit(LoginState.successLogin(result.message)));
      });
    });
  }
}

String mapFaliure(Failure failure) {
  switch (failure.runtimeType) {
    case const (ServerFailure):
      return "Try again";
    case const (OfflineFailure):
      return "Please check your internet connection ";
    case const (EmptyCacheFailure):
      return "No data";

    default:
      return "UnExpected error please try again later ";
  }
}
