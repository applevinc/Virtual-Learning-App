import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:virtuallearningapp/view/screens/auth/sign_up.dart';
import 'package:virtuallearningapp/view/screens/auth/student.dart';
import 'package:virtuallearningapp/view/screens/bottom_navigation_bar/bottom_nav_bar_state.dart';
import 'package:virtuallearningapp/view/screens/widgets/button.dart';
import 'package:virtuallearningapp/view/screens/widgets/logo.dart';
import 'package:virtuallearningapp/view/theme/custom_theme.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, screenType) {
        return MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (_) => BottomNavBarState()),
          ],
          child: MaterialApp(
            title: 'Unilag Student Learning App',
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
    // return either dashboard or firstscreen
    return FirstScreen();
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
                        MaterialPageRoute(builder: (context) => StudentLogin()),
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
