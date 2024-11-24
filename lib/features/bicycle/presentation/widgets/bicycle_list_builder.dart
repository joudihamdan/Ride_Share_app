import 'package:flutter/material.dart';
import 'package:ride_share_app/core/global/helper/navigation_helper.dart';
import 'package:ride_share_app/core/global/widgets/button_without_fill.dart';
import 'package:ride_share_app/features/bicycle/domain/entities/bicycle.dart';
import 'package:ride_share_app/features/bicycle/presentation/pages/bicycle_page.dart';

import '../../../../core/utils/color_manager.dart';
import '../../../../core/utils/style_maneger.dart';

class ItemsBuilder extends StatelessWidget {
  const ItemsBuilder({super.key, required this.items});
  final List<Bicycle> items;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Avaiable bicycles for ride",
            style: StyleManager.boldHeader,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            " ${items.length} bicycles found",
            style: StyleManager.offerText,
          ),
          const SizedBox(
            height: 8,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Container(
                    height: 170,
                    width: MediaQuery.sizeOf(context).width,
                    decoration: BoxDecoration(
                        color: const Color(0xff08B783).withOpacity(0.1),
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: ColorManager.darkGreen)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    items[index].model,
                                    style: StyleManager.containerHeader,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        items[index].type,
                                        style: StyleManager.featuresText,
                                      ),
                                      const VerticalDivider(),
                                      Text(
                                        "${items[index].size}",
                                        style: StyleManager.featuresText,
                                      ),
                                      const VerticalDivider(),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    "${items[index].price} SPY",
                                    style: const TextStyle(
                                        fontSize: 20,
                                        color: ColorManager.blackColor,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                              Image.network('https://${items[index].photoPath}',
                                  width: 120, height: 80),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          ButtonWithoutFill(
                            buttonName: " Book bike",
                            onPressed: () {
                              NavigationHelper.navigateWithFade(
                                  context,
                                  BicyclePage(
                                    bicycleId: items[index].id,
                                  ));
                            },
                            width: 400,
                            height: 40,
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
