import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:prescrible/Pages/sign_up_page.dart';
import 'package:prescrible/Widgets/my_button.dart';

class LoginPg extends StatefulWidget {
  const LoginPg({Key? key}) : super(key: key);

  @override
  State<LoginPg> createState() => _LoginPgState();
}

final username = TextEditingController();
final passwrd = TextEditingController();

class _LoginPgState extends State<LoginPg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("PRESCRIBLE"),
        ),
        body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Container(height: 150,width: 150,child: Image.asset("assets/images/Logo.png"),),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: username,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Username',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: passwrd,
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
          ),
          TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SignUpPg();
                }));
              },
              child: Text("New User? Create Account"),),
          ElevatedButton(
            child: Text('Login'),
            onPressed: () {},
          ),MyButton("Test")
        ],
      ),);
  }
}
