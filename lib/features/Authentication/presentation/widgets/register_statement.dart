import 'package:flutter/material.dart';
import 'package:ride_share_app/core/global/helper/navigation_helper.dart';
import 'package:ride_share_app/core/utils/style_maneger.dart';
import 'package:ride_share_app/features/Authentication/presentation/pages/signup/first_signup_page.dart';

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
            onPressed: () {
              NavigationHelper.navigateWithFade(context,  FirstSignupPage());
            },
            child: Text(
              "register",
              style: StyleManager.greenButtonText.copyWith(fontSize: 14),
            ))
      ],
    );
  }
}
