import 'package:flutter/material.dart';
import 'package:ride_share_app/core/global/helper/navigation_helper.dart';
import 'package:ride_share_app/core/utils/style_maneger.dart';
import 'package:ride_share_app/features/Authentication/presentation/pages/login/login_page.dart';

class HaveAccountStatement extends StatelessWidget {
  const HaveAccountStatement({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("already have account?"),
        TextButton(
            onPressed: () {
              NavigationHelper.navigateWithFade(context, const LoginPage());
            },
            child: Text(
              "login",
              style: StyleManager.greenButtonText.copyWith(fontSize: 14),
            ))
      ],
    );
  }
}
