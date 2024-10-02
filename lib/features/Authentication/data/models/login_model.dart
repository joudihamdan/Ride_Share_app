// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'package:ride_share_app/features/Authentication/domain/entities/login_req.dart';

class LoginModel extends LoginReq {
  LoginModel({required super.phone, required super.password});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'phone': phone,
      'password': password,
    };
  }

  factory LoginModel.fromMap(Map<String, dynamic> map) {
    return LoginModel(
      phone: map['phone'] as String,
      password: map['password'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory LoginModel.fromJson(String source) =>
      LoginModel.fromMap(json.decode(source) as Map<String, dynamic>);

  factory LoginModel.fromLoginReq(LoginReq user) {
    return LoginModel(phone: user.phone, password: user.password);
  }
}
