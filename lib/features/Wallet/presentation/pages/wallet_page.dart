import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ride_share_app/core/global/helper/navigation_helper.dart';
import 'package:ride_share_app/core/global/helper/showsnackBar.dart';
import 'package:ride_share_app/core/global/widgets/button_with_fill.dart';
import 'package:ride_share_app/core/utils/color_manager.dart';
import 'package:ride_share_app/core/utils/style_maneger.dart';
import 'package:ride_share_app/features/Authentication/presentation/widgets/custom_form_field.dart';
import 'package:ride_share_app/features/Wallet/presentation/bloc/wallet_bloc.dart';
import 'package:ride_share_app/core/injection_container.dart' as di;
import 'package:ride_share_app/features/Wallet/presentation/pages/add_money_page.dart';
import '../../../../core/global/helper/validation.dart';
import '../../../../core/global/widgets/button_without_fill.dart';

// ignore: must_be_immutable
class WalletPage extends StatelessWidget {
  WalletPage({super.key});
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  TextEditingController passwordd = TextEditingController();
  TextEditingController confirm = TextEditingController();
  TextEditingController account = TextEditingController();
  final bool _showPassword = true;
  double? balance;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          di.sl<WalletBloc>()..add(const WalletEvent.getMyWallet()),
      child: Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ButtonWithoutFill(
                      buttonName: 'Add Money',
                      onPressed: balance == null
                          ? () {
                              print(balance);
                              NavigationHelper.navigateWithFade(
                                  context, AddMoneyPage());
                            }
                          : null,
                      width: 150)
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.sizeOf(context).width,
                height: 145,
                decoration: BoxDecoration(
                    border: Border.all(color: ColorManager.lightGreen),
                    borderRadius: BorderRadius.circular(10),
                    color: ColorManager.lightGreenContainer),
                child: BlocConsumer<WalletBloc, WalletState>(
                    listener: (context, state) {
                  state.maybeWhen(
                      error: (message) {
                        showSnackBar(context, message, ColorManager.redColor);
                      },
                      orElse: () {});
                }, builder: (context, state) {
                  return state.maybeWhen(
                    loadInProgress: () => const Center(
                      child: SizedBox(
                        width: 300,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            LinearProgressIndicator(
                              color: ColorManager.darkGreen,
                              backgroundColor: Colors.transparent,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            LinearProgressIndicator(
                              color: ColorManager.darkGreen,
                              backgroundColor: Colors.transparent,
                            )
                          ],
                        ),
                      ),
                    ),
                    getWallet: (wallet) {
                      balance = wallet.balance;
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("${wallet.balance}",
                              style: StyleManager.boldHeader),
                          const Text("Available Balance"),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      );
                    },
                    orElse: () {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Don't have wallet yet"),
                          const SizedBox(
                            height: 10,
                          ),
                          ButtonWithFill(
                            buttonName: 'create Wallet',
                            onPressed: () {
                              final walletBloc = context.read<WalletBloc>();
                              showDialog(
                                  context: context,
                                  builder: (BuildContext dialogContext) {
                                    return BlocProvider.value(
                                      value: walletBloc,
                                      child: Dialog(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        child: SizedBox(
                                          height: 375,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Form(
                                              key: globalKey,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: Text(
                                                        'Create Your Wallet',
                                                        style:
                                                            StyleManager.title),
                                                  ),
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                  CustomTextFormField(
                                                      controller: account,
                                                      labelText: 'Bank account',
                                                      keyboardType:
                                                          TextInputType.text),
                                                  CustomTextFormField(
                                                      controller: passwordd,
                                                      labelText:
                                                          'Security code',
                                                      isPassword: true,
                                                      obscureText:
                                                          _showPassword,
                                                      validator: Validation
                                                          .passwordValidation,
                                                      keyboardType:
                                                          TextInputType.text),
                                                  CustomTextFormField(
                                                    controller: confirm,
                                                    labelText:
                                                        'confirm security code',
                                                    keyboardType:
                                                        TextInputType.text,
                                                    isPassword: true,
                                                    obscureText: _showPassword,
                                                    validator: (text) {
                                                      if (text == null ||
                                                          text.isEmpty) {
                                                        return "Password is required";
                                                      }
                                                      if (passwordd.text !=
                                                          confirm.text) {
                                                        return "not match";
                                                      }
                                                      return null;
                                                    },
                                                  ),
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                  ButtonWithFill(
                                                      buttonName:
                                                          'create wallet',
                                                      onPressed: () {
                                                        if (globalKey
                                                            .currentState!
                                                            .validate()) {
                                                          walletBloc.add(
                                                            WalletEvent
                                                                .addWallet(
                                                                    passwordd
                                                                        .text,
                                                                    confirm
                                                                        .text,
                                                                    account
                                                                        .text),
                                                          );
                                                        }
                                                      })
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  });
                            },
                            width: 180,
                          )
                        ],
                      );
                    },
                  );
                }),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Transection'),
                  TextButton(
                    child: const Text(
                      'see All',
                      style: TextStyle(color: ColorManager.darkGreen),
                    ),
                    onPressed: () {},
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
