
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'Signup_state.dart';
part 'Signup_event.dart';
part 'Signup_bloc.freezed.dart';

class SignupBloc extends Bloc<SignupEvent,SignupState>{
  SignupBloc() : super(const SignupState.initial()){
    
  }
}