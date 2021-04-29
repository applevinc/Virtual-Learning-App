import 'package:flutter/material.dart';
import 'package:virtuallearningapp/view/screens/first_screen.dart';
import 'package:virtuallearningapp/view/screens/widgets/button.dart';
import 'package:virtuallearningapp/view/screens/widgets/form_textfield.dart';
import 'package:virtuallearningapp/view/screens/widgets/logo.dart';
import 'package:sizer/sizer.dart';

class Signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 10.0.h),
                Hero(
                  tag: "yct",
                  child: const Yctlogo(),
                ),
                SizedBox(height: 5.0.h),
                Text('Sign Up'),
                SizedBox(height: 5.0.h),
                SignupForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SignupForm extends StatefulWidget {
  @override
  SignupFormState createState() {
    return SignupFormState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class SignupFormState extends State<SignupForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            CustomFormField(hintText: 'Fullname', obsureText: false),
            SizedBox(height: 20),
            CustomFormField(
                hintText: 'Matric Number/Staff Number', obsureText: false),
            SizedBox(height: 20),
            CustomFormField(hintText: 'Email', obsureText: false),
            SizedBox(height: 20),
            CustomFormField(hintText: 'Password', obsureText: true),
            SizedBox(height: 20),
            CustomButton(
              text: 'SIGNUP',
              onPressed: () {
                // Validate returns true if the form is valid, or false otherwise.
                if (formKey.currentState.validate()) {
                  setState(() {
                    SnackBar(
                      content: Text("Signup Sucessful"),
                    );
                  });

                  // If the form is valid, display a snackbar. In the real world,
                  // you'd often call a server or save the information in a database.
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
}
