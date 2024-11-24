import 'package:ride_share_app/core/errors/failures.dart';
import 'package:ride_share_app/features/Authentication/domain/entities/authentication.dart';
import 'package:ride_share_app/features/Authentication/domain/entities/login_req.dart';
import 'package:ride_share_app/features/Authentication/domain/entities/signup_req.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepository {
  Future<Either<Failure, Authentication>> signup(SignupReq signupReq);
  Future<Either<Failure, Authentication>> login(LoginReq loginReq);
  Future<Either<Failure, Unit>> logout();
}
