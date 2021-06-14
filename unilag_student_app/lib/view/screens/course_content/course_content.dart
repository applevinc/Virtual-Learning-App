import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:unilag_student_app/view/screens/course_content/tabs/classroom/classroom.dart';
import 'package:unilag_student_app/view/screens/course_content/tabs/content/content.dart';
import 'package:unilag_student_app/view/screens/widgets/appbar.dart';

class StudentCourseContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(20.0.h),
          child: CustomAppBar(
            username: "Appleyard Vincent",
            departmentname: "Department of Physics",
            automaticallyImplyLeading: true,
            bottom: TabBar(
              indicatorColor: Colors.white,
              labelStyle: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12.0.sp,
              ),
              tabs: [
                Tab(text: 'CONTENT'),
                Tab(text: 'CLASSROOM'),
              ],
            ),
          ),
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
    return TabBarView(
      children: [
        WeeklyCourseContents(),
        Classroom(),
      ],
    );
  }
}
