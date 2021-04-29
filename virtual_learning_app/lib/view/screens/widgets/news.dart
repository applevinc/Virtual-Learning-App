import 'package:flutter/material.dart';
import 'package:virtuallearningapp/view/screens/student/dashboard/layouts/updates_horizontal_listview.dart';

class News extends StatelessWidget {
  const News({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "NEWS",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        Container(
          child: Column(
            children: [
              UpdateItem(),
              UpdateItem(),
              UpdateItem(),
              UpdateItem(),
            ],
          ),
        )
      ],
    );
  }
}