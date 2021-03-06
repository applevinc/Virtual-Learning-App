import 'package:flutter/material.dart';
import 'package:unilag_student_app/view/screens/course_content/tabs/content/layouts/course_content_card.dart';

class WeeklyCourseContents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      children: [
        CourseContentCard(),
        CourseContentCard(),
        CourseContentCard(),
        CourseContentCard(),
        CourseContentCard(),
      ],
    );
  }
}
