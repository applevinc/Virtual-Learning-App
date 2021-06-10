import 'package:flutter/material.dart';
import 'package:unilag_lecturer_app/view/screens/utils/chat_bubble_style.dart';
import 'package:unilag_lecturer_app/view/screens/widgets/chat_msg_entries.dart';
import 'package:unilag_lecturer_app/view/screens/widgets/chats.dart';
import 'package:unilag_lecturer_app/view/theme/colors.dart';


class LecturerClassroom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.grey,
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
