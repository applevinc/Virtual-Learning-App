import 'package:flutter/material.dart';
import 'package:virtuallearningapp/view/screens/student/course_content/tabs/classroom/classroom.dart';
import 'package:virtuallearningapp/view/screens/student/course_content/tabs/content/content.dart';
import 'package:virtuallearningapp/view/screens/widgets/appbar.dart';
import 'package:sizer/sizer.dart';

class StudentCourseContent extends StatefulWidget {
  @override
  _StudentCourseContentState createState() => _StudentCourseContentState();
}

class _StudentCourseContentState extends State<StudentCourseContent>
    with SingleTickerProviderStateMixin {
  TabController _controller;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 2, vsync: this);

    _controller.addListener(() {
      setState(() {
        _selectedIndex = _controller.index;
      });
      print("Selected Index: " + _controller.index.toString());
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(150),
        child: AppBar(
          leading: Container(),
          flexibleSpace: Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: CustomAppBar(
              username: "Appleyard Vincent",
              departmentname: "Department of Physics",
            ),
          ),
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
        StudentClassroom(),
      ],
    );
  }
}
