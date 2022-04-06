import 'package:flutter/material.dart';

class LoginPg extends StatefulWidget {
  const LoginPg({Key? key}) : super(key: key);

  @override
  State<LoginPg> createState() => _LoginPgState();
}

class _LoginPgState extends State<LoginPg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("PRESCRIBLE"),
        ),
        body: ElevatedButton(
          child: Text('Login'),
          onPressed: () {},
        ));
  }
}
