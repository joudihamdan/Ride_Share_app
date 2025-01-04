import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ride_share_app/core/utils/style_maneger.dart';
import 'package:ride_share_app/features/reversation/presentation/Bloc/reservation_bloc.dart';
import '../../../../core/global/widgets/button_with_fill.dart';
import '../../../../core/global/widgets/custom_sized_box.dart';
import '../../../../core/injection_container.dart';
import '../../../Authentication/presentation/widgets/custom_form_field.dart';
import 'thanks_page.dart';

// ignore: must_be_immutable
class PaymentPage extends StatelessWidget {
  PaymentPage({super.key});
  TextEditingController password = TextEditingController();
  GlobalKey<FormState> formKey=GlobalKey();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=>sl<ReservationBloc>(),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Request for rent",
          textAlign: TextAlign.left,
          
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Wallwt Password',
                    style: StyleManager.containerHeader,
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
              const sizedBox50(),
              Form(
                key: formKey,
                child: CustomTextFormField(
                  controller: password,
                  labelText: 'Enter your security code',
                  isPassword: true,
                ),
              ),
              const sizedBox40(),
              BlocListener<ReservationBloc,ReservationState>(
                listener: (context,state){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const ThanksPage(message: 'Thank you',)));
                },
                child: ButtonWithFill(buttonName: 'Confirm Booking', onPressed: () {

                  if(formKey.currentState!.validate()){
                                        Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ThanksPage(
                                        message: 'thank you for your reservation',
                                      )));

                  }
                }))
            ],
          ),
        ),
      ),
    );
  }
}
