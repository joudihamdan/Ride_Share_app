// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:dartz/dartz.dart';
import 'package:ride_share_app/features/Wallet/domain/repositories/wallet_repository.dart';

import '../../../../core/errors/failures.dart';
import '../entities/valid_code.dart';

class GetValidCodeUseCase {
  WalletRepository repository;
  GetValidCodeUseCase({
    required this.repository,
  });
  Future<Either<Failure, List<ValidCode>>> call() async {
    return await repository.getValidCode();
  }
}

