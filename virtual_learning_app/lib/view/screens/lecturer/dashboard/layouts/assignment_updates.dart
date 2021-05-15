import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:virtuallearningapp/view/screens/widgets/headline_text.dart';
import 'package:virtuallearningapp/view/screens/widgets/pdf.dart';

class AssignmentUpdates extends StatelessWidget {
  const AssignmentUpdates({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: HeadLineText('assignments'),
        ),
        SizedBox(
          height: 18.0.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 10),
            itemCount: 4,
            itemBuilder: (context, index) {
              return _BuildItem();
            },
          ),
        )
      ],
    );
  }
}

class _BuildItem extends StatelessWidget {
  const _BuildItem({Key key}) : super(key: key);

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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PDF(),
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

class _StudentNameField extends StatelessWidget {
  const _StudentNameField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(5),
          topRight: Radius.circular(5),
        ),
      ),
      child: Row(
        children: [
          Text(
            'Student A',
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
