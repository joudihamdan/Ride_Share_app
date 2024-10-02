import 'dart:convert';

import 'package:ride_share_app/features/Authentication/domain/entities/authentication.dart';



class AuthResponse extends Authentication {

  const AuthResponse(
      {required super.id,
      required super.firstName,
      required super.lastName,
      required super.phone,
      required super.username,
      required super.message});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'firstName': firstName,
      'lastName': lastName,
      'phone': phone,
      '_username': username,
      'message': message,
    };
  }

  factory AuthResponse.fromMap(Map<String, dynamic> map) {
    return AuthResponse(
      id: map['body']['id'] as int,
      firstName: map['body']['firstName'] as String,
      lastName: map['body']['lastName'] as String,
      phone: map['body']['phone'] as String,
      username: map['body']['_username'] as String,
      message: map['message'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory AuthResponse.fromJson(String source) =>
      AuthResponse.fromMap(json.decode(source) as Map<String, dynamic>);
}
