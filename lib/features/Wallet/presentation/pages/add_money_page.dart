import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ride_share_app/core/global/widgets/button_with_fill.dart';
import 'package:ride_share_app/core/global/widgets/button_without_fill.dart';
import 'package:ride_share_app/core/injection_container.dart' as di;
import 'package:ride_share_app/core/utils/color_manager.dart';
import 'package:ride_share_app/features/Authentication/presentation/widgets/custom_form_field.dart';
import 'package:ride_share_app/features/Wallet/domain/entities/valid_code.dart';
import 'package:ride_share_app/features/Wallet/presentation/pages/wallet_page.dart';
import '../bloc/wallet_bloc.dart';
class AddMoneyPage extends StatelessWidget {
  const AddMoneyPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController codeController = TextEditingController();

    void useCode(String newCode) {
      codeController.text = newCode;
    }

    return BlocProvider(
      create: (context) => di.sl<WalletBloc>()..add(const WalletEvent.getCodes()),
      child: Scaffold(
        appBar: AppBar(
          leading: const BackButton(),
        ),
        body: BlocBuilder<WalletBloc, WalletState>(
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  _GetValidCodesButton(
                    state: state,
                    onCodeSelected: (code) => useCode(code),
                  ),
                  const SizedBox(height: 20),
                  CustomTextFormField(
                    controller: codeController,
                    labelText: 'Enter code',
                    readOnly: true,
                  ),
                  const SizedBox(height: 20),
                  _AddButton(codeController: codeController),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
class _GetValidCodesButton extends StatelessWidget {
  final WalletState state;
  final void Function(String) onCodeSelected;

  const _GetValidCodesButton({
    required this.state,
    required this.onCodeSelected,
  });

  @override
  Widget build(BuildContext context) {
    return ButtonWithoutFill(
      buttonName: 'Get all valid code',
      onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return state.maybeWhen(
              loadingCodes: (codes) => _ValidCodesDialog(
                codes: codes,
                onCodeSelected: onCodeSelected,
              ),
              error: (message) => _ErrorDialog(message: message),
              loadInProgress: () => const _LoadingDialog(),
              orElse: () => const _NoCodesDialog(),
            );
          },
        );
      },
    );
  }
}

class _ValidCodesDialog extends StatelessWidget {
  final List<ValidCode> codes;
  final void Function(String) onCodeSelected;

  const _ValidCodesDialog({
    required this.codes,
    required this.onCodeSelected,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      scrollable: true,
      title: const Text('All valid codes'),
      content: Column(
        children: codes
            .map(
                (code) => _CodeTile(code:code , onCodeSelected: onCodeSelected))
            .toList(),
      ),
    );
  }
}

class _CodeTile extends StatelessWidget {
  final ValidCode  code;
  final void Function(String) onCodeSelected;

  const _CodeTile({
    required this.code,
    required this.onCodeSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Container(
        decoration: BoxDecoration(
          color: ColorManager.lightGreenContainer,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: ColorManager.lightGreen),
        ),
        child: ListTile(
          title: Text(
            code.code,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          subtitle: Text(
            "${code.amount.toString()} S.P",
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
          trailing: IconButton(
            onPressed: () {
              onCodeSelected(code.code);
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.play_arrow),
          ),
        ),
      ),
    );
  }
}

class _AddButton extends StatelessWidget {
  final TextEditingController codeController;

  const _AddButton({required this.codeController});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<WalletBloc, WalletState>(
      listener: (context, state) {},
      builder: (context, state) {
        return ButtonWithFill(
          buttonName: 'Add',
          onPressed: () {
            context
                .read<WalletBloc>()
                .add(WalletEvent.addMoney(codeController.text));
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => WalletPage()),
            );
          },
        );
      },
    );
  }
}

class _ErrorDialog extends StatelessWidget {
  final String message;

  const _ErrorDialog({required this.message});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Error'),
      content: Text(message),
    );
  }
}

class _LoadingDialog extends StatelessWidget {
  const _LoadingDialog();

