import 'package:flutter/material.dart';
import 'package:virtuallearningapp/view/screens/lecturer/login/form.dart';
import 'package:virtuallearningapp/view/screens/widgets/logo.dart';
import 'package:sizer/sizer.dart';

class LecturerLogin extends StatelessWidget {
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
                Text('Login as a Lecturer'),
                SizedBox(height: 5.0.h),
                LecturerForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
