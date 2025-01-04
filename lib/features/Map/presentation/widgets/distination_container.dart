import 'package:flutter/material.dart';
import '../../../../core/utils/color_manager.dart';

class DistinationContainer extends StatelessWidget {
  const DistinationContainer({super.key});

   // bool selectText = true;

  @override
  Widget build(BuildContext context) {
    return
    //  Container(
    //  // height: 141,
    //   width: 364,
    //   decoration: BoxDecoration(
    //       color: ColorManager.green100.withOpacity(0.6),
    //       border: Border.all(color: ColorManager.lightGreen),
    //       borderRadius: BorderRadius.circular(10)),
    //   child: const Padding(
    //     padding: EdgeInsets.all(14.0),
    //     child:
        
    //      Column(
    //       children: [
            SizedBox(
              height: 54,
              child: TextField(
                //controller: search,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: ColorManager.green100,
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Where would you go?',
                ),
              ),
            );
            // SizedBox(
            //   height: 9,
            // ),
            // TransportDelivery(
            //   selectText: selectText,
            //   transportOnPressed: () {
            //     setState(() {
            //       selectText = true;
            //     });
            //   },
            //   deliveryOnPressed: () {
            //     setState(() {
            //       selectText = false;
            //     });
            //   },
    //         // ),
    //       ],
    //     ),
    //   ),
    // );
  }
}
