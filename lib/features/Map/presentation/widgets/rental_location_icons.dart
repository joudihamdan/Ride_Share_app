import 'package:flutter/material.dart';
import 'package:ride_share_app/core/global/widgets/button_with_fill.dart';

class RentalLocationIcons extends StatelessWidget {
  const RentalLocationIcons(
      {super.key,
      required this.rentalOnPressed,
      required this.locationOnPressed});

  final Function()? rentalOnPressed;
  final Function()? locationOnPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ButtonWithFill(
          buttonName: 'Rental ',
          height: 54,
          width: 160,
          onPressed: rentalOnPressed,
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(4),
          ),
          child: IconButton(
            onPressed: locationOnPressed,
            icon: const Icon(Icons.location_searching_rounded),
          ),
        ),
      ],
    );
  }
}
