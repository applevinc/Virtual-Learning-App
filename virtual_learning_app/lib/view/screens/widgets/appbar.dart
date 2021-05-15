import 'package:flutter/material.dart';
import 'package:virtuallearningapp/view/theme/colors.dart';
import 'package:sizer/sizer.dart';

class CustomAppBar extends StatelessWidget {
  CustomAppBar({
    this.username,
    this.departmentname,
    this.visible = false,
    this.bottom,
  });

  final String username;
  final String departmentname;
  final bool visible;
  final PreferredSizeWidget bottom;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColor.red,
      elevation: 0.0,
      automaticallyImplyLeading: false,
      toolbarHeight: 100,
      title: _Title(
        username: username,
        departmentname: departmentname,
        visible: visible,
      ),
      bottom: bottom,
    );
  }
}

class _Title extends StatelessWidget {
  const _Title({
    Key key,
    @required this.username,
    @required this.departmentname,
    @required this.visible,
  }) : super(key: key);

  final String username;
  final String departmentname;
  final bool visible;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 5),
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
