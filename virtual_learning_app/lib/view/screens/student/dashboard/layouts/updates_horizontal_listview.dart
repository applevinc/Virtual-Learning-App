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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20, right: 10, left: 10),
          child: HeadLineText('UPDATES'),
        ),
        Container(
          height: 17.0.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(right: 10, left: 10),
            itemCount: 4,
            itemBuilder: (context, index) {
              return UpdateItem();
            },
          ),
        )
      ],
    );
  }
}

class UpdateItem extends StatelessWidget {
  const UpdateItem({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _CourseTitle(),
            SizedBox(height: 5),
            _Message(),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _TimeUpdated(),
                Icon(
                  Icons.arrow_forward,
                  size: 12.0.sp,
                ),
              ],
            ),
          ],
        ),
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
        fontSize: 8.0.sp,
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
        fontSize: 11.0.sp,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
