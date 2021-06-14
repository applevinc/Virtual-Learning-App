import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:unilag_student_app/services/auth_service.dart';
import 'package:unilag_student_app/view/screens/bottom_navigation_bar/bottom_nav_bar.dart';
import 'package:unilag_student_app/view/screens/courses/Coursesscreen.dart';
import 'package:unilag_student_app/view/screens/dashboard/dashboard.dart';
import 'package:unilag_student_app/view/screens/widgets/button.dart';
import 'package:unilag_student_app/view/screens/widgets/form_textfield.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final formKey = GlobalKey<FormState>(debugLabel: '_loginFormState');
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final auth = context.watch<AuthService>();

    return Form(
      key: formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            CustomFormField(
              hintText: 'Email',
              controller: _emailController,
            ),
            SizedBox(height: 10),
            CustomFormField(
              hintText: 'Password',
              controller: _passwordController,
              obsureText: true,
            ),
            SizedBox(height: 10),
            CustomButton(
              text: 'SUBMIT',
              onPressed: () async {
                if (formKey.currentState.validate()) {
                  await auth.signInWithEmailAndPassword(
                    email: _emailController.text,
                    password: _passwordController.text,
                  );

                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BottomNavBar(
                                pages: [
                                  Dashboard(),
                                  Courses(),
                                ],
                              )));
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
