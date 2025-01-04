import 'package:flutter/material.dart';

class SettingNotificationWidget extends StatelessWidget {
  const SettingNotificationWidget(
      {super.key, this.notificationOnPressed});
  final Function()? notificationOnPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
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
