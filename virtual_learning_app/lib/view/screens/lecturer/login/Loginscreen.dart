import 'package:flutter/material.dart';
import 'package:virtuallearningapp/view/screens/lecturer/login/form.dart';
import 'package:virtuallearningapp/view/screens/widgets/logo.dart';
import 'package:sizer/sizer.dart';

class LecturerLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('Login as a Lecturer'),
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
              LecturerForm(),
            ],
          ),
        ),
      ),
    );
  }
}
