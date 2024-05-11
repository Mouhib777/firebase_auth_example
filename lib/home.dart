import 'package:firebase/service/auth.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  AuthService.SignIn(email: "email", password: "password")
                      .then((success) {
                    if (success) {
                      // en cas sign in s7i7 aaml logic te3 user c bon aml sign in
                    } else {
                      // logic en cas echec sign in
                    }
                  });
                },
                child: Text("Sign in")),
            ElevatedButton(
                onPressed: () {
                  AuthService.SignUp(email: "email", password: "password")
                      .then((success) {
                    if (success) {
                      // en cas sign up s7i7 aaml logic te3 user c bon aml sign up
                    } else {
                      // logic en cas echec sign up
                    }
                  });
                },
                child: Text("Sign up")),
          ],
        ),
      ),
    );
  }
}
