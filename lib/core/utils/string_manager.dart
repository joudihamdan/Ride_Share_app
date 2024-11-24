import 'package:flutter/material.dart';
import 'package:ride_share_app/generated/l10n.dart';

class StringManager {
  final BuildContext context;

  StringManager(this.context);

  String get headerOnBoarding1 => S.of(context).where;
  String get headerOnBoarding1Desc => S.of(context).whereDes;
  String get headerOnBoarding2 => S.of(context).time;
  String get headerOnBoarding2Desc => S.of(context).whereDes;
  String get headerOnBoarding3 => S.of(context).book;
  String get headerOnBoarding3Desc => S.of(context).whereDes;
  String get welcome => S.of(context).welcome;
  String get welcomeDes => S.of(context).welcomeDes;
  String get create => S.of(context).createaccount;
  String get login => S.of(context).LogIn;
  String get skip => S.of(context).skip;
  String get go =>S.of(context).go;


  static String enterLocation = "Enable your location";
  static String locationText = "Choose your location to start find the request around you";

  static String payment = "Payment Success";
  static String paymentDes =
      "Your money has been successfully sent to\nSergio Ramasis";

  static String thanks = "Thank you";
  static String thanksDes = "Thank you for your valuable feedback and tip";

  static String addMoney = "Add Success";
  static String addMoneyDes = "Your money has been add successfully ";
}
