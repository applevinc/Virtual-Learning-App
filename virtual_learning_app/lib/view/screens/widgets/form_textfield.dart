import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
        border: OutlineInputBorder(),
        fillColor: Colors.grey.shade300,
        filled: true,
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
