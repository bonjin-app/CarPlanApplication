import 'package:carplan/screens/main/main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Car Plan',
      darkTheme: ThemeData.dark(),
      theme: ThemeData.dark().copyWith(
        accentColor: Colors.white,
      ),
      home: MainScreen(),
    );
  }
}
