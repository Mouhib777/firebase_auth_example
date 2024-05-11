import 'package:firebase/utils/snackbar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthService {
 static Future<bool> SignIn({
    required String email,
    required String password,
  }) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email.trim(), password: password.trim());
      return true;
    } on FirebaseAuthException catch (ex) {
      if (ex.code == 'invalid-credential') {
        showSnackBar(text: 'invalid-credential');
      } else if (ex.code == 'wrong-password') {
        showSnackBar(text: 'wrong-password');
      } else if (ex.code == 'invalid-email') {
        showSnackBar(text: 'invalid-email');
      } else {
        print(ex.code);
      }
      return false;
    }
  }

 static Future<bool> SignUp({
    required String email,
    required String password,
  }) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: email.trim(), password: password.trim());
      return true;
    } on FirebaseAuthException catch (ex) {
      if (ex.code == 'weak-password') {
        showSnackBar(text: "weak-password");
      } else if (ex.code == 'invalid-email') {
        showSnackBar(text: "invalid-email'");
      } else if (ex.code == 'email-already-in-use') {
        showSnackBar(text: "email-already-in-use");
      }
      return false;
    }
  }
}
