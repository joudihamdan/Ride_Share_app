// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:ride_share_app/core/utils/assets_manager.dart';
import 'package:ride_share_app/core/utils/color_manager.dart';
import 'package:ride_share_app/core/utils/string_manager.dart';
import 'package:ride_share_app/features/onBoarding/screen/welcom_screen.dart';
import 'package:ride_share_app/features/onBoarding/widge/onboarding_content.dart';
import '../../../../core/utils/style_maneger.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late PageController _controller;
  double _progressValue = 0.3;

  static List<OnboardingContent> screens = [
    OnboardingContent(
      image: AssetsManager.atAnyTime,
      title: StringManager.headerOnBoarding1,
      caption: StringManager.headerOnBoarding1Desc,
    ),
    OnboardingContent(
      image: AssetsManager.atAnyWhere,
      title: StringManager.headerOnBoarding2,
      caption: StringManager.headerOnBoarding2Desc,
    ),
    OnboardingContent(
      image: AssetsManager.bookYourCar,
      title: StringManager.headerOnBoarding3,
      caption: StringManager.headerOnBoarding3Desc,
    )
  ];

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _handleNextButtonPressed() {
    if (_progressValue > 0.9) {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const WelcomeScreen()));
    } else {
      setState(() {
        _progressValue += 0.35;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                PageTransition(
                    duration: const Duration(seconds: 3),
                    child: const WelcomeScreen(),
                    type: PageTransitionType.rightToLeft),
              );
            },
            child: Text(
              "Skip",
              style: StyleManager.skipAndback,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: PageView.builder(
                controller: _controller,
                itemCount: screens.length,
                itemBuilder: (context, index) {
                  return screens[index];
                }),
          ),
          Center(
            child: Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  width: 70,
                  height: 70,
                  child: CircularProgressIndicator(
                    value: _progressValue,
                    backgroundColor: Colors.grey[300],
                    valueColor: const AlwaysStoppedAnimation<Color>(
                        ColorManager.lightGreen),
                  ),
                ),
                FloatingActionButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  onPressed: () {
                    _controller.nextPage(
                        duration: const Duration(microseconds: 300),
                        curve: Curves.ease);
                    _handleNextButtonPressed();
                  },
                  backgroundColor: ColorManager.lightGreen,
                  child: _progressValue > 0.7
                      ? const Text("Go")
                      : const Icon(
                          Icons.arrow_right_alt_outlined,
                          color: ColorManager.blackColor,
                        ),
                ),
              ],
            ),
          ),
          const Spacer()
        ],
      ),
    );
  }
}
