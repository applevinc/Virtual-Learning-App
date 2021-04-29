import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:virtuallearningapp/view/Splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, screenType) {
        return MaterialApp(
          title: 'Virtual Learning App ',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(),
          home: Splashscreen(),
        );
      },
    );
  }
}
