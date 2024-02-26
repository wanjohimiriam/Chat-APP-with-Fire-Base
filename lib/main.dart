// ignore_for_file: unused_import, prefer_const_constructors

import 'package:chat_app_f/home.dart';
import 'package:chat_app_f/hommy.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Named Routes Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) =>  HomePage(),
        '/second': (context) => SafeHome(),
      },
    ),
  );
}