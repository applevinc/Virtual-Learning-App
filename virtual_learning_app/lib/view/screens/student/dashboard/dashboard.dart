import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:virtuallearningapp/view/screens/student/dashboard/layouts/updates_horizontal_listview.dart';
import 'package:virtuallearningapp/view/screens/widgets/appbar.dart';
import 'package:virtuallearningapp/view/screens/widgets/news.dart';
import 'package:sizer/sizer.dart';
import 'package:virtuallearningapp/view/theme/colors.dart';

class StudentDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.grey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(15.0.h),
        child: CustomAppBar(
          username: "Appleyard Vincent",
          departmentname: "Department of Physics",
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
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            UpdatesHorizontalListView(),
            SizedBox(height: 20),
            News(),
          ],
        ),
      ),
    );
  }
}
