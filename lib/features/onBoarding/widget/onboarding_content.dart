import 'package:flutter/cupertino.dart';
import 'package:ride_share_app/core/utils/style_maneger.dart';

class OnboardingContent extends StatelessWidget {
  const OnboardingContent(
      {super.key,
      required this.image,
      required this.title,
      required this.caption});
  final String image;
  final String title;
  final String caption;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const Spacer(),
      Image.asset(image),
      const Spacer(
        flex: 1,
      ),
      Text(
        title,
        style: StyleManager.header,
      ),
      Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Text(
            caption,
            style: StyleManager.onboardingText,
            maxLines: 4,
            textAlign: TextAlign.center,
          ),
        ),
      ),
      const Spacer(
        flex: 2,
      ),
    ]);
  }
}
