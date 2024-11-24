import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ride_share_app/core/global/helper/navigation_helper.dart';
import 'package:ride_share_app/core/global/helper/showsnackBar.dart';
import 'package:ride_share_app/core/global/helper/validation.dart';
import 'package:ride_share_app/core/global/widgets/back_app_bar.dart';
import 'package:ride_share_app/core/global/widgets/button_with_fill.dart';
import 'package:ride_share_app/core/global/widgets/custom_sized_box.dart';
import 'package:ride_share_app/core/utils/style_maneger.dart';
import 'package:ride_share_app/features/Authentication/presentation/bloc/Signup/Signup_bloc.dart';
import 'package:ride_share_app/features/Authentication/presentation/widgets/custom_form_field.dart';
import 'package:ride_share_app/features/HomePage/pages/home_page.dart';

class SecondSignupPage extends StatefulWidget {
  const SecondSignupPage({super.key});

  @override
  State<SecondSignupPage> createState() => _SecondSignupPageState();
}

class _SecondSignupPageState extends State<SecondSignupPage> {
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  TextEditingController password = TextEditingController();
  TextEditingController confirm = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: BackAppBar(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Form(
              key: globalKey,
              child: Column(
                children: [
                  Text(
                    "set your password",
                    style: StyleManager.header,
                  ),
                  const sizedBox20(),
                  CustomTextFormField(
                      controller: password,
                      labelText: "Password",
                      keyboardType: TextInputType.number,
                      validator: Validation.passwordValidation),
                  const sizedBox50(),
                  CustomTextFormField(
                    controller: confirm,
                    labelText: "confirm Password",
                    keyboardType: TextInputType.number,
                    validator: (text) {
                      if (text == null || text.isEmpty) {
                        return "Password is required";
                      }
                      if (password.text != confirm.text) {
                        return "not match";
                      }
                      return null;
                    },
                  ),
                  const sizedBox20(),
                  BlocConsumer<SignupBloc, SignupState>(
                    listener: (context, state) {
                      state.maybeWhen(
                        successCreate: (messages) {
                          showSnackBar(context, 'Account Create Successful',
                              Colors.green);
                          NavigationHelper.navigateWithFade(
                              context, const HomePage());
                        },
                        error: (failure) {
                          showSnackBar(context, failure, Colors.red);
                        },
                        orElse: () {},
                      );
                    },
                    builder: (context, state) {
                      return state.maybeWhen(
                        loadInProgress: () =>
                            const CircularProgressIndicator(),
                        orElse: () {
                          return ButtonWithFill(
                            buttonName: "Rigester",
                            onPressed: () {
                              if (globalKey.currentState!.validate()) {
                                context.read<SignupBloc>().add(
                                      SignupEvent.secondSend(
                                        password.text,
                                        confirm.text,
                                      ),
                                    );
                                context.read<SignupBloc>().add(
                                      SignupEvent.createAccount(),
                                    );
                                  
                              } else {
                                showSnackBar(
                                    context,
                                    'Please fill all the fields correctly',
                                    Colors.red);
                              }
                            },
                            width: MediaQuery.sizeOf(context).width,
                            height: 50,
                          );
                        },
                      );
                    },
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
