// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:ride_share_app/features/Wallet/domain/usecases/add_money.dart';
import 'package:ride_share_app/features/Wallet/domain/usecases/create_account.dart';
import 'package:ride_share_app/features/Wallet/domain/usecases/get_my_wallet.dart';
import 'package:ride_share_app/features/Wallet/domain/usecases/get_valid_code.dart';

import '../../../../core/global/helper/get_failures_type.dart';
import '../../domain/entities/valid_code.dart';
import '../../domain/entities/wallet.dart';

part 'wallet_bloc.freezed.dart';
part 'wallet_event.dart';
part 'wallet_state.dart';

class WalletBloc extends Bloc<WalletEvent, WalletState> {
  CreateAccountUseCase createAccountUseCase;
  AddMoneyUseCase moneyUseCase;
  GetMyWalletUseCase walletUseCase;
  GetValidCodeUseCase validCodeUseCase;

  WalletBloc(
     this.createAccountUseCase,
     this.moneyUseCase,
     this.walletUseCase,
     this.validCodeUseCase,) : super(const WalletState.initial()) {
    on<WalletEvent>((event, emit) async {
      await event.when(
        addWallet: (password, confirm, bankaccount) async {
          emit(const WalletState.loadInProgress());
          final wallet =
              await createAccountUseCase(password, confirm, bankaccount);
          wallet.fold((result) {
            emit(WalletState.error(getFailureType(result)));
          }, (result) {
            emit(WalletState.getWallet(result));
          });
        },
        getMyWallet: () async {
          emit(const WalletState.loadInProgress());
          final wallet = await walletUseCase();
          print(wallet);
          wallet
              .fold((result) => emit(WalletState.error(getFailureType(result))),
                  (wallet) {
            emit(WalletState.getWallet(wallet));
          });
        },
        addMoney: (code) async {
          final result = await moneyUseCase(code);
          result.fold(
            (result) => emit(WalletState.error(getFailureType(result))),
            (balance) {
              emit(WalletState.addedMoney(balance));
            },
          );
        },
        getCodes: () async {
          emit(const WalletState.loadInProgress());
          final result = await validCodeUseCase();
          result.fold((result) {
            emit(WalletState.error(getFailureType(result)));
          }, (codes) {
            emit(WalletState.loadingCodes(codes));
          });
        },
      );
    });
  }
}
