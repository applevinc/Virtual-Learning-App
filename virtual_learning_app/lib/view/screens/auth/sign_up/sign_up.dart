import 'package:flutter/material.dart';
import 'package:virtuallearningapp/view/screens/auth/sign_up/layout/form.dart';
import 'package:virtuallearningapp/view/screens/widgets/headline_text.dart';
import 'package:virtuallearningapp/view/screens/widgets/logo.dart';
import 'package:sizer/sizer.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              HeadLineText('Sign Up'),
              SizedBox(height: 10),
              SignupForm(),
            ],
          ),
        ),
      ),
    );
  }
}
