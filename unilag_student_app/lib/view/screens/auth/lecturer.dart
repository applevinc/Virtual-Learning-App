import 'package:flutter/material.dart';
import 'package:virtuallearningapp/auth/views/login_form.dart';
import 'package:virtuallearningapp/view/screens/bottom_navigation_bar/bottom_nav_bar.dart';
import 'package:virtuallearningapp/view/screens/lecturer/course_content/course_content.dart';
import 'package:virtuallearningapp/view/screens/lecturer/dashboard/dashboard.dart';
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
              LoginForm(
                dashboard: BottomNavBar(
                  pages: [
                    LecturerDashboard(),
                    LecturerCourseContent(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
