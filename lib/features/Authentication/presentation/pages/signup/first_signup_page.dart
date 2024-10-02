import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:ride_share_app/core/global/widgets/button_with_fill.dart';
import 'package:ride_share_app/core/utils/color_manager.dart';
import 'package:ride_share_app/core/utils/style_maneger.dart';

// ignore: must_be_immutable
class FirstSignupPage extends StatelessWidget {
  FirstSignupPage({super.key});

  GlobalKey<FormState> globalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "Register",
                style:
                    StyleManager.header.copyWith(color: ColorManager.darkGreen),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Form(
              key: globalKey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "First Name",
                        labelStyle: StyleManager.offerText.copyWith(
                            color: ColorManager.lightgrey, fontSize: 14),
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: ColorManager.darkGreen,
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: ColorManager.lightgrey,
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                      ),
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "last Name",
                      labelStyle: StyleManager.offerText.copyWith(
                          color: ColorManager.lightgrey, fontSize: 14),
                      focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: ColorManager.darkGreen,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: ColorManager.lightgrey,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "username",
                      labelStyle: StyleManager.offerText.copyWith(
                          color: ColorManager.lightgrey, fontSize: 14),
                      focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: ColorManager.darkGreen,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: ColorManager.lightgrey,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                    ),
                  ),
                  IntlPhoneField(
                    keyboardType: TextInputType.number,
                    initialCountryCode: 'SY',
                    decoration: InputDecoration(
                      labelText: "Phone  Number",
                      labelStyle: StyleManager.offerText.copyWith(
                          color: ColorManager.lightgrey, fontSize: 14),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: ColorManager.darkGreen,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: ColorManager.lightgrey,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Password",
                      labelStyle: StyleManager.offerText.copyWith(
                          color: ColorManager.lightgrey, fontSize: 14),
                      focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: ColorManager.darkGreen,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: ColorManager.lightgrey,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 6),
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "forget password",
                            style: TextStyle(
                                color: ColorManager.darkGrey, fontSize: 12),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  ButtonWithFill(
                      buttonName: "Login",
                      onPressed: () {},
                      width: MediaQuery.sizeOf(context).width,
                      height: 50),
                  Center(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("don't have account?"),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "register",
                              style: StyleManager.greenButtonText
                                  .copyWith(fontSize: 14),
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
