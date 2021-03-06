import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:izaan_want_a_room/screens/home_tab/home_tab.dart';
import 'package:izaan_want_a_room/screens/post_details/post_details.dart';
import 'package:izaan_want_a_room/screens/register/register.dart';
import 'package:izaan_want_a_room/screens/select_area/select_area.dart';
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
      builder: EasyLoading.init(),
      routes: {
        Welcome.screenName: (context) => Welcome(),
        Login.screenName: (context) => Login(),
        Register.screenName: (context) => Register(),
        SelectArea.screenName: (context) => SelectArea(),
        HomeTab.screenName: (context) => HomeTab(),
        PostDetails.screenName: (context) => PostDetails(),
      },
    );
  }
}
