import 'package:flutter/material.dart';
import 'package:ride_share_app/features/Map/presentation/widgets/dashed_line.dart';

import '../../../../core/global/helper/navigation_helper.dart';
import '../../../../core/global/widgets/button_with_fill.dart';
import '../../../../core/global/widgets/custom_sized_box.dart';
import '../../../../core/utils/color_manager.dart';
import '../../../../core/utils/style_maneger.dart';
import '../../../bicycle/presentation/pages/category_page.dart';

class SelectedAddressBottomSheeet extends StatelessWidget {
  const SelectedAddressBottomSheeet(
      {super.key,
      required this.from,
      required this.to,
      required this.fromDescription,
      required this.toDescription,
      required this.fromId});

  final String from;
  final String to;
  final String fromDescription;
  final String toDescription;
  final int fromId;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Icon(
              Icons.location_on,
              color: ColorManager.redColor,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  from,
                ),
                Text(
                  fromDescription,
                  style: StyleManager.underOfferText,
                ),
              ],
            )
          ],
        ),
        const DashedLine(),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Icon(
              Icons.location_on,
              color: ColorManager.darkGreen,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  to,
                ),
                Text(
                  toDescription,
                  style: StyleManager.underOfferText,
                ),
              ],
            )
          ],
        ),
        const sizedBox40(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ButtonWithFill(
            buttonName: 'continue Reservation',
            onPressed: () {
              NavigationHelper.navigateTo(
                context,
                CategoriesScreen(
                  hubId: fromId,
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
