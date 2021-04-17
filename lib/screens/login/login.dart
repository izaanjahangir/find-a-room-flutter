import "package:flutter/material.dart";
import 'package:izaan_want_a_room/components/back_button_header/back_button_header.dart';
import 'package:izaan_want_a_room/components/custom_outline_button/custom_outline_button.dart';
import 'package:izaan_want_a_room/components/custom_text_button/custom_text_button.dart';
import 'package:izaan_want_a_room/components/text_input/text_input.dart';
import 'package:izaan_want_a_room/config/theme_colors.dart';

class Login extends StatelessWidget {
  static const String screenName = "/login";
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final padding = const EdgeInsets.symmetric(horizontal: 20);
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: padding,
                  child: BackButtonHeader(),
                ),
                SingleChildScrollView(
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
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
                        Container(
                          margin: const EdgeInsets.only(top: 20),
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          child: Form(
                            key: _formKey,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                TextInput(
                                  controller: emailController,
                                  hintText: "Enter address",
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                TextInput(
                                    controller: passwordController,
                                    hintText: "Password",
                                    obscureText: true),
                                SizedBox(
                                  height: 20,
                                ),
                                CustomOutlineButton(
                                  disabled: false,
                                  backgroundColor: ThemeColors.lightBlue,
                                  onPressed: () {},
                                  height: 45,
                                  label: "Login",
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              color: ThemeColors.grey,
              width: size.width,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomTextButton(onTap: () {}, text: "Register an account")
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
