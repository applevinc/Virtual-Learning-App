import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:virtuallearningapp/auth/views.dart';
import 'package:virtuallearningapp/view/screens/widgets/logo.dart';

class StudentLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('Login as a Student'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 10.0.h),
              Hero(
                tag: "logo",
                child: const Logo(),
              ),
              SizedBox(height: 20),
              LoginForm(),
            ],
          ),
        ),
      ),
    );
  }
}
