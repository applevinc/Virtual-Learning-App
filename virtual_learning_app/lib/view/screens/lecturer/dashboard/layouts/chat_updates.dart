import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:virtuallearningapp/view/screens/widgets/headline_text.dart';

class ChatUpdates extends StatelessWidget {
  const ChatUpdates({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: HeadLineText('chats'),
        ),
        SizedBox(
          height: 18.0.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(right: 10, left: 10),
            itemCount: 4,
            itemBuilder: (context, index) {
              return _BuildItem();
            },
          ),
        ),
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
              children: [
                _Message(),
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildText('Student A'),
          _buildText('PHS 327'),
        ],
      ),
    );
  }

  Text _buildText(String text) {
    return Text(
      text,
      style: TextStyle(color: Colors.white),
    );
  }
}
