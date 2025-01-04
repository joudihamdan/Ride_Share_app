import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/injection_container.dart';
import '../../domain/entities/hub.dart';
import 'bottom_sheet_header.dart';
import 'custom_drop_menue.dart';
import 'selected_address_bottom_sheeet.dart';

rentalButton(BuildContext context, List<Hub> hubList) {
  TextEditingController fromController = TextEditingController();
  TextEditingController toController = TextEditingController();
  int fromId = 0;
  int toId = 0;
  return showModalBottomSheet(
    context: context,
    builder: (context) {
      return StatefulBuilder(
        builder: (BuildContext context, StateSetter setBottomSheetState) {
          return Container(
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height * 0.45,
            padding: const EdgeInsets.all(5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const BottomSheetHeader(),
                Builder(builder: (context) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: (fromController.text.isNotEmpty &&
                            toController.text.isNotEmpty)
                        ? SelectedAddressBottomSheeet(
                            fromId: fromId,
                            from: fromController.text,
                            to: toController.text,
                            fromDescription: hubList
                                .firstWhere((hub) => hub.id == fromId)
                                .description,
                            toDescription: hubList
                                .firstWhere((hub) => hub.id == toId)
                                .description)
                        : Column(
                            children: [
                              CustomDropMenue(
                                hubList: hubList,
                                label: 'From',
                                icon: Icons.location_searching,
                                onSelected: (id) {
                                  setBottomSheetState(() {
                                    fromId = id!;
                                    sl<SharedPreferences>()
                                        .setInt('fromId', id);

                                    fromController.text = hubList
                                        .firstWhere((hub) => hub.id == id)
                                        .name;

                                    sl<SharedPreferences>()
                                        .setString('from', fromController.text);
                                  });
                                },
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              CustomDropMenue(
                                icon: Icons.location_on_outlined,
                                label: "To",
                                hubList: hubList,
                                onSelected: (id) {
                                  setBottomSheetState(() {
                                    toId = id!;
                                    sl<SharedPreferences>().setInt('toId', id);
                                    toController.text = hubList
                                        .firstWhere((hub) => hub.id == id)
                                        .name;
                                    sl<SharedPreferences>()
                                        .setString('to', toController.text);
                                  });
                                },
                              )
                            ],
                          ),
                  );
                }),
              ],
            ),
          );
        },
      );
    },
  ).whenComplete(() {
    fromController.clear();
    toController.clear();
  });
}
