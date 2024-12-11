import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:ride_share_app/core/global/helper/navigation_helper.dart';
import 'package:ride_share_app/core/global/helper/showsnackBar.dart';
import 'package:ride_share_app/core/global/helper/validation.dart';
import 'package:ride_share_app/core/global/widgets/button_with_fill.dart';
import 'package:ride_share_app/core/utils/string_manager.dart';
import 'package:ride_share_app/features/Authentication/domain/entities/login_req.dart';
import 'package:ride_share_app/features/Authentication/presentation/bloc/Login/Login_bloc.dart';
import 'package:ride_share_app/core/injection_container.dart' as di;
import 'package:ride_share_app/features/Authentication/presentation/widgets/custom_form_field.dart';
import 'package:ride_share_app/features/Authentication/presentation/widgets/forget_password.dart';
import 'package:ride_share_app/features/Authentication/presentation/widgets/register_statement.dart';
import 'package:ride_share_app/features/Authentication/presentation/widgets/welcom_statement.dart';
import 'package:ride_share_app/features/HomePage/pages/home_page.dart';

// ignore: must_be_immutable
class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  TextEditingController passwordd = TextEditingController();
  TextEditingController phone = TextEditingController();
  final bool _showPassword = true;

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
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: Validation.phoneNumber,
                      controller: phone,
                      keyboardType: TextInputType.number,
                      initialCountryCode: 'SY',
                      decoration: InputDecoration(
                        labelText: StringManager.phone,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextFormField(
                        controller: passwordd,
                        labelText: StringManager.password,
                        isPassword: true,
                        obscureText: _showPassword,
                        validator: Validation.passwordValidation),
                    const ForgetPassword(),
                    const SizedBox(
                      height: 60,
                    ),
                    BlocConsumer<LoginBloc, LoginState>(
                      listener: (context, state) {
                        state.maybeWhen(
                          successLogin: (messages) {
                            showSnackBar(context, StringManager.successLogin,
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
                              buttonName: StringManager(context).login,
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
                                  showSnackBar(context,
                                      StringManager.wrongLogin, Colors.red);
                                }
                              },
                              width: MediaQuery.sizeOf(context).width,
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
