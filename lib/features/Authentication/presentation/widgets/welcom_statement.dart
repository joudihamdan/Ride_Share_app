import 'package:flutter/material.dart';
import 'package:ride_share_app/core/utils/color_manager.dart';
import 'package:ride_share_app/core/utils/style_maneger.dart';

class WelcomStatement extends StatelessWidget {
  const WelcomStatement({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Welcome Back",
        style: StyleManager.header.copyWith(color: ColorManager.darkGreen),
      ),
    );
  }
}
