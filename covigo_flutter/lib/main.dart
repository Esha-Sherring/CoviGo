
import 'package:covigo/ContactSection/ChatPage.dart';
import 'package:covigo/ContactSection/ContactDr.dart';
import 'package:covigo/Sanitization/SanitizationPage.dart';
import 'package:covigo/Sanitization/SanitizationRequest.dart';
import 'package:covigo/TrashSection/TrashPage.dart';
import 'package:covigo/TrashSection/TrashRequest.dart';
import 'SplashScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: SplashScreen(),
    );
  }
}

