import 'package:flutter/material.dart';
import 'package:virtuallearningapp/view/screens/sign_up.dart';
import 'package:virtuallearningapp/view/screens/lecturer/login/Loginscreen.dart';
import 'package:virtuallearningapp/view/screens/student/login/Loginscreen.dart';
import 'package:virtuallearningapp/view/screens/widgets/button.dart';
import 'package:virtuallearningapp/view/screens/widgets/logo.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Hero(
                  tag: "yct",
                  child: const Yctlogo(),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      CustomButton(
                        text: "LOGIN AS STUDENT",
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => StudentLogin()),
                          );
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      CustomButton(
                        text: "LOGIN AS LECTURER",
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LecturerLogin()),
                          );
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: InkWell(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Signup(),
                              )),
                          child: Text(
                            "Signup",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
