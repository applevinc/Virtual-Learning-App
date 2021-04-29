import 'package:flutter/material.dart';

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
        margin: EdgeInsets.all(10),
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "WEEK1",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text("Introduction to computing"),
              Container(
                color: Colors.grey,
                width: double.infinity,
                child: Text("PDF 1.pdf"),
              ),
              Container(
                color: Colors.grey,
                width: double.infinity,
                child: Text("PDF 2.pdf"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
