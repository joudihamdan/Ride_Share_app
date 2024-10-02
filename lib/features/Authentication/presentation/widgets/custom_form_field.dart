import 'package:flutter/material.dart';
import 'package:ride_share_app/core/utils/color_manager.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final bool isPassword;
  final TextInputType keyboardType;
  final Function(String?)? validator;
  final bool obscureText;
  final VoidCallback? togglePasswordVisibility;

  const CustomTextFormField({
    super.key,
    required this.controller,
    required this.labelText,
    this.isPassword = false,
    required this.keyboardType,
    this.validator,
    this.obscureText = false,
    this.togglePasswordVisibility,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'This field is required';
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: labelText,
        suffixIcon: isPassword
            ? IconButton(
                icon: Icon(
                  obscureText ? Icons.visibility_off : Icons.visibility,
                  size: 20,
                  color: ColorManager.darkGrey,
                ),
                onPressed: togglePasswordVisibility,
              )
            : null,
      ),
    );
  }
}
