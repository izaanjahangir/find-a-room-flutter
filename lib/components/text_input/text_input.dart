import "package:flutter/material.dart";

class TextInput extends StatelessWidget {
  final String hintText;
  final Function validator;

  TextInput({this.hintText, this.validator});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(fontSize: 18),
      ),
      validator: validator,
    );
  }
}
