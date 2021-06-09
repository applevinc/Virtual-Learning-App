import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HeadLineText extends StatelessWidget {
  HeadLineText(
    this.text, {
    this.alignment = Alignment.centerLeft,
  });

  final String text;
  final AlignmentGeometry alignment;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: Text(
        text.toUpperCase(),
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 12.0.sp,
        ),
      ),
    );
  }
}
