import 'package:flutter/material.dart';
import 'package:virtuallearningapp/view/screens/lecturer/course_content/tabs/content/layouts/add_new_content.dart';
import 'package:virtuallearningapp/view/screens/student/course_content/tabs/content/layouts/course_content_card.dart';

class CourseContents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AddNewContent(),
        Expanded(
          child: ListView.builder(
            padding: EdgeInsets.all(10),
            itemCount: 5,
            itemBuilder: (context, index) => CourseContentCard(),
          ),
        ),
      ],
    );
  }
}
