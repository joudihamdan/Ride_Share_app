// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:ride_share_app/core/errors/failures.dart';
import 'package:ride_share_app/features/Wallet/domain/repositories/wallet_repository.dart';

import '../entities/wallet.dart';

class GetMyWalletUseCase {
  WalletRepository repository;
  GetMyWalletUseCase({
    required this.repository,
  });
  Future<Either<Failure, Wallet>> call() async {
    print("usecase0");
    return await repository.getMyWallet();
  }
}
