import 'package:flutter/material.dart';
import 'package:virtuallearningapp/view/screens/utils/chat_bubble_style.dart';
import 'package:virtuallearningapp/view/screens/widgets/chats.dart';
import 'package:virtuallearningapp/view/screens/widgets/chat_msg_entries.dart';

class StudentClassroom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade400,
      body: _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          child: InkWell(
            child: ChatScreen(
              styleSomebody: Bubblestyle.styleSomebody,
              styleMe: Bubblestyle.styleMe,
            ),
          ),
        ),
        Conversationentrybox(),
      ],
    );
  }
}
