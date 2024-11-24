part of 'wallet_bloc.dart';

@freezed
class WalletEvent with _$WalletEvent {
  const factory WalletEvent.addWallet(
          String securityCode, String confirmSecurityCode, String bankAccount) =
      _AddWallet;
  const factory WalletEvent.getMyWallet() = _GetMyWallet;
  const factory WalletEvent.addMoney(String code) = _AddMoney;
    const factory WalletEvent.getCodes() = _GetCodes;

}
