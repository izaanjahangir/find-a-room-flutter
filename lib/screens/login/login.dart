import "package:flutter/material.dart";
import 'package:izaan_want_a_room/components/back_button_header/back_button_header.dart';
import 'package:izaan_want_a_room/components/custom_outline_button/custom_outline_button.dart';
import 'package:izaan_want_a_room/components/custom_text_button/custom_text_button.dart';
import 'package:izaan_want_a_room/components/text_input/text_input.dart';
import 'package:izaan_want_a_room/config/theme_colors.dart';

class Login extends StatelessWidget {
  static const String screenName = "/login";

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    final padding = const EdgeInsets.symmetric(horizontal: 20);

    return SafeArea(
      child: Scaffold(
          body: Container(
        margin: const EdgeInsets.only(top: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: padding,
              child: BackButtonHeader(),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: padding,
              child: Text(
                "Login",
                style: TextStyle(fontSize: 28),
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(top: 20),
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      TextInput(
                        hintText: "Enter address",
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextInput(
                        hintText: "Password",
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      CustomOutlineButton(
                        disabled: false,
                        backgroundColor: ThemeColors.lightBlue,
                        onPressed: () {},
                        label: "Login",
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              color: ThemeColors.grey,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                children: [
                  CustomTextButton(onTap: () {}, text: "Register an account")
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
