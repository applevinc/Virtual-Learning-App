import 'package:flutter/material.dart';
import 'package:virtuallearningapp/view/screens/student/dashboard/layouts/updates_horizontal_listview.dart';
import 'package:sizer/sizer.dart';

class ChatUpdates extends StatelessWidget {
  const ChatUpdates({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "CHATS",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        Container(
          height: 20.0.h,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
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
