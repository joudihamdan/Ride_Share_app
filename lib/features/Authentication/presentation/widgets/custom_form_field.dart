import 'package:flutter/material.dart';
import 'package:ride_share_app/core/utils/color_manager.dart';

// ignore: must_be_immutable
class CustomTextFormField extends StatefulWidget {
  final TextEditingController controller;
  final String labelText;
  final bool isPassword;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  bool obscureText;
  final bool readOnly;

  CustomTextFormField(
      {super.key,
      required this.controller,
      required this.labelText,
      this.isPassword = false,
      this.keyboardType = TextInputType.text,
      this.validator,
      this.obscureText = false,
      this.readOnly = false});

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  void _togglePasswordVisibility() {
    setState(() {
      widget.obscureText = !widget.obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: TextFormField(
        readOnly: widget.readOnly,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        controller: widget.controller,
        keyboardType: widget.keyboardType,
        obscureText: widget.obscureText,
        validator: widget.obscureText
            ? widget.validator
            : (value) {
                if (value == null || value.isEmpty) {
                  return 'This field is required';
                }
                return null;
              },
        decoration: InputDecoration(
          labelText: widget.labelText,
          suffixIcon: widget.isPassword
              ? IconButton(
                  icon: Icon(
                    widget.obscureText
                        ? Icons.visibility_off
                        : Icons.visibility,
                    size: 20,
                    color: ColorManager.darkGrey,
                  ),
                  onPressed: _togglePasswordVisibility,
                )
              : null,
        ),
      ),
    );
  }
}
