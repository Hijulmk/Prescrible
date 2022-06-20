import 'package:flutter/material.dart';
import 'package:prescrible/Pages/account_info.dart';
import 'package:prescrible/Pages/doc_info.dart';
import 'package:prescrible/Pages/forgot_password.dart';

import 'Pages/homepage.dart';
import 'Pages/login_page.dart';
import 'Pages/sign_up_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        primarySwatch: Colors.green,
      ),
      darkTheme:ThemeData(
        brightness: Brightness.dark,
        backgroundColor: Colors.white,
        primarySwatch: Colors.green,
      ) ,
      home: const LoginPg(),
    );
  }
}

