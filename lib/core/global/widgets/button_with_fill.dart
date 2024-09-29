import 'package:flutter/material.dart';
import 'package:ride_share_app/core/utils/style_maneger.dart';

class ButtonWithFill extends StatelessWidget {
  const ButtonWithFill(
      {super.key,
      required this.buttonName,
      this.onPressed,
      required this.width,
      required this.height});
  final String buttonName;
  final Function()? onPressed;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style:StyleManager.withFill,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Text(
          buttonName,
          style: StyleManager.whiteButtonText
        ),
      ),
    );
  }
}
