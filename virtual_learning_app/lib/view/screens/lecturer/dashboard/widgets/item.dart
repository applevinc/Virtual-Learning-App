import 'package:flutter/material.dart';
import 'package:virtuallearningapp/view/screens/widgets/pdf.dart';
import 'package:virtuallearningapp/view/theme/colors.dart';
import 'package:sizer/sizer.dart';
import 'dart:math';

class BuildItem extends StatelessWidget {
  const BuildItem({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      width: 70.0.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _StudentNameField(),
          Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                (title == 'Chats') ? _Message() : PDF(),
                SizedBox(height: 5),
                _TimeReceived(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _TimeReceived extends StatelessWidget {
  const _TimeReceived({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        '10:32 am',
        style: TextStyle(
          fontSize: 12,
          color: Colors.black54,
        ),
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
      'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incidid',
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}

class _StudentNameField extends StatelessWidget {
  const _StudentNameField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List colors = [
      AppColor.green,
      AppColor.red,
      AppColor.black,
      AppColor.blue,
      AppColor.brown,
      AppColor.green,
      AppColor.purple,
    ];
    Random random = new Random();
    int index = random.nextInt(7);

    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: colors[index],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(5),
          topRight: Radius.circular(5),
        ),
      ),
      child: Text(
        'Student A',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
