import 'package:flutter/material.dart';
import 'package:virtuallearningapp/auth/forms.dart';
import 'package:virtuallearningapp/view/screens/widgets/logo.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('Sign Up'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Hero(
              tag: "logo",
              child: const Logo(),
            ),
            SizedBox(height: 20),
            RegisterForm(),
          ],
        ),
      ),
    );
  }
}
