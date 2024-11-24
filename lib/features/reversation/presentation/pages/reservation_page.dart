import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ride_share_app/core/global/widgets/button_with_fill.dart';
import 'package:ride_share_app/core/global/widgets/custom_sized_box.dart';
import 'package:ride_share_app/core/utils/assets_manager.dart';
import 'package:ride_share_app/features/Authentication/presentation/widgets/custom_form_field.dart';
import '../../../../core/utils/color_manager.dart';
import '../../../../core/utils/style_maneger.dart';

class ReservationPage extends StatefulWidget {
  const ReservationPage({super.key});

  @override
  State<ReservationPage> createState() => _ReservationPageState();
}

class _ReservationPageState extends State<ReservationPage> {
  TextEditingController startTime = TextEditingController();
  TextEditingController endTime = TextEditingController();
  TextEditingController password = TextEditingController();
  final bool _showPassword = true;

  Future<void> _selectDate(
      BuildContext context, TextEditingController controller) async {
    final DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2030),
    );

    if (selectedDate != null) {
      setState(() {
        controller.text = DateFormat('yyyy-MM-dd').format(selectedDate);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_rounded)),
        title: const Text("Request for rent"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.location_on,
                      color: ColorManager.redColor,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('DAMAS'),
                        Text(
                          'kveeve',
                          style: StyleManager.underOfferText,
                        ),
                      ],
                    )
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      Text(
                        '|',
                        style: TextStyle(
                            fontSize: 10, color: ColorManager.lightgrey),
                      ),
                      Text(
                        '|',
                        style: TextStyle(
                            fontSize: 10, color: ColorManager.lightgrey),
                      ),
                      Text(
                        '|',
                        style: TextStyle(
                            fontSize: 10, color: ColorManager.lightgrey),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.location_on,
                      color: ColorManager.darkGreen,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('whwvw'),
                        Text(
                          'wvhwv',
                          style: StyleManager.underOfferText,
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
            sizedBox30(),
            Container(
              decoration: BoxDecoration(
                color: ColorManager.lightGreenContainer,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: ColorManager.lightGreen),
              ),
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text('model'),
                            SizedBox(
                              width: 20,
                            ),
                            Text('price')
                          ],
                        ),
                        Row(
                          children: [
                            Text('category'),
                            SizedBox(
                              width: 20,
                            ),
                            Text('size')
                          ],
                        ),
                        Text("note")
                      ],
                    ),
                  ),
                  Expanded(
                      child: Image.asset(AssetsManager.mountine,
                          width: 150, height: 80))
                ],
              ),
            ),
            sizedBox20(),
            TextFormField(
                onTap: () {
                  _selectDate(context, startTime);
                },
                readOnly: true,
                controller: startTime,
                decoration: const InputDecoration(
                  labelText: "Select Time",
                ),
                keyboardType: TextInputType.text,
                validator: (text) {
                  if (text == null || text.isEmpty) {
                    return "required";
                  }

                  return null;
                }),
            sizedBox30(),
            TextFormField(
                onTap: () {
                  _selectDate(context, endTime);
                },
                readOnly: true,
                controller: endTime,
                decoration: const InputDecoration(
                  labelText: "Select Ending Time",
                ),
                keyboardType: TextInputType.text,
                validator: (text) {
                  if (text == null || text.isEmpty) {
                    return "required";
                  }

                  return null;
                }),
            sizedBox50(),
            Text(
              'Wallwt Password',
              style: StyleManager.containerHeader,
              textAlign: TextAlign.start,
            ),
            sizedBox50(),
            CustomTextFormField(
              controller: password,
              labelText: 'Enter your security code',
              isPassword: true,
              obscureText: _showPassword,
              
            ),
            sizedBox20(),
            ButtonWithFill(buttonName: 'Confirm Booking', onPressed: () {})
          ],
        ),
      ),
    );
  }
}
