import 'package:flutter/material.dart';
import 'package:virtuallearningapp/view/screens/student/course_content/tabs/content/layouts/course_content_card.dart';

class WeeklyCourseContents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(20),
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
