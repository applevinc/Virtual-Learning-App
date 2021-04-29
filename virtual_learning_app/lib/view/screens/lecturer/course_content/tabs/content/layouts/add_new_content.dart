import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';

class AddNewContent extends StatelessWidget {
  const AddNewContent({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Card(
        margin: EdgeInsets.all(10),
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  LineIcon(Icons.upload_outlined),
                  SizedBox(
                    width: 20,
                  ),
                  Text("Add New Content")
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
