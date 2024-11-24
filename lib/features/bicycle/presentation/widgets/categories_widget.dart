import 'package:flutter/material.dart';
import 'package:ride_share_app/core/utils/assets_manager.dart';
import 'package:ride_share_app/core/utils/style_maneger.dart';

import '../../../../core/utils/color_manager.dart';
import '../pages/bicycles_list_page.dart';

class CategoriesWidget extends StatelessWidget {
  CategoriesWidget({super.key, required this.categories, required this.hubId});
  final List<String> categories;
  final int hubId;
  final List<String> images = [
    AssetsManager.road,
    AssetsManager.mountine,
    AssetsManager.hybrid,
    AssetsManager.e_bike
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios_new_rounded,
                  size: 14,
                  color: Color(0xff414141),
                ),
              ),
            ),
          ],
        ),
        title: Text(
          "Bike Categories",
          style: StyleManager.header,
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Center(
              child: Text(
                "Choose Category",
                style: StyleManager.boldHeader,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: GridView.builder(
                itemCount: 4,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16.0,
                  mainAxisSpacing: 16.0,
                ),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>  BicyclesListPage(
                            name: categories[index] ,
                            hubId: hubId,
                          ),
                        ),
                      );
                    },
                    child: Container(
                      width: 160,
                      height: 200,
                      decoration: BoxDecoration(
                          color: ColorManager.lightGreenContainer,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: ColorManager.lightGreen)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            images[index],
                            height: 100,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            categories[index],
                            style: StyleManager.underOfferText,
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
