import 'package:carplan/constants/material_color.dart';
import 'package:carplan/screens/intro/intro_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: black,
      ),
      home: IntroScreen(),
    );
  }
}
