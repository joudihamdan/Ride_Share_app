// ignore_for_file: avoid_print

import 'package:dartz/dartz.dart';
import 'package:ride_share_app/core/errors/failures.dart';
import 'package:ride_share_app/core/networks/internet_check.dart';
import 'package:ride_share_app/features/Wallet/data/datasources/wallet_remote_data.dart';
import 'package:ride_share_app/features/Wallet/domain/entities/valid_code.dart';
import 'package:ride_share_app/features/Wallet/domain/entities/wallet.dart';
import 'package:ride_share_app/features/Wallet/domain/repositories/wallet_repository.dart';


class WalletRepositoryImp implements WalletRepository {
  final InternetCheck internetCheck;
  final WalletRemoteData remoteData;

  WalletRepositoryImp({required this.internetCheck, required this.remoteData});
  @override
  Future<Either<Failure, double>> addMoney(String code) async {
    if (await internetCheck.isConnected) {
      try {
        final result = await remoteData.addMoney(code);
        //localData.cachBicyclesOfCategory(result);
        print(result);
        return Right(result);
      } catch (e) {
        return Left(ServerFailure(message: e.toString()));
      }
    } else {
      return Left(OfflineFailure());
    }
  }

  @override
  Future<Either<Failure, Wallet>> createWallet(String securityCode,
      String confirmSecurityCode, String bankAccount) async {
    if (await internetCheck.isConnected) {
      try {
        final result = await remoteData.createWallet(
            securityCode, confirmSecurityCode, bankAccount);
        //localData.cachBicyclesOfCategory(result);
        print(result);
        return Right(result);
      } catch (e) {
        print("repository");
        return Left(ServerFailure(message: e.toString()));
      }
    } else {
      return Left(OfflineFailure());
    }
  }

  @override
  Future<Either<Failure, Wallet>> getMyWallet() async {
    if (await internetCheck.isConnected) {
      try {
        final result = await remoteData.getMyWallet();
        //localData.cachBicyclesOfCategory(result);
        print(result);
        return Right(result);
      } catch (e) {
        print("repository");
        return Left(ServerFailure(message: e.toString()));
      }
    } else {
      return Left(OfflineFailure());
    }
  }

  @override
  Future<Either<Failure, List<ValidCode>>> getValidCode() async {
    if (await internetCheck.isConnected) {
      try {
        final result = await remoteData.getValidCode();
        //localData.cachBicyclesOfCategory(result);
        print(result);
        return Right(result);
      } catch (e) {
        return Left(ServerFailure(message: e.toString()));
      }
    } else {
      return Left(OfflineFailure());
    }
  }
}
