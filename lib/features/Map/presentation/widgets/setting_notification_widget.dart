import 'package:flutter/material.dart';
import 'package:ride_share_app/core/utils/color_manager.dart';

class SettingNotificationWidget extends StatelessWidget {
  const SettingNotificationWidget(
      {super.key, this.settingOnPressed, this.notificationOnPressed});
  final Function()? settingOnPressed;
  final Function()? notificationOnPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: BoxDecoration(
            color: ColorManager.green100,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Builder(builder: (context) {
            return IconButton(
              onPressed: settingOnPressed,
              //  Scaffold.of(context).openDrawer();
              icon: const Icon(Icons.menu_outlined),
            );
          }),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(4),
          ),
          child: IconButton(
            onPressed: notificationOnPressed,
            icon: const Icon(Icons.notifications_outlined),
          ),
        ),
      ],
    );
  }
}
