import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:virtuallearningapp/view/screens/widgets/headline_text.dart';

class UpdatesHorizontalListView extends StatelessWidget {
  const UpdatesHorizontalListView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: HeadLineText('UPDATES'),
        ),
        SizedBox(
          height: 17.0.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(right: 15, left: 15),
            itemCount: 4,
            itemBuilder: (context, index) {
              return UpdateItem(width: 70.0.w);
            },
          ),
        ),
      ],
    );
  }
}

class UpdateItem extends StatelessWidget {
  const UpdateItem({
    Key key,
    this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _CourseTitle(),
          SizedBox(height: 5),
          _Message(),
          SizedBox(height: 5),
          SizedBox(
            width: width,
            child: Row(
              children: [
                _TimeUpdated(),
                Spacer(),
                Icon(
                  Icons.arrow_forward,
                  size: 12.0.sp,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _TimeUpdated extends StatelessWidget {
  const _TimeUpdated({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "2mins ago",
      style: TextStyle(
        fontSize: 12,
        color: Colors.black54,
      ),
    );
  }
}

class _Message extends StatelessWidget {
  const _Message({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "Adsfadfsdfvdfsgfdgsfgfssdfaf.\nsddafsdfdasfsdafaasdffasfdasfsda",
      style: TextStyle(
        fontSize: 10.0.sp,
      ),
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
      "COM 215 VISUAL BASIC",
      style: TextStyle(
        fontSize: 13.0.sp,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
