import 'dart:convert';

import 'package:ride_share_app/features/Wallet/domain/entities/valid_code.dart';

class ValidCodeModel extends ValidCode {
  ValidCodeModel(
      {required super.id, required super.code, required super.amount});

  ValidCode copyWith({
    int? id,
    String? code,
    double? amount,
  }) {
    return ValidCode(
      id: id ?? this.id,
      code: code ?? this.code,
      amount: amount ?? this.amount,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'code': code,
      'amount': amount,
    };
  }

  factory ValidCodeModel.fromMap(Map<String, dynamic> map) {
    return ValidCodeModel(
      id: map['id'] as int,
      code: map['code'] as String,
      amount: map['amount'] as double,
    );
  }

  String toJson() => json.encode(toMap());

  factory ValidCodeModel.fromJson(String source) =>
      ValidCodeModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'ValidCodeModel(id: $id, code: $code, amount: $amount)';

  @override
  bool operator ==(covariant ValidCodeModel other) {
    if (identical(this, other)) return true;

    return other.id == id && other.code == code && other.amount == amount;
  }

  @override
  int get hashCode => id.hashCode ^ code.hashCode ^ amount.hashCode;
}
