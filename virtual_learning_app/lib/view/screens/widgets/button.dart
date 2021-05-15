import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    this.text,
    this.onPressed,
    this.color = const Color(0xffD33D2C),
  });

  final String text;
  final Function onPressed;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: color,
      elevation: 0.0,
      height: 7.0.h,
      child: Text(
        text,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
