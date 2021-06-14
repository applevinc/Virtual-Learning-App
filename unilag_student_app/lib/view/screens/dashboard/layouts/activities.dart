import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:unilag_student_app/view/screens/utils/icons.dart';
import 'package:unilag_student_app/view/theme/colors.dart';

class ActivityGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        height: 382,
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          physics: const NeverScrollableScrollPhysics(),
          itemCount: activities.length,
          itemBuilder: (BuildContext context, int index) {
            var activity = activities[index];

            return _ActivityItem(
              title: activity.title,
              color: activity.color,
              icon: activity.icon,
            );
          },
        ),
      ),
    );
  }
}

class _ActivityItem extends StatelessWidget {
  const _ActivityItem({
    Key key,
    this.title,
    this.icon,
    this.color,
  }) : super(key: key);

  final String title;
  final String icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: ShapeBorderClipper(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5)))),
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            bottom: BorderSide(
              color: color,
              width: 3,
            ),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ImageIcon(
              AssetImage(icon),
              color: color,
              size: 5.0.h,
            ),
            SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Activity {
  final String title;
  final String icon;
  final Color color;

  Activity({this.title, this.icon, this.color});
}

final activities = [
  Activity(
    title: 'Announcements',
    color: Colors.black,
    icon: IconImages.announcements,
  ),
  Activity(
    title: 'My Calendar',
    color: AppColor.red,
    icon: IconImages.calendar,
  ),
  Activity(
    title: 'Assignments',
    color: AppColor.purple,
    icon: IconImages.assignments,
  ),
  Activity(
    title: 'Exams',
    color: AppColor.blue,
    icon: IconImages.exam,
  ),
  Activity(
    title: 'Results',
    color: AppColor.brown,
    icon: IconImages.results,
  ),
  Activity(
    title: 'Biodata',
    color: AppColor.green,
    icon: IconImages.biodata,
  ),
];
