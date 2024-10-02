import 'package:flutter/material.dart';
import 'package:ride_share_app/core/utils/style_maneger.dart';

class RegisterStatement extends StatelessWidget {
  const RegisterStatement({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("don't have account?"),
        TextButton(
            onPressed: () {},
            child: Text(
              "register",
              style: StyleManager.greenButtonText.copyWith(fontSize: 14),
            ))
      ],
    );
  }
}
