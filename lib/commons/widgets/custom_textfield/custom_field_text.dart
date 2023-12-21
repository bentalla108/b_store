import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.suffixIconName,
    this.prefixIconName,
    required this.labelText,
    this.obscureText = false,
    this.hintText,
  });

  final IconData? suffixIconName;
  final IconData? prefixIconName;
  final String labelText;
  final String? hintText;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      expands: false,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        suffixIcon: suffixIconName != null ? Icon(suffixIconName) : null,
        prefixIcon: prefixIconName != null ? Icon(prefixIconName) : null,
        labelText: labelText,
      ),
    );
  }
}
