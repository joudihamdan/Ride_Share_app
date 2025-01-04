import 'package:flutter/material.dart';
import 'package:ride_share_app/core/utils/assets_manager.dart';
import 'package:ride_share_app/core/utils/style_maneger.dart';

class BackAppBar extends StatelessWidget {
  const BackAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pop();
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset("${AssetsManager.imagesPath}/angle-left.png",width: 20,height: 20,),
          Text(
            "Back",
            style: StyleManager.skipAndback.copyWith(fontSize: 14),
          )
        ],
      ),
    );
  }
}
