import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:ride_share_app/core/global/helper/navigation_helper.dart';
import 'package:ride_share_app/core/global/helper/showsnackBar.dart';
import 'package:ride_share_app/core/global/helper/validation.dart';
import 'package:ride_share_app/core/global/widgets/button_with_fill.dart';
import 'package:ride_share_app/features/Authentication/domain/entities/login_req.dart';
import 'package:ride_share_app/features/Authentication/presentation/bloc/Login/Login_bloc.dart';
import 'package:ride_share_app/core/injection_container.dart' as di;
import 'package:ride_share_app/features/Authentication/presentation/widgets/custom_form_field.dart';
import 'package:ride_share_app/features/Authentication/presentation/widgets/forget_password.dart';
import 'package:ride_share_app/features/Authentication/presentation/widgets/register_statement.dart';
import 'package:ride_share_app/features/Authentication/presentation/widgets/welcom_statement.dart';
import 'package:ride_share_app/features/onBoarding/pages/welcom_page.dart';

// ignore: must_be_immutable
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  TextEditingController passwordd = TextEditingController();
  TextEditingController phone = TextEditingController();
  bool showPassword = false;
  bool _showPassword = true;

  void _togglePasswordVisibility() {
    setState(() {
      _showPassword = !_showPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => di.sl<LoginBloc>(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const WelcomStatement(),
              const SizedBox(
                height: 60,
              ),
              Form(
                key: globalKey,
                child: Column(
                  children: [
                    IntlPhoneField(
                      validator: (text) {
                        if (text == null) {
                          return "required";
                        }
                        if (text.isValidNumber()) {
                          return "invalid number";
                        }

                        return "please enter your phone number";
                      },
                      controller: phone,
                      keyboardType: TextInputType.number,
                      initialCountryCode: 'SY',
                      decoration: const InputDecoration(
                        labelText: "Phone Number",
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextFormField(
                      controller: passwordd,
                      labelText: "Password",
                      keyboardType: TextInputType.number,
                      isPassword: true,
                      obscureText: _showPassword,
                      togglePasswordVisibility: _togglePasswordVisibility,
                      validator: (password) {
                        if (password == null || password.isEmpty) {
                          return "required";
                        }
                        if (password.length < 8) {
                          return "couldn't be less than 8 digit";
                        }
                        if (!Validation.validatePassword(password)) {
                          return "shoul contain capital and small letters and numbers";
                        }

                        // return "this field can't be empty";
                      },
                    ),
                    const ForgetPassword(),
                    const SizedBox(
                      height: 60,
                    ),
                    BlocConsumer<LoginBloc, LoginState>(
                      listener: (context, state) {
                        state.maybeWhen(
                          successLogin: (messages) {
                            showSnackBar(
                                context, 'Login Successful', Colors.green);
                            NavigationHelper.navigateWithFade(
                                context, const WelcomPage());
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
                              buttonName: "Login",
                              onPressed: () {
                                if (globalKey.currentState!.validate()) {
                                  BlocProvider.of<LoginBloc>(context).add(
                                    LoginEvent.login(
                                      LoginReq(
                                        phone: phone.text,
                                        password: passwordd.text,
                                      ),
                                    ),
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
                    const RegisterStatement(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
