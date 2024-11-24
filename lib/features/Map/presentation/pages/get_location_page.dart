// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:ride_share_app/core/global/helper/get_location.dart';
import 'package:ride_share_app/core/global/helper/navigation_helper.dart';
import 'package:ride_share_app/core/global/widgets/button_with_fill.dart';
import 'package:ride_share_app/core/global/widgets/custom_sized_box.dart';
import 'package:ride_share_app/core/utils/assets_manager.dart';
import 'package:ride_share_app/core/utils/color_manager.dart';
import 'package:ride_share_app/core/utils/string_manager.dart';
import 'package:ride_share_app/core/utils/style_maneger.dart';
import 'package:ride_share_app/features/Map/presentation/widgets/blur_layer.dart';
import 'package:ride_share_app/features/Map/presentation/widgets/custom_flutter_map.dart';
import 'package:ride_share_app/features/onBoarding/pages/welcom_page.dart';

class GetLocationPage extends StatefulWidget {
  const GetLocationPage({super.key});

  @override
  State<GetLocationPage> createState() => _GetLocationPageState();
}

class _GetLocationPageState extends State<GetLocationPage> {
  late String lat;
  late String long;
  static late Position userLocation;
  String locationMessage = 'Current Location';

  void _liveLocation() {
    LocationSettings locationSettings = const LocationSettings(
      accuracy: LocationAccuracy.high,
      distanceFilter: 100,
    );
    Geolocator.getPositionStream(locationSettings: locationSettings).listen(
      (Position position) {
        lat = position.latitude.toString();
        long = position.longitude.toString();
        setState(() async {
          userLocation = await getCurrentLocation();
          locationMessage = 'Latitude :$lat , Longitude : $long ';
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomFlutterMap(),
          const SizedBox(
              width: double.infinity,
              height: double.infinity,
              //   decoration: BoxDecoration(
              //     image:DecorationImage(image: AssetImage("assets/images/map.jpg"),fit: BoxFit.fill
              //   ),
              // ),
              child: BlurLayer()),
          Center(
            child: Container(
              width: MediaQuery.sizeOf(context).width * 0.8,
              height: MediaQuery.sizeOf(context).height * 0.6,
              decoration: BoxDecoration(
                color: ColorManager.whiteColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Column(
                    children: [
                      const sizedBox30(),
                      Image.asset(AssetsManager.location),
                      const sizedBox20(),
                      Text(
                        StringManager.enterLocation,
                        style: StyleManager.title,
                      ),
                      Text(
                        StringManager.locationText,
                        textAlign: TextAlign.center,
                        style: StyleManager.underSuccessText,
                      ),
                      const sizedBox20(),
                      ButtonWithFill(
                          buttonName: "Get current Location",
                          onPressed: () async {
                            userLocation = await getCurrentLocation();
                            lat = '${userLocation.latitude}';
                            long = '${userLocation.longitude}';
                            if (lat.isNotEmpty && long.isNotEmpty) {
                              if (mounted) {
                                await NavigationHelper.navigateWithFade(
                                    context, const WelcomPage());
                              }
                            }

                            setState(() {
                              locationMessage =
                                  'Latitude :$lat , Longitude : $long ';
                              print(locationMessage);
                            });
                          },
                          width: MediaQuery.sizeOf(context).width,
                          height: 50),
                      const SizedBox(
                        height: 20,
                      ),
                      TextButton(
                        onPressed: () {
                          NavigationHelper.navigateWithFade(
                              context, const WelcomPage());
                        },
                        child: Text(
                          "Skip for now",
                          style: StyleManager.whiteButtonText
                              .copyWith(color: ColorManager.lightgrey),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
