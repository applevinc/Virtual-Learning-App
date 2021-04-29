import 'package:flutter/material.dart';
import 'package:virtuallearningapp/view/screens/student/course_content/course_content.dart';

class CourseCard extends StatelessWidget {
  const CourseCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => StudentCourseContent(),
          ),
        ),
        child: Card(
          color: Colors.grey.shade300,
          child: Column(
            children: [
              Icon(
                Icons.school,
                size: 150,
              ),
              Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "COM 215 VISUAL BASIC",
                        style: TextStyle(fontSize: 20),
                      ),
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