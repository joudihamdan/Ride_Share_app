import 'package:flutter/material.dart';
import 'package:ride_share_app/core/utils/color_manager.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircularProgressIndicator(
      color: ColorManager.darkGreen,
      strokeAlign: 0.1,
      strokeWidth: 0.4,
    );
  }
}
