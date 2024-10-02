// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:ride_share_app/core/errors/exceptions.dart';
import 'package:ride_share_app/core/errors/failures.dart';
import 'package:ride_share_app/core/networks/internet_check.dart';
import 'package:ride_share_app/features/Authentication/data/datasources/auth_service.dart';
import 'package:ride_share_app/features/Authentication/data/models/login_model.dart';
import 'package:ride_share_app/features/Authentication/data/models/signup_model.dart';
import 'package:ride_share_app/features/Authentication/domain/entities/authentication.dart';
import 'package:ride_share_app/features/Authentication/domain/entities/login_req.dart';
import 'package:ride_share_app/features/Authentication/domain/entities/signup_req.dart';
import 'package:ride_share_app/features/Authentication/domain/repositories/auth_repository.dart';

class AuthRepositoryImp extends AuthRepository {
  AuthService service;
  final InternetCheck internetCheck;

  AuthRepositoryImp({
    required this.internetCheck,
    required this.service,
  });

  @override
  Future<Either<Failure, Authentication>> signup(SignupReq signupReq) async {
    if (await internetCheck.isConnected) {
      try {
        SignupModel signupModel = SignupModel.fromSignupReq(signupReq);

        final result = await service.signup(signupModel);
        return Right(result);
      } on ServerException catch (e) {
        return Left(ServerFailure(message: e.message));
      }
    } else {
      return Left(OfflineFailure());
    }
  }

  @override
  Future<Either<Failure, Authentication>> login(LoginReq loginReq) async {
    if (await internetCheck.isConnected) {
      try {
        LoginModel loginModel = LoginModel.fromLoginReq(loginReq);
        final result = await service.login(loginModel);
        print("repo right");
        return Right(result);
      } on ServerException catch (e) {
        print("repo left");
        return Left(ServerFailure(message: e.message));
      }
    } else {
      return Left(OfflineFailure());
    }
  }

  @override
  Future<Either<Failure, Unit>> logout() async {
    if (await internetCheck.isConnected) {
      try {
        await service.logout();
        return const Right(unit);
      } on ServerException catch (e) {
        return Left(ServerFailure(message: e.message));
      }
    } else {
      return Left(OfflineFailure());
    }
  }
}
