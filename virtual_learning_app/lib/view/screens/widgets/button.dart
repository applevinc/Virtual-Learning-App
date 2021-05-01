import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  CustomButton({
    this.text,
    this.onPressed,
    this.color = const Color(0xffD33D2C),
  });

  final String text;
  final Function onPressed;
  Color color;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: color,
      elevation: 0.0,
      child: Text(
        text,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
