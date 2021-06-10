import 'package:flutter/material.dart';
import 'package:unilag_lecturer_app/view/screens/dashboard/layouts/updates.dart';
import 'package:unilag_lecturer_app/view/screens/widgets/appbar.dart';
import 'package:unilag_lecturer_app/view/screens/dashboard/layouts/lecture_timeline.dart';
import 'package:unilag_lecturer_app/view/theme/colors.dart';


class LecturerDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.grey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: CustomAppBar(
          username: "Professor Adeoye",
          departmentname: "Department Of Physics",
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
        TimeLine(),
        SizedBox(height: 20),
        Updates('Chats'),
        SizedBox(height: 20),
        Updates('Assignments'),
      ],
    );
  }
}
