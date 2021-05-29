import 'package:flutter/material.dart';
import 'package:virtuallearningapp/view/screens/lecturer/dashboard/layouts/updates.dart';
import 'package:virtuallearningapp/view/screens/student/dashboard/layouts/lecture_timeline.dart';
import 'package:virtuallearningapp/view/screens/widgets/appbar.dart';
import 'package:virtuallearningapp/view/theme/colors.dart';

class LecturerDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.grey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: CustomAppBar(
          username: "Mr Ogundele",
          departmentname: "Department Of Computer Science",
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
    return ListView(
      padding: const EdgeInsets.only(bottom: 20),
      children: [
        LectureTimeLine(user: 'Lecturer'),
        SizedBox(height: 20),
        Updates('Chats'),
        SizedBox(height: 20),
        Updates('Assignments'),
      ],
    );
  }
}
