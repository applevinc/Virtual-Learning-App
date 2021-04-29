import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:virtuallearningapp/view/screens/student/login/form.dart';
import 'package:virtuallearningapp/view/screens/widgets/logo.dart';

class StudentLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 10.0.h),
                Hero(
                  tag: "yct",
                  child: const Yctlogo(),
                ),
                SizedBox(height: 5.0.h),
                Text('Login as a Student'),
                SizedBox(height: 5.0.h),
                StudentForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
