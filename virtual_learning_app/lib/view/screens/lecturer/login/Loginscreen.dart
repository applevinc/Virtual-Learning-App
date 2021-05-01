import 'package:flutter/material.dart';
import 'package:virtuallearningapp/view/screens/lecturer/login/form.dart';
import 'package:virtuallearningapp/view/screens/widgets/headline_text.dart';
import 'package:virtuallearningapp/view/screens/widgets/logo.dart';
import 'package:sizer/sizer.dart';

class LecturerLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 10.0.h),
                Hero(
                  tag: "logo",
                  child: const Logo(),
                ),
                SizedBox(height: 10),
                HeadLineText('Login as a Lecturer'),
                SizedBox(height: 10),
                LecturerForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
