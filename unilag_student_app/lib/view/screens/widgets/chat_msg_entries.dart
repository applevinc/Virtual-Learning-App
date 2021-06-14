import 'package:flutter/material.dart';
import 'package:unilag_student_app/view/theme/colors.dart';

class Conversationentrybox extends StatelessWidget {
  const Conversationentrybox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(5),
            topRight: Radius.circular(5),
          ),
        ),
        child: Row(
          children: <Widget>[
            _AddFile(),
            SizedBox(
              width: 15,
            ),
            _WriteMessage(),
            SizedBox(
              width: 15,
            ),
            _Send(),
          ],
        ),
      ),
    );
  }
}

class _Send extends StatelessWidget {
  const _Send({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      child: Icon(
        Icons.send,
        color: Colors.white,
        size: 18,
      ),
      backgroundColor: AppColor.red,
      elevation: 0,
    );
  }
}

class _WriteMessage extends StatelessWidget {
  const _WriteMessage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextField(
        decoration: InputDecoration(
          hintText: "Write message...",
          hintStyle: TextStyle(color: Colors.black54),
          border: InputBorder.none,
        ),
      ),
    );
  }
}

class _AddFile extends StatelessWidget {
  const _AddFile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 30,
        width: 30,
        decoration: BoxDecoration(
          color: AppColor.red,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 20,
        ),
      ),
    );
  }
}
