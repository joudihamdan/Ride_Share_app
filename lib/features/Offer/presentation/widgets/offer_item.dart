import 'package:flutter/material.dart';

import '../../../../core/global/widgets/button_with_fill.dart';
import '../../../../core/utils/color_manager.dart';

class OfferItem extends StatelessWidget {
  const OfferItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.all(10),
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(
          border: Border.all(color: ColorManager.darkGreen, width: 0.5),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "15 %",
                style: TextStyle(color: ColorManager.yellowOffer),
              ),
              Text(
                "Black Friday",
                style: TextStyle(color: ColorManager.lightgrey),
              )
            ],
          ),
          ButtonWithFill(
            buttonName: "collect",
            width: 110,
            height: 40,
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
