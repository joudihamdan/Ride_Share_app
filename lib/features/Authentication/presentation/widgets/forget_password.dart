import 'package:flutter/material.dart';
import 'package:ride_share_app/core/utils/color_manager.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6),
          child: TextButton(
            onPressed: () {},
            child: const Text(
              "forget password",
              style: TextStyle(color: ColorManager.darkGrey, fontSize: 12),
            ),
          ),
        )
      ],
    );
  }
}
