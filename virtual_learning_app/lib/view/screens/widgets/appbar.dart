import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String username;
  final String departmentname;
  const CustomAppBar({
    Key key,
    this.username,
    this.departmentname,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              username,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Icon(
                  Icons.school,
                  size: 20,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  departmentname,
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
