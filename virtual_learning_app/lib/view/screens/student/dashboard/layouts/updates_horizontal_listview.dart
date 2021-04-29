import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class UpdatesHorizontalListView extends StatelessWidget {
  const UpdatesHorizontalListView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "UPDATES",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        Container(
          height: 20.0.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
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
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _CourseTitle(),
            SizedBox(height: 10),
            _Message(),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _TimeUpdated(),
                SizedBox(
                  width: 130,
                ),
                Icon(
                  Icons.arrow_forward,
                  size: 20,
                )
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
      style: TextStyle(fontSize: 12, color: Colors.black54),
    );
  }
}

class _Message extends StatelessWidget {
  const _Message({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text("Adsfadfsdfvdfsgfdgsfgfssdfaf.\nsddafsdfdasfsdafaasdffasfdasfsda");
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
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
    );
  }
}
