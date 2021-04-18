import 'package:flutter/material.dart';
import 'package:izaan_want_a_room/screens/register/register.dart';
import "package:izaan_want_a_room/screens/welcome/welcome.dart";
import "package:izaan_want_a_room/screens/login/login.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: Welcome.screenName,
      routes: {
        Welcome.screenName: (context) => Welcome(),
        Login.screenName: (context) => Login(),
        Register.screenName: (context) => Register(),
      },
    );
  }
}
