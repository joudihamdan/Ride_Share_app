import 'package:flutter/material.dart';
import 'package:ride_share_app/core/global/helper/navigation_helper.dart';
import 'package:ride_share_app/core/global/widgets/button_with_fill.dart';
import 'package:ride_share_app/core/global/widgets/button_without_fill.dart';
import 'package:ride_share_app/core/utils/assets_manager.dart';
import 'package:ride_share_app/core/utils/string_manager.dart';
import 'package:ride_share_app/core/utils/style_maneger.dart';
import 'package:ride_share_app/features/Authentication/presentation/pages/login/login_page.dart';
import 'package:ride_share_app/features/Authentication/presentation/pages/signup/first_signup_page.dart';

class WelcomPage extends StatelessWidget {
  const WelcomPage({super.key});

  @override
  Widget build(BuildContext context) {
    final stringManager = StringManager(context);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const Spacer(),
            Image.asset(AssetsManager.welcomeScreen),
            const SizedBox(
              height: 10,
            ),
            Text(
              stringManager.welcome,
              style: StyleManager.header,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              stringManager.welcomeDes,
              style: StyleManager.onboardingText,
            ),
            const Spacer(flex: 2),
            ButtonWithFill(
              width: MediaQuery.sizeOf(context).width,
              height: 50,
              buttonName: stringManager.create,
              onPressed: () {
                NavigationHelper.navigateTo(context, FirstSignupPage());
              },
            ),
            const SizedBox(
              height: 20,
            ),
            ButtonWithoutFill(
              width: MediaQuery.sizeOf(context).width,
              height: 50,
              buttonName: stringManager.login,
              onPressed: () {
                NavigationHelper.navigateTo(context, LoginPage());
              },
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
