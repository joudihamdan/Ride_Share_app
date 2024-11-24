part of 'wallet_bloc.dart';

@freezed
class WalletState with _$WalletState {
  const factory WalletState.initial() = _Initial;
  const factory WalletState.loadInProgress() = _LoadInProgress;
  const factory WalletState.getWallet(Wallet wallet) = _GetWallet;
  const factory WalletState.loadingCodes(List<ValidCode> codes) = _LoadingCodes;
  const factory WalletState.addedMoney(double balance) = _AddedMoney;
  const factory WalletState.error(String messsage) = _Error;
}
