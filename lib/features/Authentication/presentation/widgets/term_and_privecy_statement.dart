import 'package:flutter/material.dart';
import 'package:ride_share_app/core/utils/color_manager.dart';

class TermAndPrivecyStatement extends StatelessWidget {
  const TermAndPrivecyStatement({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.check_circle_outline_outlined,
          color: ColorManager.lightGreen,
        ),
        RichText(
          text: const TextSpan(children: [
            TextSpan(
                text: " By signing up. you agree to the ",
                style: TextStyle(color: ColorManager.darkGrey, fontSize: 13)),
            TextSpan(
                text: "Terms of\n   service",
                style: TextStyle(
                  color: ColorManager.darkGreen,
                  fontSize: 14,
                )),
            TextSpan(
                text: " and",
                style: TextStyle(
                    color: Color.fromARGB(255, 40, 36, 36), fontSize: 13)),
            TextSpan(
                text: " Privacy policy",
                style: TextStyle(color: ColorManager.darkGreen, fontSize: 14)),
          ]),
        ),
      ],
    );
  }
}
