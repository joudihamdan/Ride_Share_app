import 'package:flutter/material.dart';
import 'package:ride_share_app/core/global/widgets/button_with_fill.dart';
import 'package:ride_share_app/core/global/widgets/button_without_fill.dart';
import 'package:ride_share_app/core/utils/color_manager.dart';
import 'package:ride_share_app/core/utils/style_maneger.dart';
import 'package:ride_share_app/features/bicycle/domain/entities/bicycle.dart';
import 'package:ride_share_app/features/bicycle/presentation/widgets/bicycle_info_container.dart';

class BicycleInfoWidget extends StatelessWidget {
  const BicycleInfoWidget({super.key, required this.bicycle});
  final Bicycle bicycle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          Text(
            bicycle.model,
            style: StyleManager.boldHeader,
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Image.network("https://${bicycle.photoPath}",
                width: 200, height: 150),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Bicycle Feature",
                style: StyleManager.featuresText,
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.favorite_outline,
                    color: ColorManager.darkGreen,
                  ))
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          BicycleInfoContainer(
            name: "Type",
            value: bicycle.type,
          ),
          BicycleInfoContainer(
            name: "Size",
            value: "${bicycle.size}",
          ),
          BicycleInfoContainer(
            name: "Price",
            value: "${bicycle.price}",
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Note",
                style: StyleManager.featuresText,
              ),
              const Icon(
                Icons.notes,
                color: ColorManager.darkGreen,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          BicycleInfoContainer(name: bicycle.note, value: " "),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ButtonWithoutFill(
                buttonName: "Book Later",
                onPressed: () {
              
                },
                width: 160,
                height: 50,
              ),
              ButtonWithFill(
                buttonName: "Book now",
                onPressed: () {
                
                },
                width: 160,
                height: 50,
              ),
            ],
          ),
          const Spacer()
        ],
      ),
    );
  }
}
