
import 'package:flutter/material.dart';

import 'color_manager.dart';

class StyleManager {
  static TextStyle skipAndback = const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      fontFamily: "Poppins",
      color: ColorManager.blackColor);

  static TextStyle header = const TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w500,
      fontFamily: "Poppins",
      color: ColorManager.blackColor);

  static TextStyle onboardingText = const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      fontFamily: "Poppins",
      color: ColorManager.lightgrey);

  static TextStyle greenButtonText = const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      fontFamily: "Poppins",
      color: ColorManager.darkGreen);

  static TextStyle whiteButtonText = const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      fontFamily: "Poppins",
      color: ColorManager.whiteColor);
      
  static TextStyle containerHeader = const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      fontFamily: "Poppins",
      color: ColorManager.blackColor);

  static TextStyle navigatorButtonText = const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      fontFamily: "Poppins",
      color: ColorManager.blackColor);

  static TextStyle title = const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w500,
      fontFamily: "Poppins",
      color: ColorManager.darkBlackColor);

  static TextStyle boldHeader = const TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      fontFamily: "Poppins",
      color: ColorManager.blackColor);

  static TextStyle featuresText = const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      fontFamily: "Poppins",
      color: ColorManager.blackColor);

  static TextStyle successText = const TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w500,
      fontFamily: "Poppins",
      color: ColorManager.blackColor);

  static TextStyle underSuccessText = const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      fontFamily: "Poppins",
      color: ColorManager.lightgrey);

  static TextStyle offerText = const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      fontFamily: "Poppins",
      color: ColorManager.yellowOffer);

  static TextStyle underOfferText = const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      fontFamily: "Poppins",
      color: ColorManager.lightgrey);

static ButtonStyle withFill =  ElevatedButton.styleFrom(
            fixedSize: const Size(200, 100),
          side: const BorderSide(color: ColorManager.darkGreen),
          shape: ContinuousRectangleBorder(
              borderRadius: BorderRadius.circular(10)),
          backgroundColor: ColorManager.darkGreen);

}
