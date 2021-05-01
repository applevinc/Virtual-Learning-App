import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField({
    Key key,
    this.hintText,
    this.obsureText,
  }) : super(key: key);

  final String hintText;
  final bool obsureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obsureText,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: 10.0.sp,
        ),
        border: OutlineInputBorder(),
        filled: true,
        fillColor: Color(0xffE2E2E6),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your $hintText';
        }
        return null;
      },
    );
  }
}
