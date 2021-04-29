import 'package:flutter/material.dart';
import 'package:virtuallearningapp/view/screens/student/courses/layouts/course_card.dart';
import 'package:virtuallearningapp/view/screens/widgets/appbar.dart';

class CoursesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade400,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: CustomAppBar(),
        ),
        body: _Body(),
      ),
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
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "COURSES",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
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


