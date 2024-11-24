// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:ride_share_app/core/global/helper/navigation_helper.dart';
import 'package:ride_share_app/core/utils/assets_manager.dart';
import 'package:ride_share_app/core/utils/color_manager.dart';
import 'package:ride_share_app/core/utils/string_manager.dart';
import 'package:ride_share_app/features/Map/presentation/pages/get_location_page.dart';
import 'package:ride_share_app/features/onBoarding/pages/welcom_page.dart';
import 'package:ride_share_app/features/onBoarding/widget/onboarding_content.dart';
import '../../../../core/utils/style_maneger.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  late PageController _controller;
  double _progressValue = 0.3;
  late String headerOnBoarding1;
  late String headerOnBoarding1Desc;
  late String headerOnBoarding2;
  late String headerOnBoarding2Desc;
  late String headerOnBoarding3;
  late String headerOnBoarding3Desc;
  late String skip;
  late String go;

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 0);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final stringManager = StringManager(context);
    headerOnBoarding1 = stringManager.headerOnBoarding1;
    headerOnBoarding1Desc = stringManager.headerOnBoarding1Desc;
    headerOnBoarding2 = stringManager.headerOnBoarding2;
    headerOnBoarding2Desc = stringManager.headerOnBoarding2Desc;
    headerOnBoarding3 = stringManager.headerOnBoarding3;
    headerOnBoarding3Desc = stringManager.headerOnBoarding3Desc;
    skip = stringManager.skip;
    go=stringManager.go;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _handleNextButtonPressed() {
    if (_progressValue > 0.9) {
      NavigationHelper.navigateWithFade(context, const WelcomPage());
    } else {
      setState(() {
        _progressValue += 0.35;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    List<OnboardingContent> screens = [
      OnboardingContent(
        image: AssetsManager.atAnyTime,
        title: headerOnBoarding1,
        caption: headerOnBoarding1Desc,
      ),
      OnboardingContent(
        image: AssetsManager.atAnyWhere,
        title: headerOnBoarding2,
        caption: headerOnBoarding2Desc,
      ),
      OnboardingContent(
        image: AssetsManager.bookYourCar,
        title: headerOnBoarding3,
        caption: headerOnBoarding3Desc,
      )
    ];
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {
              NavigationHelper.navigateWithFade(context, const GetLocationPage());
            },
            child: Text(
              skip,
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
                        duration: const Duration(seconds: 1),
                        curve: Curves.decelerate);
                    _handleNextButtonPressed();
                  },
                  backgroundColor: ColorManager.lightGreen,
                  child: _progressValue > 0.7
                      ?  Text(go)
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
