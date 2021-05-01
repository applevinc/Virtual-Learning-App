import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:virtuallearningapp/view/screens/first_screen.dart';
import 'package:virtuallearningapp/view/screens/widgets/logo.dart';

class Splashscreen extends StatefulWidget {
  Splashscreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<Splashscreen> {
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 5),
      () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => FirstScreen(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Hero(
              tag: "yct",
              child: const Logo(),
            ),
          ),
          SizedBox(height: 20),
          SpinKitCircle(
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}
