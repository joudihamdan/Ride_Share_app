import 'dart:convert';

import 'package:ride_share_app/features/Wallet/domain/entities/wallet.dart';

class WalletModel extends Wallet {
  WalletModel(
      {required super.id, required super.balance, required super.bankAccount});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'balance': balance,
      'bankAccount': bankAccount,
    };
  }

  factory WalletModel.fromMap(Map<String, dynamic> map) {
    return WalletModel(
      id: map['id'] ,
      balance: map['balance'],
      bankAccount: map['bankAccount'],
    );
  }

  String toJson() => json.encode(toMap());

  factory WalletModel.fromJson(String source) =>
      WalletModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'WalletModel(id: $id, balance: $balance, bankAccount: $bankAccount)';

  @override
  bool operator ==(covariant WalletModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.balance == balance &&
        other.bankAccount == bankAccount;
  }

  @override
  int get hashCode => id.hashCode ^ balance.hashCode ^ bankAccount.hashCode;
}
