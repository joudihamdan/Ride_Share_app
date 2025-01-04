// ignore_for_file: use_build_context_synchronously, unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:ride_share_app/core/global/helper/navigation_helper.dart';
import 'package:ride_share_app/core/global/helper/showsnackBar.dart';
import 'package:ride_share_app/core/global/widgets/button_with_fill.dart';
import 'package:ride_share_app/core/global/widgets/custom_sized_box.dart';
import 'package:ride_share_app/features/Map/presentation/widgets/dashed_line.dart';
import 'package:ride_share_app/features/bicycle/domain/entities/bicycle.dart';
import 'package:ride_share_app/features/reversation/domain/entities/reservation.dart';
import 'package:ride_share_app/features/reversation/presentation/Bloc/reservation_bloc.dart';
import 'package:ride_share_app/features/reversation/presentation/pages/payment_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../core/injection_container.dart';
import '../../../../core/utils/color_manager.dart';
import '../../../../core/utils/style_maneger.dart';

class ReservationPage extends StatefulWidget {
  ReservationPage({super.key, required this.bicycle});

  final Bicycle bicycle;

  @override
  State<ReservationPage> createState() => _ReservationPageState();
}

class _ReservationPageState extends State<ReservationPage> {
  TextEditingController startTime = TextEditingController();
  TextEditingController endTime = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey();
  String formattedDateTime = "";
  Future<void> _selectDate(
      BuildContext context, TextEditingController controller) async {
    final DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2030),
    );

    final TimeOfDay? selectedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (selectedDate != null && selectedTime != null) {
      setState(() {
        controller.text =
            "${DateFormat('yyyy-MM-dd').format(selectedDate)} ${selectedTime.format(context)}";
        final DateTime combinedDateTime = DateTime(
          selectedDate.year,
          selectedDate.month,
          selectedDate.day,
          selectedTime.hour,
          selectedTime.minute,
        );
        formattedDateTime = "${combinedDateTime.toIso8601String()}Z";
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
      body: BlocProvider(
        create: (context) => sl<ReservationBloc>(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
          child: Form(
            key: formKey,
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
                            const Text("From"),
                            Text(
                              sl<SharedPreferences>().getString('from') ??
                                  "null",
                              style: StyleManager.underOfferText,
                            ),
                          ],
                        )
                      ],
                    ),
                    const DashedLine(),
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
                            const Text('To'),
                            Text(
                              sl<SharedPreferences>().getString('to') ?? "null",
                              style: StyleManager.underOfferText,
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                const sizedBox30(),
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
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(widget.bicycle.model),
                                const SizedBox(
                                  width: 20,
                                ),
                                const Text('price')
                              ],
                            ),
                            Row(
                              children: [
                                Text(widget.bicycle.type),
                                const SizedBox(
                                  width: 20,
                                ),
                                Text("${widget.bicycle.size}"),
                              ],
                            ),
                            Text(widget.bicycle.note),
                          ],
                        ),
                      ),
                      Expanded(
                          child: Image.asset(widget.bicycle.photoPath,
                              width: 150, height: 80))
                    ],
                  ),
                ),
                const sizedBox20(),
                TextFormField(
                    onTap: () {
                      _selectDate(context, startTime);
                    },
                    readOnly: true,
                    controller: startTime,
                    decoration: const InputDecoration(
                      labelText: "Select Time",
                    ),
                    validator: (text) {
                      if (text == null || text.isEmpty) {
                        return "required";
                      }
                      return null;
                    }),
                const sizedBox30(),
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
                const sizedBox20(),
                BlocConsumer<ReservationBloc, ReservationState>(
                    listener: (context, state) {
                  state.maybeWhen(
                    successCreate: (){
                        NavigationHelper.navigateTo(context, PaymentPage());
                    },
                    error: (error){
                      showSnackBar(context, error, ColorManager.redColor);
                    },
                    orElse: () {});
                }, builder: (context, state) {
                  return ButtonWithFill(
                      buttonName: 'Confirm Booking',
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          context.read<ReservationBloc>().add(
                              ReservationEvent.createReservation(Reservation(
                                  bicycleId: widget.bicycle.id,
                                  fromHubId:
                                      sl<SharedPreferences>().getInt('fromId')!,
                                  toHubId:
                                      sl<SharedPreferences>().getInt('toId')!,
                                  duration: 50,
                                  startTime: formattedDateTime,
                                  paymentMethod: "Wallet")));
                        }
                       
                      });
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
