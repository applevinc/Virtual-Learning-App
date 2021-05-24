import 'package:flutter/material.dart';
import 'package:virtuallearningapp/view/screens/bottom_navigation_bar/bottom_nav_bar.dart';
import 'package:virtuallearningapp/view/screens/first_screen.dart';
import 'package:virtuallearningapp/view/screens/student/courses/Coursesscreen.dart';
import 'package:virtuallearningapp/view/screens/student/dashboard/dashboard.dart';
import 'package:virtuallearningapp/view/screens/widgets/button.dart';
import 'package:virtuallearningapp/view/screens/widgets/form_textfield.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key key, this.login}) : super(key: key);

  final void Function({String email, String password}) login;

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final formKey = GlobalKey<FormState>(debugLabel: '_loginFormState');
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
              onPressed: () {
                if (formKey.currentState.validate()) {
                  widget.login(
                    email: _emailController.text,
                    password: _passwordController.text,
                  );

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BottomNavBar(
                        pages: [
                          StudentDashboard(),
                          CoursesScreen(),
                        ],
                      ),
                    ),
                  );
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

class RegisterForm extends StatefulWidget {
  const RegisterForm({Key key, this.register}) : super(key: key);

  final void Function({String name, String email, String password}) register;

  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final formKey = GlobalKey<FormState>(debugLabel: '_registerFormState');
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            CustomFormField(
              hintText: 'Fullname',
              controller: _nameController,
            ),
            SizedBox(height: 10),
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
              text: 'SIGNUP',
              onPressed: () {
                if (formKey.currentState.validate()) {
                  widget.register(
                    name: _nameController.text,
                    email: _emailController.text,
                    password: _passwordController.text,
                  );

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FirstScreen(),
                    ),
                  );
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
    _nameController.dispose();
    super.dispose();
  }
}
