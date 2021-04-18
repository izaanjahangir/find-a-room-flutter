import "package:flutter/material.dart";
import 'package:izaan_want_a_room/components/back_button_header/back_button_header.dart';
import 'package:izaan_want_a_room/components/custom_outline_button/custom_outline_button.dart';
import 'package:izaan_want_a_room/components/text_input/text_input.dart';
import 'package:izaan_want_a_room/config/theme_colors.dart';
import 'package:izaan_want_a_room/utils/helpers.dart';

class Register extends StatelessWidget {
  static const String screenName = "/register";
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    final padding = const EdgeInsets.symmetric(horizontal: 20);

    return SafeArea(
      child: GestureDetector(
        onTap: () {
          Helpers.dismissKeyboardOnTap(context);
        },
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
              Expanded(
                child: SingleChildScrollView(
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
                            "Register",
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
                                  controller: nameController,
                                  hintText: "Name",
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                TextInput(
                                  controller: ageController,
                                  hintText: "Age",
                                  keyboardType: TextInputType.number,
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                TextInput(
                                  controller: emailController,
                                  hintText: "Email Address",
                                  keyboardType: TextInputType.emailAddress,
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                TextInput(
                                  controller: phoneController,
                                  hintText: "Phone number",
                                  keyboardType: TextInputType.phone,
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                TextInput(
                                  controller: passwordController,
                                  hintText: "Password",
                                  obscureText: true,
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                TextInput(
                                  controller: confirmPasswordController,
                                  hintText: "Confirm Password",
                                  obscureText: true,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                CustomOutlineButton(
                                  disabled: false,
                                  backgroundColor: ThemeColors.lightBlue,
                                  onPressed: () {},
                                  height: 45,
                                  label: "Register",
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