  @override
  Widget build(BuildContext context) {
    return const AlertDialog(
      title: Text('Loading'),
      content: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}

class _NoCodesDialog extends StatelessWidget {
  const _NoCodesDialog();

  @override
  Widget build(BuildContext context) {
    return const AlertDialog(
      title: Text('No Valid Codes'),
      content: Text('There are no valid codes available.'),
    );
  }
}


//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) =>
//           di.sl<WalletBloc>()..add(const WalletEvent.getCodes()),
//       child: Scaffold(
//         appBar: AppBar(
//           leading: const BackButton(),
//         ),
//         body: BlocBuilder<WalletBloc, WalletState>(
//           builder: (context, state) {
//             return Padding(
//               padding: const EdgeInsets.all(15.0),
//               child: Column(
//                 children: [
//                   ButtonWithoutFill(
//                     buttonName: 'Get all valid code',
//                     onPressed: () {
//                       showDialog(
//                         context: context,
//                         builder: (BuildContext context) {
//                           return state.maybeWhen(
//                             loadingCodes: (codes) {
//                               return AlertDialog(
//                                 scrollable: true,
//                                 title: const Text('All valid codes'),
//                                 content: SizedBox(
//                                   child: Column(
//                                     children: List.generate(
//                                       codes.length,
//                                       (index) {
//                                         return Padding(
//                                           padding:
//                                               const EdgeInsets.only(bottom: 8),
//                                           child: Container(
//                                             decoration: BoxDecoration(
//                                                 color: ColorManager
//                                                     .lightGreenContainer,
//                                                 borderRadius:
//                                                     BorderRadius.circular(10),
//                                                 border: Border.all(
//                                                     color: ColorManager
//                                                         .lightGreen)),
//                                             child: ListTile(
//                                               isThreeLine: false,
//                                               title: Text(
//                                                 codes[index].code,
//                                                 maxLines: 1,
//                                                 overflow: TextOverflow.ellipsis,
//                                               ),
//                                               subtitle: Text(
//                                                 "${codes[index].amount.toString()} S.P",
//                                                 style: const TextStyle(
//                                                     fontWeight:
//                                                         FontWeight.w600),
//                                               ),
//                                               trailing: IconButton.filled(
//                                                 style: ButtonStyle(
//                                                   backgroundColor:
//                                                       WidgetStateProperty.all(
//                                                           const Color(
//                                                               (0xFF08B783))),
//                                                 ),
//                                                 onPressed: () {
//                                                   useCode(codes[index].code);
//                                                   Navigator.of(context).pop();
//                                                 },
//                                                 icon: const Icon(
//                                                     Icons.play_arrow),
//                                               ),
//                                             ),
//                                           ),
//                                         );
//                                       },
//                                     ),
//                                   ),
//                                 ),
//                               );
//                             },
//                             error: (message) {
//                               return AlertDialog(
//                                 title: const Text("No valid codes"),
//                                 content: Text(message),
//                               );
//                             },
//                             loadInProgress: () {
//                               return const AlertDialog(
//                                 title: Text("No valid codes"),
//                                 content: Center(
//                                   child: CircularProgressIndicator(),
//                                 ),
//                               );
//                             },
//                             orElse: () {
//                               return const AlertDialog(
//                                 title: Text("No valid codes"),
//                                 content:
//                                     Text("There are no valid codes available."),
//                               );
//                             },
//                           );
//                         },
//                       );
//                     },
//                   ),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   CustomTextFormField(
//                     controller: code,
//                     labelText: 'Enter code',
//                     readOnly: true,
//                   ),
//                   BlocConsumer<WalletBloc, WalletState>(
//                       listener: (context, state) {},
//                       builder: (context, state) {
//                         return ButtonWithFill(
//                             buttonName: 'add',
//                             onPressed: () {
//                               context
//                                   .read<WalletBloc>()
//                                   .add(WalletEvent.addMoney(code.text));

//                               Navigator.pushReplacement(
//                                   context,
//                                   MaterialPageRoute(
//                                       builder: (context) => WalletPage()));
//                             });
//                       })
//                 ],
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
