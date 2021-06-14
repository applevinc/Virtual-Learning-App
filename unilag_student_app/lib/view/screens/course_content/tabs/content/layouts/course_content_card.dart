import 'package:flutter/material.dart';
import 'package:unilag_student_app/view/screens/widgets/pdf.dart';

class CourseContentCard extends StatelessWidget {
  const CourseContentCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
      child: Card(
        //margin: EdgeInsets.all(10),
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "WEEK 1",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text("Introduction to computing"),
              PDF(),
              SizedBox(height: 5),
              PDF(),
            ],
          ),
        ),
      ),
    );
  }
}
