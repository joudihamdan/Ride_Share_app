import 'package:flutter/material.dart';
import 'package:ride_share_app/core/utils/color_manager.dart';
import 'package:ride_share_app/core/utils/style_maneger.dart';

class NavigationBarItem extends StatelessWidget {
  const NavigationBarItem({
    super.key,
    required this.selectedIndex,
    required this.title,
    required this.icon,
    required this.selectedIcon,
    required this.onTap,
    this.isWallet = false,
  });

  final bool selectedIndex;
  final String title;
  final IconData icon;
  final IconData selectedIcon;
  final VoidCallback onTap;
  final bool isWallet;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, 
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: selectedIndex && !isWallet
                  ? Icon(
                      selectedIcon,
                      color: ColorManager.lightGreen,
                    )
                  : !selectedIndex && !isWallet
                      ? Icon(
                          icon,
                          size: 20,
                        )
                      : Image.asset('assets/images/wallet.png')),
          SizedBox(
            height: isWallet ? 35 : 4,
          ),
          Text(
            title,
            style: StyleManager.navigatorButtonText.copyWith(
              color: selectedIndex
                  ? ColorManager.lightGreen
                  : ColorManager.blackColor,
            ),
          ),
        ],
      ),
    );
  }
}
