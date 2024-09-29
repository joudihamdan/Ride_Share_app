import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:ride_share_app/core/global/widgets/button_without_fill.dart';
import 'package:ride_share_app/core/utils/assets_manager.dart';
import 'package:ride_share_app/core/utils/color_manager.dart';
import 'package:ride_share_app/core/utils/string_manager.dart';
import 'package:ride_share_app/core/utils/style_maneger.dart';


class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Spacer(),
          Image.asset(AssetsManager.welcomeScreen),
          const SizedBox(
            height: 10,
          ),
          Text(
            StringManager.welcome,
            style: StyleManager.header,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            StringManager.welcomeDesc,
            style: StyleManager.onboardingText,
          ),
          const Spacer(flex: 2),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: SizedBox(
              width: MediaQuery.sizeOf(context).width,
              child: ElevatedButton(
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => SignUp(),
                  //   ),
                  // );
                  //GoRouter.of(context).push(Routes.signUpPath);
                },
                style: ElevatedButton.styleFrom(
                    shape: ContinuousRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    backgroundColor: ColorManager.darkGreen),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    "Create an account",
                    style: TextStyle(
                        fontFamily: "Poppins", color: ColorManager.whiteColor),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              width: MediaQuery.sizeOf(context).width,
              child: ButtonWithoutFill(
                buttonName: 'Log In',
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => const SignInPage(),
                  //   ),
                  // );
                  //  GoRouter.of(context).push(Routes.signInPath);
                },
                width: double.infinity,
                height: 40,
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    ).animate().fade(begin: -1, end: 3);
  }
}
