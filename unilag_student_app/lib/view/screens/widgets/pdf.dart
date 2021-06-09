import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';
import 'package:virtuallearningapp/view/theme/colors.dart';

class PDF extends StatelessWidget {
  const PDF({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.grey,
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "PDF 1.pdf",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          LineIcon(Icons.upload_outlined),
        ],
      ),
    );
  }
}
