// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:ride_share_app/features/Wallet/domain/repositories/wallet_repository.dart';

import '../../../../core/errors/failures.dart';

class AddMoneyUseCase {
  WalletRepository repository;
  AddMoneyUseCase({
    required this.repository,
  });
  Future<Either<Failure, double>> call(String code) async{
    return await repository.addMoney(code);
  }
}
