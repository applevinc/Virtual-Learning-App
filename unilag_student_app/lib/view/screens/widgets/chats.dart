import 'package:bubble/bubble.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({
    Key key,
    @required this.styleSomebody,
    @required this.styleMe,
  }) : super(key: key);

  final BubbleStyle styleSomebody;
  final BubbleStyle styleMe;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Bubble(
          alignment: Alignment.center,
          color: const Color.fromARGB(255, 212, 234, 244),
          margin: const BubbleEdges.only(top: 8),
          child: const Text(
            'TODAY',
            style: TextStyle(fontSize: 10),
          ),
        ),
        Bubble(
          style: styleSomebody,
          elevation: 0.0,
          borderColor: Colors.transparent,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Lecturer:",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              const Text('Hi Johnson. Sorry to bother you. I have a queston for you.'),
            ],
          ),
        ),
        Bubble(
          style: styleMe,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Student:",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              const Text("Ok Sir?"),
            ],
          ),
        ),
        Bubble(
          style: styleSomebody,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Lecturer:",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              const Text("I've been having a problem with my computer."),
            ],
          ),
        ),
        Bubble(
          style: styleSomebody,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Lecturer:",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              const Text('Can you help me?'),
            ],
          ),
        ),
        Bubble(
          style: styleMe,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Student:",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              const Text('Sure'),
            ],
          ),
        ),
      ],
    );
  }
}
