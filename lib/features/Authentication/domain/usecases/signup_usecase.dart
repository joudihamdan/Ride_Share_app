// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:ride_share_app/core/errors/failures.dart';
import 'package:ride_share_app/features/Authentication/domain/entities/authentication.dart';
import 'package:ride_share_app/features/Authentication/domain/entities/signup_req.dart';
import 'package:ride_share_app/features/Authentication/domain/repositories/auth_repository.dart';

class SignupUsecase {
  AuthRepository repository;
  SignupUsecase({required this.repository});

  Future<Either<Failure, Authentication>> call(SignupReq signupReq) async {
    return await repository.signup(signupReq);
  }
}
