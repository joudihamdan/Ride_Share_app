// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:ride_share_app/core/errors/failures.dart';
import 'package:ride_share_app/features/Authentication/domain/entities/authentication.dart';
import 'package:ride_share_app/features/Authentication/domain/entities/login_req.dart';
import 'package:ride_share_app/features/Authentication/domain/repositories/auth_repository.dart';

class LoginUsecase {
  AuthRepository repository;
  LoginUsecase({
    required this.repository,
  });

  Future<Either<Failure, Authentication>> call(LoginReq login) async {
    return await repository.login(login);
  }
}
