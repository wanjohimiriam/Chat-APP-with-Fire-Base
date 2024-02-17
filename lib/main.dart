// ignore_for_file: unused_import

import 'package:chat_app_f/SignUp.dart';
import 'package:chat_app_f/home.dart';
import 'package:chat_app_f/signin.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: SignIn(),
      // home: SignUp(),
      home:HomePage()
    );
  }
}
