import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  const MyButton(String this.buttonText, {Key? key}) : super(key: key);
  final buttonText;
  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(widget.buttonText),
      onPressed: () {},
    );
  }
}
