import 'package:flutter/material.dart';

import '../../../../core/utils/color_manager.dart';
import '../../../../core/utils/style_maneger.dart';

class BottomSheetHeader extends StatelessWidget {
  const BottomSheetHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: 120,
              height: 4,
              decoration: BoxDecoration(
                color: ColorManager.lightgrey,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            const SizedBox(
              width: 80,
            ),
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.close),
            )
          ],
        ),
        Center(
          child: Text('Select address', style: StyleManager.successText),
        ),
        const Divider(),
      ],
    );
  }
}
