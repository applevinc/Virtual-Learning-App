import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';
import 'package:virtuallearningapp/view/screens/widgets/headline_text.dart';
import 'package:virtuallearningapp/view/theme/colors.dart';

class UpdatesHorizontalListView extends StatelessWidget {
  const UpdatesHorizontalListView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: 100.0.w,
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          _HeadLine(),
          SizedBox(height: 10),
          SizedBox(
            height: 110,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(right: 10, left: 10),
              itemCount: 4,
              itemBuilder: (context, index) {
                return UpdateItem(index: index);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _HeadLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var now = DateTime.now();

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Todays \'s Timeline',
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ),
        SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: HeadLineText('${DateFormat('EE, d MMM, yyyy').format(now)}'),
        ),
      ],
    );
  }
}

class UpdateItem extends StatelessWidget {
  const UpdateItem({
    Key key,
    this.index,
  }) : super(key: key);

  // To display ongoing lecture on first element
  // and show upcoming for other item from index 1
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        border: Border.all(
          color: AppColor.grey,
          width: 2,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _TimeAndRoom(),
          SizedBox(height: 5),
          _CourseTitle(),
          SizedBox(height: 5),

          // To display ongoing lecture on first element
          // and show upcoming for other item from index 1
          (index == 0)
              ? _LectureUpdate(
                  color: AppColor.green,
                  title: 'ONGOING CLASS',
                )
              : _LectureUpdate(
                  color: AppColor.grey,
                  title: 'UPCOMING CLASS',
                ),
        ],
      ),
    );
  }
}

class _LectureUpdate extends StatelessWidget {
  const _LectureUpdate({Key key, this.color, this.title}) : super(key: key);

  final Color color;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(3.0.sp),
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
          child: Text(''),
        ),
        SizedBox(width: 5),
        Text(
          title,
          style: TextStyle(
            fontSize: 12,
            color: Colors.black54,
          ),
        ),
      ],
    );
  }
}

class _TimeAndRoom extends StatelessWidget {
  const _TimeAndRoom({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _RowItem(
          icon: Icons.query_builder_rounded,
          title: '04 - 4:30 PM',
        ),
        SizedBox(width: 10),
        _RowItem(
          icon: Icons.directions,
          title: 'ROOM 501',
        ),
      ],
    );
  }
}

class _RowItem extends StatelessWidget {
  const _RowItem({
    Key key,
    this.icon,
    this.title,
  }) : super(key: key);

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 10.0.sp,
        ),
        SizedBox(width: 5),
        Text(
          title,
          style: TextStyle(
            fontSize: 12,
            color: Colors.black54,
          ),
        ),
      ],
    );
  }
}

class _CourseTitle extends StatelessWidget {
  const _CourseTitle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "COM 215 Visual Basic",
      style: TextStyle(
        fontSize: 10.0.sp,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
