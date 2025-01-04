import 'package:flutter/material.dart';
import 'package:ride_share_app/core/utils/color_manager.dart';
import 'package:ride_share_app/core/utils/style_maneger.dart';

class AppTheme {
  static final appTheme = ThemeData(
    appBarTheme: AppBarTheme(
      color: Colors.transparent
    ),
    primaryColor: ColorManager.darkGreen,
    scaffoldBackgroundColor: ColorManager.whiteColor,
    brightness: Brightness.light,
    //text form field
    inputDecorationTheme: InputDecorationTheme(
      labelStyle: StyleManager.offerText
          .copyWith(color: ColorManager.lightgrey, fontSize: 14),
      focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorManager.darkGreen,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorManager.lightgrey,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorManager.redColor,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10))),
          focusedErrorBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorManager.redColor,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10))),
    ),
    //button style
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    ),
    
  
    
  );
}
