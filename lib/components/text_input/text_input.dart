import "package:flutter/material.dart";

class TextInput extends StatelessWidget {
  final String hintText;
  final Function validator;
  final bool obscureText;
  final TextEditingController controller;

  TextInput(
      {this.hintText,
      this.validator,
      this.obscureText = false,
      this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(fontSize: 18),
      ),
      validator: validator,
    );
  }
}
