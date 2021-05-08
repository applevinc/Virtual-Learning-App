import 'package:flutter/material.dart';
import 'package:virtuallearningapp/view/screens/student/dashboard/layouts/updates_horizontal_listview.dart';
import 'package:virtuallearningapp/view/screens/widgets/headline_text.dart';
import 'package:sizer/sizer.dart';

class News extends StatelessWidget {
  const News({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: HeadLineText('NEWS'),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              UpdateItem(width: 100.0.w),
              UpdateItem(width: 100.0.w),
              UpdateItem(width: 100.0.w),
              UpdateItem(width: 100.0.w),
              UpdateItem(width: 100.0.w),
              UpdateItem(width: 100.0.w),
            ],
          ),
        )
      ],
    );
  }
}
