import 'package:dartz/dartz.dart';
import 'package:ride_share_app/core/errors/failures.dart';
import 'package:ride_share_app/features/Wallet/domain/entities/valid_code.dart';
import 'package:ride_share_app/features/Wallet/domain/entities/wallet.dart';

abstract class WalletRepository {
  Future<Either<Failure,Wallet>> createWallet (String securityCode, String confirmSecurityCode ,String bankAccount );
  Future<Either<Failure,Wallet>> getMyWallet ();
  Future<Either<Failure,double>> addMoney(String code);
  Future<Either<Failure,List<ValidCode>>> getValidCode();
}