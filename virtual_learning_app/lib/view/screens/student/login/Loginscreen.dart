import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:virtuallearningapp/view/screens/student/login/form.dart';
import 'package:virtuallearningapp/view/screens/widgets/headline_text.dart';
import 'package:virtuallearningapp/view/screens/widgets/logo.dart';

class StudentLogin extends StatelessWidget {
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
                HeadLineText(
                  'Login as a Student',
                  alignment: Alignment.center,
                ),
                SizedBox(height: 10),
                StudentForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
