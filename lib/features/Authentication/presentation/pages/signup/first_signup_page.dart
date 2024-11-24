import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:ride_share_app/core/global/helper/navigation_helper.dart';
import 'package:ride_share_app/core/global/widgets/button_with_fill.dart';
import 'package:ride_share_app/core/global/widgets/custom_sized_box.dart';
import 'package:ride_share_app/core/utils/color_manager.dart';
import 'package:ride_share_app/core/injection_container.dart' as di;
import 'package:ride_share_app/core/utils/style_maneger.dart';
import 'package:ride_share_app/features/Authentication/presentation/bloc/Signup/Signup_bloc.dart';
import 'package:ride_share_app/features/Authentication/presentation/pages/signup/second_signup_page.dart';
import 'package:ride_share_app/features/Authentication/presentation/widgets/custom_form_field.dart';
import 'package:ride_share_app/features/Authentication/presentation/widgets/have_account_statement.dart';

// ignore: must_be_immutable
class FirstSignupPage extends StatefulWidget {
  const FirstSignupPage({super.key});

  @override
  State<FirstSignupPage> createState() => _FirstSignupPageState();
}

class _FirstSignupPageState extends State<FirstSignupPage> {
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  TextEditingController firstName = TextEditingController();
  TextEditingController lastNmae = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController birthDate = TextEditingController();
  TextEditingController phone = TextEditingController();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2030),
    );

    if (selectedDate != null) {
      setState(() {
        birthDate.text = DateFormat('yyyy-MM-dd').format(selectedDate);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di.sl<SignupBloc>(),
      child: Builder(
        builder: (context) {
          return Scaffold(
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      "Register",
                      style: StyleManager.header
                          .copyWith(color: ColorManager.darkGreen),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Form(
                    key: globalKey,
                    child: Column(
                      children: [
                        CustomTextFormField(
                            controller: firstName,
                            labelText: "First Name",
                            keyboardType: TextInputType.text),
                        CustomTextFormField(
                            controller: lastNmae,
                            labelText: "last Name",
                            keyboardType: TextInputType.text),
                         IntlPhoneField(
                          controller:phone ,
                          keyboardType: TextInputType.number,
                          initialCountryCode: 'SY',
                          decoration: InputDecoration(
                            labelText: "Phone  Number",
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        CustomTextFormField(
                            controller: username,
                            labelText: "username",
                            keyboardType: TextInputType.text,
                            validator: (text) {
                              if (text == null || text.isEmpty) {
                                return "required";
                              }
                              if (text.length < 6) {
                                return "can't be less than 6 ";
                              }
                              return null;
                            }),
                        TextFormField(
                            onTap: () {
                              _selectDate(context);
                            },
                            readOnly: true,
                            controller: birthDate,
                            decoration: const InputDecoration(
                              labelText: "birth date",
                            ),
                            keyboardType: TextInputType.text,
                            validator: (text) {
                              if (text == null || text.isEmpty) {
                                return "required";
                              }
          
                              return null;
                            }),
          
                        const SizedBox(
                          height: 20,
                        ),
                        //const TermAndPrivecyStatement(),
                        const sizedBox20(),
                        ButtonWithFill(
                            buttonName: "Sign in",
                            onPressed: () {
                              if (globalKey.currentState!.validate()) {
                                BlocProvider.of<SignupBloc>(context).add(
                                  SignupEvent.firstSend(
                                      firstName.text,
                                      lastNmae.text,
                                      phone.text,
                                      username.text,
                                      birthDate.text),
                                );
                                NavigationHelper.navigateWithFade(
                                  context,
                                  BlocProvider.value(
                                      value: context.read<SignupBloc>(),
                                      child: const SecondSignupPage()),
                                );
                              }
                            },
                            width: MediaQuery.sizeOf(context).width,
                            height: 50),
                        const HaveAccountStatement()
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        }
      ),
    );
  }
}
