import 'package:flutter/cupertino.dart';

import '../../../../core/utils/color_manager.dart';

class DashedLine extends StatelessWidget {
  const DashedLine({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Text(
            '|',
            style: TextStyle(fontSize: 10, color: ColorManager.lightgrey),
          ),
          Text(
            '|',
            style: TextStyle(fontSize: 10, color: ColorManager.lightgrey),
          ),
          Text(
            '|',
            style: TextStyle(fontSize: 10, color: ColorManager.lightgrey),
          ),
        ],
      ),
    );
  }
}
