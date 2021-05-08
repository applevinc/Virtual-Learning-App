import 'package:flutter/material.dart';
import 'package:virtuallearningapp/view/theme/colors.dart';
import 'package:sizer/sizer.dart';

class CustomAppBar extends StatelessWidget {
  CustomAppBar({
    this.username,
    this.departmentname,
    this.visible = false,
  });

  final String username;
  final String departmentname;
  final bool visible;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.red,
      height: 20.0.h,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              username,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: [
                Icon(
                  Icons.school,
                  size: 20,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  departmentname,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 10.0.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                _CurrentCourse(showWidget: visible),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _CurrentCourse extends StatelessWidget {
  const _CurrentCourse({
    Key key,
    this.showWidget,
  }) : super(key: key);

  final bool showWidget;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: showWidget,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        textBaseline: TextBaseline.ideographic,
        children: [
          SizedBox(width: 3),
          Container(
            padding: EdgeInsets.all(0.5.w),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: Text(
              '.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 0.0001.sp,
              ),
            ),
          ),
          SizedBox(width: 3),
          Text(
            'CSC312',
            style: TextStyle(
              color: Colors.white,
              fontSize: 10.0.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
