import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:unilag_student_app/view/screens/courses/layouts/course_card.dart';
import 'package:unilag_student_app/view/screens/widgets/appbar.dart';
import 'package:unilag_student_app/view/theme/colors.dart';

class Courses extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.grey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(15.0.h),
        child: CustomAppBar(
          username: "Appleyard Vincent",
          departmentname: "Department of Physics",
          visible: true,
          course: 'courses',
        ),
      ),
      body: _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CourseCard(),
                CourseCard(),
                CourseCard(),
                CourseCard(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
