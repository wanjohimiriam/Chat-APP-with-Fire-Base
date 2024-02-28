// ignore_for_file: unused_import, prefer_const_constructors

import 'package:chat_app_f/features/app/splashcreen/splashscreen.dart';
import 'package:chat_app_f/features/user_auth/presentation/pages/home.dart';
import 'package:chat_app_f/hommy.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// Future main() async {
//   WidgetsFlutterBinding.ensureInitialized();

//   if(kIsWeb){
//     await Firebase.initializeApp(
//       options: FirebaseOptions(apiKey: "AIzaSyDvG1DFBFyYIrDkQXtU4hkbzI0ux_ndGoI",
//       appId: "1:46523604116:web:24b4c0f1ad8fe78e562881", messagingSenderId: "46523604116", projectId: "chat-app-f-d9f17"));
//   }
//   await Firebase.initializeApp();

void main() {
  runApp(
    MaterialApp(
      home: SplashScreen(
        child: HomePage()),
      // title: 'Named Routes Demo',
      debugShowCheckedModeBanner: false,
      // initialRoute: '/',
      // routes: {
      //   '/': (context) =>  HomePage(),
      //   '/second': (context) => SafeHome(),
      // },
    ),
  );
}
