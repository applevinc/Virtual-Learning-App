import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class AuthService extends ChangeNotifier {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  AuthService() {
    init();
  }

  Future<void> init() async {
    await Firebase.initializeApp();

    _auth.authStateChanges().listen((User user) {
      if (user == null) {
        // Navigate to login screen
        print('User is currently signed out!');
      } else {
        // Navigate to dashboard
        print('User is signed in!');
      }
    });
  }

  void signInWithEmailAndPassword(
    String email,
    String password,
    void Function(FirebaseAuthException e) errorCallback,
  ) async {
    try {
      await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      errorCallback(e);
    }
  }

  void registerAccount(String email, String displayName, String password,
      void Function(FirebaseAuthException e) errorCallback) async {
    try {
      var credential =
          await _auth.createUserWithEmailAndPassword(email: email, password: password);
      await credential.user.updateDisplayName(displayName);
    } on FirebaseAuthException catch (e) {
      errorCallback(e);
    }
  }
}
