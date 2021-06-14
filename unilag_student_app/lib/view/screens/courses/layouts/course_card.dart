import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:unilag_student_app/view/screens/course_content/course_content.dart';
import 'package:unilag_student_app/view/screens/widgets/headline_text.dart';
import 'package:unilag_student_app/view/theme/colors.dart';

class CourseCard extends StatelessWidget {
  const CourseCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => StudentCourseContent(),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Card(
          color: AppColor.red,
          elevation: 0.0,
          child: Column(
            children: [
              Icon(
                Icons.school,
                size: 15.0.h,
                color: Colors.white,
              ),
              Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      HeadLineText('COM 215 VISUAL BASIC'),
                      Icon(Icons.arrow_forward)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
