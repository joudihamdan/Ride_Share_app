import 'package:flutter/material.dart';

import '../../../../core/utils/color_manager.dart';

class GetValidCodes extends StatefulWidget {
  const GetValidCodes({super.key, required this.codes, this.onPressed});

  final List<dynamic> codes;
  final Function()? onPressed;

  @override
  State<GetValidCodes> createState() => _GetValidCodesState();
}

class _GetValidCodesState extends State<GetValidCodes> {
  void useCode(newcode) {
    setState(() {
      // code.text = newcode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: List.generate(
          widget.codes.length,
          (index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Container(
                decoration: BoxDecoration(
                    color: ColorManager.lightGreenContainer,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: ColorManager.lightGreen)),
                child: ListTile(
                  isThreeLine: false,
                  title: Text(
                    widget.codes[index],
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  subtitle: Text(
                    widget.codes.isEmpty
                        ? ""
                        : "", //"${widget.codes[index].amount.toString()} S.P",
                    style: const TextStyle(fontWeight: FontWeight.w600),
                  ),
                  trailing: IconButton.filled(
                    style: ButtonStyle(
                      backgroundColor:
                          WidgetStateProperty.all(const Color((0xFF08B783))),
                    ),
                    onPressed: () {
                      useCode(widget.codes[index]);
                      //useCode(codes[index].code);
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(Icons.play_arrow),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
