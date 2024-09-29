import 'package:flutter/material.dart';
import 'package:ride_share_app/core/utils/color_manager.dart';
import 'package:ride_share_app/core/utils/style_maneger.dart';

class ButtonWithoutFill extends StatelessWidget {
  const ButtonWithoutFill(
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
      style: ElevatedButton.styleFrom(
        fixedSize: Size(width, height),
        side: const BorderSide(color: ColorManager.darkGreen),
        shape:
            ContinuousRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Text(
          buttonName,
          style:StyleManager.greenButtonText
        ),
      ),
    );
  }
}
