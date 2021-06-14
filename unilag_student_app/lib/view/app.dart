import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:unilag_student_app/services/auth_service.dart';
import 'package:unilag_student_app/view/screens/auth/login/login.dart';
import 'package:unilag_student_app/view/screens/auth/register/register.dart';
import 'package:unilag_student_app/view/screens/bottom_navigation_bar/bottom_nav_bar.dart';
import 'package:unilag_student_app/view/screens/bottom_navigation_bar/bottom_nav_bar_state.dart';
import 'package:unilag_student_app/view/screens/courses/Coursesscreen.dart';
import 'package:unilag_student_app/view/screens/dashboard/dashboard.dart';
import 'package:unilag_student_app/view/screens/widgets/button.dart';
import 'package:unilag_student_app/view/screens/widgets/logo.dart';
import 'package:unilag_student_app/view/theme/custom_theme.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, screenType) {
        return MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (context) => AuthService()),
            ChangeNotifierProvider(create: (_) => BottomNavBarState()),
          ],
          child: MaterialApp(
            title: 'Unilag Student App',
            debugShowCheckedModeBanner: false,
            theme: CustomTheme.defaultTheme(),
            home: Wrapper(),
          ),
        );
      },
    );
  }
}

class Wrapper extends StatelessWidget {
  const Wrapper({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = context.watch<AuthService>().loginState;

    if (user == ApplicationLoginState.loggedOut) {
      return FirstScreen();
    } else {
      return BottomNavBar(
        pages: [
          Dashboard(),
          Courses(),
        ],
      );
    }
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Hero(
              tag: "logo",
              child: const Logo(),
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
                        MaterialPageRoute(builder: (context) => Login()),
                      );
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomButton(
                    text: "SIGN UP",
                    color: Colors.black,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUp()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
