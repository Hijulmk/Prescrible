import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  const MyButton(String this.buttonText, Function this.onClick, {Key? key})
      : super(key: key);

  final  onClick;
  final buttonText;

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(widget.buttonText),
      onPressed: widget.onClick,
    );
  }
}
