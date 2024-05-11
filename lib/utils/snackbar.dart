import 'package:firebase/main.dart';
import 'package:flutter/material.dart';

void showSnackBar({required String text}) {
  final snackBar = SnackBar(
    content: Text(text),
    duration: Duration(seconds: 2),
  );
  ScaffoldMessenger.of(Get.context!).showSnackBar(snackBar);
}
