import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:ride_share_app/core/global/helper/navigation_helper.dart';
import 'package:ride_share_app/core/global/helper/validation.dart';
import 'package:ride_share_app/core/global/widgets/button_with_fill.dart';
import 'package:ride_share_app/core/global/widgets/custom_sized_box.dart';
import 'package:ride_share_app/core/utils/color_manager.dart';
import 'package:ride_share_app/core/injection_container.dart' as di;
import 'package:ride_share_app/core/utils/string_manager.dart';
import 'package:ride_share_app/core/utils/style_maneger.dart';
import 'package:ride_share_app/features/Authentication/presentation/bloc/Signup/Signup_bloc.dart';
import 'package:ride_share_app/features/Authentication/presentation/pages/signup/second_signup_page.dart';
import 'package:ride_share_app/features/Authentication/presentation/widgets/custom_form_field.dart';
import 'package:ride_share_app/features/Authentication/presentation/widgets/date_field.dart';
import 'package:ride_share_app/features/Authentication/presentation/widgets/have_account_statement.dart';

// ignore: must_be_immutable
class FirstSignupPage extends StatelessWidget {
  FirstSignupPage({super.key});

  final GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  TextEditingController firstName = TextEditingController();
  TextEditingController lastNmae = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController birthDate = TextEditingController();
  TextEditingController phone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di.sl<SignupBloc>(),
      child: Builder(builder: (context) {
        return SafeArea(
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      StringManager.register,
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
                          labelText: StringManager.first,
                        ),
                        CustomTextFormField(
                          controller: lastNmae,
                          labelText: StringManager.last,
                        ),
                        IntlPhoneField(
                          controller: phone,
                          keyboardType: TextInputType.number,
                          initialCountryCode: 'SY',
                          decoration: InputDecoration(
                            labelText: StringManager.phone,
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        CustomTextFormField(
                            controller: username,
                            labelText: StringManager.username,
                            validator: Validation.userName),
                        DateField(birthDate),
                        const SizedBox(
                          height: 20,
                        ),
                        const sizedBox20(),
                        ButtonWithFill(
                          buttonName: StringManager.signIn,
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
                                    child: SecondSignupPage()),
                              );
                            }
                          },
                          width: MediaQuery.sizeOf(context).width,
                        ),
                        const HaveAccountStatement()
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
