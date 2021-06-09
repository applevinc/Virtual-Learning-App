import 'package:flutter/material.dart';
import 'package:virtuallearningapp/view/screens/bottom_navigation_bar/bottom_nav_bar.dart';
import 'package:virtuallearningapp/view/screens/widgets/button.dart';
import 'package:virtuallearningapp/view/screens/widgets/form_textfield.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
    Key key,
    this.login,
    @required this.dashboard,
  }) : super(key: key);

  final void Function({String email, String password}) login;
  final BottomNavBar dashboard;

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
                  // widget.login(
                  //   email: _emailController.text,
                  //   password: _passwordController.text,
                  // );

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => widget.dashboard),
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
