import 'package:dartz/dartz.dart';
import 'package:ride_share_app/core/errors/failures.dart';
import 'package:ride_share_app/features/Authentication/domain/repositories/auth_repository.dart';

class LogoutUsecase {
  AuthRepository repository ;
  LogoutUsecase({required this.repository});

  Future<Either<Failure,Unit>> call () async {
    return await repository.logout();
  }
}