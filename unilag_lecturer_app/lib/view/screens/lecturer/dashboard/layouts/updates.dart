import 'package:flutter/material.dart';
import 'package:unilag_lecturer_app/view/screens/lecturer/dashboard/widgets/item.dart';
import 'package:unilag_lecturer_app/view/screens/widgets/headline_text.dart';


class Updates extends StatelessWidget {
  const Updates(
    this.title,
  );

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: HeadLineText(title),
        ),
        SizedBox(
          height: 130,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 10),
            itemCount: 4,
            itemBuilder: (context, index) {
              return BuildItem(title: title);
            },
          ),
        )
      ],
    );
  }
}
