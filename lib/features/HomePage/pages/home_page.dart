import 'package:flutter/material.dart';
import 'package:ride_share_app/core/utils/assets_manager.dart';
import 'package:ride_share_app/core/utils/string_manager.dart';
import 'package:ride_share_app/features/HomePage/widgets/navigation_bar_item.dart';
import 'package:ride_share_app/features/Map/presentation/pages/map_page.dart';
import 'package:ride_share_app/features/Map/presentation/widgets/custom_flutter_map.dart';
import 'package:ride_share_app/features/Wallet/presentation/pages/wallet_page.dart';
import 'package:ride_share_app/features/onBoarding/pages/welcom_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  final _pageController = PageController(initialPage: 0);

  final List<Widget> pages = [
    const MapPage(),
    const WelcomPage(),
    WalletPage(),
    CustomFlutterMap(),
    const WelcomPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: List.generate(pages.length, (index) => pages[index]),
      ),
      extendBody: true,
      bottomNavigationBar: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset(
              AssetsManager.navigationBar,
              width: MediaQuery.sizeOf(context).width,
            ),
          ),
          Positioned(
            bottom: 15,
            right: 65,
            left: 65,
            child: NavigationBarItem(
              selectedIndex: selectedIndex == 2,
              title: StringManager.wallet,
              icon: Icons.account_balance_wallet_outlined,
              selectedIcon: Icons.account_balance_wallet,
              onTap: () {
                setState(() {
                  selectedIndex = 2;
                  _pageController.jumpToPage(selectedIndex);
                });
              },
              isWallet: true,
            ),
          ),
          Positioned(
            bottom: 15,
            left: 20,
            right: 0,
            child: Row(
              children: [
                NavigationBarItem(
                  selectedIndex: selectedIndex == 0,
                  title: StringManager.home,
                  icon: Icons.home_outlined,
                  selectedIcon: Icons.home,
                  onTap: () {
                    setState(() {
                      selectedIndex = 0;
                      _pageController.jumpToPage(selectedIndex);
                    });
                  },
                ),
                const SizedBox(
                  width: 20,
                ),
                NavigationBarItem(
                  selectedIndex: selectedIndex == 1,
                  title: StringManager.favourite,
                  icon: Icons.favorite_outline,
                  selectedIcon: Icons.favorite_outlined,
                  onTap: () {
                    setState(() {
                      selectedIndex = 1;
                      _pageController.jumpToPage(selectedIndex);
                    });
                  },
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 15,
            right: 20,
            child: Row(
              children: [
                NavigationBarItem(
                  selectedIndex: selectedIndex == 3,
                  title: StringManager.offer,
                  icon: Icons.local_offer_outlined,
                  selectedIcon: Icons.local_offer,
                  onTap: () {
                    setState(() {
                      selectedIndex = 3;
                      _pageController.jumpToPage(selectedIndex);
                    });
                  },
                ),
                const SizedBox(
                  width: 20,
                ),
                NavigationBarItem(
                  selectedIndex: selectedIndex == 4,
                  title: StringManager.profile,
                  icon: Icons.person_outline,
                  selectedIcon: Icons.person,
                  onTap: () {
                    setState(() {
                      selectedIndex = 4;
                      _pageController.jumpToPage(selectedIndex);
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
