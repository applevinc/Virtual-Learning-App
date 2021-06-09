import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:unilag_lecturer_app/view/screens/bottom_navigation_bar/bottom_nav_bar_state.dart';
import 'package:unilag_lecturer_app/view/screens/lecturer/course_content/tabs/classroom/classroom.dart';
import 'package:unilag_lecturer_app/view/screens/lecturer/course_content/tabs/content/content.dart';
import 'package:unilag_lecturer_app/view/screens/widgets/appbar.dart';

class LecturerCourseContent extends StatefulWidget {
  @override
  _LecturerCourseContentState createState() => _LecturerCourseContentState();
}

class _LecturerCourseContentState extends State<LecturerCourseContent>
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

      // when on classroom tab, remove the bottomNavBar
      // when on content tab, show bottomNavBar
      var bottomNavBar = context.read<BottomNavBarState>();
      if (_selectedIndex == 1) {
        bottomNavBar.visible(false);
      } else {
        bottomNavBar.visible(true);
      }
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
        preferredSize: Size.fromHeight(20.0.h),
        child: CustomAppBar(
          username: "Professor Adeoye",
          departmentname: "Department of Physics",
          bottom: TabBar(
            controller: _controller,
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
      body: _Body(controller: _controller),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    Key key,
    this.controller,
  }) : super(key: key);

  final TabController controller;

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: controller,
      children: [
        CourseContents(),
        LecturerClassroom(),
      ],
    );
  }
}
