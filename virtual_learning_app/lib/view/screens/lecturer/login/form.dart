import 'package:flutter/material.dart';
import 'package:virtuallearningapp/view/screens/lecturer/course_content/course_content.dart';
import 'package:virtuallearningapp/view/screens/lecturer/dashboard/dashboard.dart';
import 'package:virtuallearningapp/view/screens/lecturer/profile/profile.dart';
import 'package:virtuallearningapp/view/screens/student/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:virtuallearningapp/view/screens/widgets/button.dart';
import 'package:virtuallearningapp/view/screens/widgets/form_textfield.dart';

class LecturerForm extends StatefulWidget {
  @override
  LecturerFormState createState() {
    return LecturerFormState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class LecturerFormState extends State<LecturerForm> {
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
            CustomFormField(hintText: 'Email', obsureText: false),
            SizedBox(height: 20),
            CustomFormField(hintText: 'Password', obsureText: true),
            SizedBox(height: 20),
            CustomButton(
              text: 'SUBMIT',
              onPressed: () {
                // Validate returns true if the form is valid, or false otherwise.
                if (formKey.currentState.validate()) {
                  // If the form is valid, display a snackbar. In the real world,
                  // you'd often call a server or save the information in a database.
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BottomNavBAr(
                        pages: [
                          LecturerDashboard(),
                          LecturerCourseContent(),
                          LecturerProfile(),
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
}
