// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class SignupReq {
  final String firstName;
  final String lastName;
  final String phone;
  final String username;
  final String birthDate;
  final String password;
  final String confirmPassword;

  SignupReq({
    required this.firstName,
    required this.lastName,
    required this.phone,
    required this.username,
    required this.birthDate,
    required this.password,
    required this.confirmPassword
  });

  SignupReq copyWith({
    String? firstName,
    String? lastName,
    String? phone,
    String? username,
    String? birthDate,
    String? password,
    String? confirmPassword,
  }) {
    return SignupReq(
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      phone: phone ?? this.phone,
      username: username ?? this.username,
      birthDate: birthDate ?? this.birthDate,
      password: password ?? this.password,
      confirmPassword: confirmPassword ?? this.confirmPassword,
    );
  }


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

}
