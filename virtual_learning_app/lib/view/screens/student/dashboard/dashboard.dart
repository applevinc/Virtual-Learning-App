import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:virtuallearningapp/view/screens/student/dashboard/layouts/updates_horizontal_listview.dart';
import 'package:virtuallearningapp/view/screens/widgets/appbar.dart';
import 'package:virtuallearningapp/view/screens/widgets/news.dart';

class StudentDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade400,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: CustomAppBar(
            username: "Saliu Johnson",
            departmentname: "HND Computer Science",
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
          mainAxisSize: MainAxisSize.min,
          children: [
            UpdatesHorizontalListView(),
            SizedBox(
              height: 20,
            ),
            News(),
          ],
        ),
      ),
    );
  }
}
