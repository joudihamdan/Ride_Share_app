import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ride_share_app/core/utils/color_manager.dart';

class BlurLayer extends StatelessWidget {
  const BlurLayer({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(),
        child: Container(
          color: ColorManager.blackColor.withOpacity(0.3),
        ),
      ),
    );
  }
}
