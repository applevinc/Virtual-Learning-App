import 'package:flutter/material.dart';
import 'package:unilag_lecturer_app/view/app.dart';
import 'package:unilag_lecturer_app/view/screens/widgets/button.dart';
import 'package:unilag_lecturer_app/view/screens/widgets/form_textfield.dart';


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
