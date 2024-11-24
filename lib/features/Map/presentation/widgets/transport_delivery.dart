import 'package:flutter/material.dart';
import 'package:ride_share_app/core/utils/color_manager.dart';

class TransportDelivery extends StatelessWidget {
  const TransportDelivery(
      {super.key, this.transportOnPressed, this.deliveryOnPressed, required this.selectText});
  final Function()? transportOnPressed;
  final Function()? deliveryOnPressed;
  
  final bool selectText;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 48,
          width: 336,
          decoration: BoxDecoration(
            color: ColorManager.green100,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: ColorManager.darkGreen, width: 1),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: transportOnPressed,
                child: const SizedBox(
                  width: 85,
                  child: Text(
                    'Transport',
                    style: TextStyle(
                      color: ColorManager.darkGrey,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: deliveryOnPressed,
                child: Container(
                  alignment: Alignment.center,
                  width: 85,
                  child: const Text(
                    'Delivery',
                    style: TextStyle(
                      color: ColorManager.darkGrey,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          left: selectText ? 0 : null,
          right: selectText ? null : 0,
          child: Container(
            alignment: Alignment.center,
            height: 48,
            width: 168,
            decoration: BoxDecoration(
              color: ColorManager.darkGreen,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              selectText ? 'Transport' : 'Delivery',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        )
      ],
    );
  }
}
