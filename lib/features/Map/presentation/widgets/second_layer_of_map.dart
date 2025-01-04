import 'package:flutter/material.dart';
import 'package:ride_share_app/features/Map/presentation/widgets/rental_botton.dart';
import '../../../../core/global/helper/get_location.dart';
import '../../../../core/global/helper/showsnackBar.dart';
import '../../../../core/utils/color_manager.dart';
import '../../domain/entities/hub.dart';
import 'distination_container.dart';
import 'rental_location_icons.dart';
import 'setting_notification_widget.dart';

// ignore: must_be_immutable
class SecondLayerOfMap extends StatelessWidget {
  const SecondLayerOfMap({super.key, required this.hubList});

  final List<Hub> hubList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 35, left: 15, right: 15, bottom: 140),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SettingNotificationWidget(),
          Column(
            children: [
              Builder(builder: (context) {
                return RentalLocationIcons(
                  rentalOnPressed: () {
                    rentalButton(context, hubList);
                  },
                  locationOnPressed: () {
                    getCurrentLocation();
                    showSnackBar(context, 'Your location has updated',
                        ColorManager.darkGreen);
                  },
                );
              }),
              const SizedBox(
                height: 15,
              ),
              const DistinationContainer()
            ],
          )
        ],
      ),
    );
  }
}
