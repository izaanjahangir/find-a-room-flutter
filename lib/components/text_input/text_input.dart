import "package:flutter/material.dart";

class TextInput extends StatelessWidget {
  final String hintText;
  final Function validator;
  final bool obscureText;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final TextCapitalization textCapitalization;

  TextInput(
      {this.hintText,
      this.validator,
      this.obscureText = false,
      this.controller,
      this.keyboardType = TextInputType.text,
      this.textCapitalization = TextCapitalization.none});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      textCapitalization: textCapitalization,
      keyboardType: keyboardType,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(fontSize: 18),
      ),
      validator: validator,
    );
  }
}
