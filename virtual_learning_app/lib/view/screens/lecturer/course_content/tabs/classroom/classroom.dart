import 'package:flutter/material.dart';
import 'package:virtuallearningapp/view/screens/utils/chat_bubble_style.dart';
import 'package:virtuallearningapp/view/screens/widgets/chats.dart';
import 'package:virtuallearningapp/view/screens/widgets/chat_msg_entries.dart';

class LecturerClassroom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade400,
      body: Stack(
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
      ),
    );
  }
}
