import 'package:flutter/material.dart';
import 'package:virtuallearningapp/view/screens/lecturer/dashboard/layouts/assignment_updates.dart';
import 'package:virtuallearningapp/view/screens/lecturer/dashboard/layouts/chat_updates.dart';
import 'package:virtuallearningapp/view/screens/widgets/appbar.dart';
import 'package:virtuallearningapp/view/screens/widgets/news.dart';

class LecturerDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade400,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: CustomAppBar(
            username: "Mr Ogundele",
            departmentname: "Department Of Computer Science",
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
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            ChatUpdates(),
            SizedBox(height: 20),
            AssignmentUpdates(),
            SizedBox(height: 20),
            News(),
          ],
        ),
      ),
    );
  }
}
