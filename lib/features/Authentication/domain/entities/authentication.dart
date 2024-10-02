

import 'package:equatable/equatable.dart';

class Authentication extends Equatable {
  final int id;
  final String firstName;
  final String lastName;
  final String phone;
  final String username;
  final String message;

  const Authentication(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.phone,
      required this.message,
      required this.username});
      

  @override
  List<Object?> get props => [username, phone];

}
