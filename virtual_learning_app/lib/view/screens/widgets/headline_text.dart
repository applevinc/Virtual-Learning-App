import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HeadLineText extends StatelessWidget {
  const HeadLineText(this.text);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text.toUpperCase(),
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 12.0.sp,
      ),
    );
  }
}
