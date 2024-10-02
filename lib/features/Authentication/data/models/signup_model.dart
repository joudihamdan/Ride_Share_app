// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:ride_share_app/features/Authentication/domain/entities/signup_req.dart';

class SignupModel extends SignupReq {
  SignupModel(
      {required super.firstName,
      required super.lastName,
      required super.phone,
      required super.username,
      required super.birthDate,
      required super.password,
      required super.confirmPassword});

  factory SignupModel.fromMap(Map<String, dynamic> map) {
    return SignupModel(
      firstName: map['firstName'] as String,
      lastName: map['lastName'] as String,
      phone: map['phone'] as String,
      username: map['username'] as String,
      birthDate: map['birthDate'] as String,
      password: map['password'] as String,
      confirmPassword: map['confirmPassword'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory SignupModel.fromJson(String source) =>
      SignupModel.fromMap(json.decode(source) as Map<String, dynamic>);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firstName': firstName,
      'lastName': lastName,
      'phone': phone,
      'username': username,
      'birthDate': birthDate,
      'password': password,
      'confirmPassword': confirmPassword,
    };
  }

  factory SignupModel.fromSignupReq(SignupReq user) {
    return SignupModel(
        firstName: user.firstName,
        lastName: user.lastName,
        username: user.username,
        phone: user.phone,
        birthDate: user.birthDate,
        confirmPassword: user.confirmPassword,
        password: user.password);
  }
}
